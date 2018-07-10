<?php
    namespace  app\index\controller;
    use think\Db;
    use think\Session;
    use think\View;
    use think\Request;
    Class Order extends Mustlogin
    {
        protected  $userInfo;
        public  function  __construct()
        {
            parent::__construct();
            $this->userInfo = Session::get('wx_user');
        }

        #订单列表页面
        public function  index($page=1,$size=10)
        {
            $this->view->assign('titleName', "订单主页");
            return $this->view->fetch('orderlist');
        }
        #获取订单商品接口
        public function  getOrderListApi()
        {
            if($this->request->isAjax()){
                $page = $this->request->param('page')?$this->request->param('page'):1;
                $size = $this->request->param('size')?$this->request->param('size'):4;
                $data = $this->request->post();
                if($data['status']=='all'){
                    $orderList = Db::name('order')
                        ->join('fy_order_goods','fy_order_goods.order_id=fy_order.order_id')
                        ->where(['openid'=>$this->userInfo['openid']])
                        ->order('fy_order.create_time desc')
                        ->page($page,$size)
                        ->select();
                }else{
                    $orderList = Db::name('order')
                        ->join('fy_order_goods','fy_order_goods.order_id=fy_order.order_id')
                        ->where(['openid'=>$this->userInfo['openid'],'fy_order.order_status'=>$data['status']])
                        ->order('fy_order.create_time desc')
                        ->page($page,$size)
                        ->select();
                }
//                dump();
                foreach ($orderList as $k=>$v ){
                    $orderList[$k]['goods_detail'] = json_decode($v['goods_detail'],true);
                }
                if(!empty($orderList) ){
                    return ajax_return($orderList,'ok','200');
                }else{
                    return ajax_return('','no','500');
                }

            }
        }

        #订单确认页面
        public function affirmOrder()
        {
            $this->view->assign('titleName', "确认订单");
            if($this->request->isGet()){
                $storeData =  Session::get('storeData '.$this->userInfo['openid']);
//                dump($storeData);die;
                if(empty($storeData) ){
                    $this->error('什么也没有','index/order/index');
                    exit;
                }
                foreach ($storeData as $k=>$v){
                    $storeData[$k] = array_merge($storeData[$k], Db::name('goods')->where(['id'=>$v['goodsId']])->find());
                }

                #如果有地址就取出地址
                $address = Db::name('customer_address')->alias('ca')
                    ->field('ca.*')
                    ->join('fy_customer','fy_customer.id=ca.uid')
                    ->where(['fy_customer.openid'=>$this->userInfo['openid'],'ca.status'=>1 ])
                    ->find();
//                dump($address);die;
                $this->view->assign('address',$address?$address:'');
                $this->view->assign('storeData',$storeData);
//               dump($address);
//               dump($storeData);
                return $this->view->fetch();
            }
        }

        #订单确认中间表
        public function  affirmOrderApi()
        {
            if($this->request->isAjax()){
                $storeData = json_decode(str_replace('&quot;','"', $this->request->post()['arr']),true);
                Session::set('storeData '.$this->userInfo['openid'],$storeData);
//                dump(  Session::get('storeData '.$this->userInfo['openid']));die;
//                $res = Db::name('order_confirm')->insert($data);
                if( !empty($storeData) ){
                    return ajax_return('','提交成功','200');
                }else{
                    return ajax_return('','提交失败','500');
                }
            }
        }


        #生成订单，订单支付处理
        public function pay()
        {
            if($this->request->isAjax()){
                $data = json_decode(str_replace('&quot;','"', $this->request->post()['arr']),true);
//                dump($data);
                if(!$data[0]['addressId']){
                    return ajax_return('','请选择收货地址');
                }
                foreach ($data as $k=>$v){
                    $res = Db::name('goods_attribute')->where(['id'=>$v['skuId'],'store'=>['<',$v['num'] ]])->find();
                    if($res){
                        $goods = Db::name('goods')->where(['id'=>$v['goodsId']]);
                        return ajax_return($goods['name'],'该商品库存不足，还剩'.$res['store'],'500');
                    }
                }
                $goodsall = join(array_column($data,'goodsId'),',');
                include_once "WxPaySDK/WxPay.Api.php";
                include_once "WxPaySDK/WxPay.JsApiPay.php";
                include_once 'WxPaySDK/log.php';
                #订单总价的计算
                $price = $this->calculateOrderValue($data);
                if ($price == 0) {
                    $price = 0.01; #至少支付一分钱
                }
                $orderId = \WxPayConfig::MCHID.date("YmdHis");
                $time = time();
                $orderAll = [
                    'order_id'=>$orderId,
                    'total_price'=>$price*100,
                    'create_time'=>time(),
                ];

                #计算几个商户进行分成多个订单
                foreach ($data as $k=>$v){
                    $uid = Db::name('goods')->field('user_id')->where(['id'=>$v['goodsId']])->find()['user_id'];
                    $data[$k]['user_id'] = $uid;
                }
                $dataUser = array_values( self::array_group_by($data,'user_id'));
//                dump($dataUser);die;
                foreach ( $dataUser as $k=>$v ){
                    $sonId[] = rand(10,99);
                    $orderRow[$k] = array(
                        "order_id" => $orderId.$sonId[$k],
                        "address_id" => $data[$k]['addressId'],
                        "openid" => $this->userInfo['openid'],
                        "customer_name" => $this->userInfo['nickname'],
                        "total_price" => $this->calculateOrderValue($v)*100,
                        "goods_all" => join(array_column($v,'goodsId'),','),
                        "create_time" => $time,
                        "pay_status" => 0,#支付状态;0未付款;1已付款
                        "order_status" => 0,
                    );
                }
                $orderAll['son_id']= join($sonId,',');
                $orderGoods=[];

                foreach ($data as $k=> $v){
                    $goodsData = Db::name('goods')->where(['id'=>$v['goodsId']])->find();
                    $orderGoods[$k]['goodsId'] = $v['goodsId'];
                    $orderGoods[$k]['goods_num'] = $v['num'];
                    $orderGoods[$k]['words'] = $v['words'];
                    $orderGoods[$k]['sku_val'] = $v['val'];
                    $orderGoods[$k]['sku_id'] = $v['skuId'];
                    $orderGoods[$k]['goods_detail'] = json_encode($goodsData);
                }
                #计算几个商户进行分成多个订单
                $tools = new \JsApiPay();
                //$openId = $tools->GetOpenid(); # 获取微信用户信息，因为不在安全域名内，所以获取不到，使用github的实现。
                //②、统一下单
                $input = new \WxPayUnifiedOrder();
                $input->SetBody("泛亚商城 的订单");
                $input->SetAttach("附加参数");
                $input->SetOut_trade_no($orderId);
                $input->SetTotal_fee($orderAll['total_price']);
                $input->SetTime_start(date("YmdHis"));
                $input->SetTime_expire(date("YmdHis", time() + 600));
                $input->SetGoods_tag("");
                $input->SetNotify_url("http://".$_SERVER['HTTP_HOST']."/index.php/index/wechatpay/notify");
                $input->SetTrade_type("JSAPI");
                $input->SetOpenid($this->userInfo['openid']);
                $unifiedOrder = \WxPayApi::unifiedOrder($input);
                $jsApiParameters= $tools->GetJsApiParameters($unifiedOrder);
                $orderRow['prepay_id'] = $unifiedOrder['prepay_id'];
                $orderRow['js_api_parameters'] = $jsApiParameters;
                # 插入订单数据
//                $addId1 =Db::name("order_all")->insert($orderAll);
//                $addId2 =Db::name("order")->insertAll($orderRow);
//                $addId3 =Db::name("order_goods")->insertAll($orderGoods);



//                if ($addId1 > 0 && $addId2 > 0 && $addId3 > 0 ) {
                    # 清空购物车
                    foreach ($data as $k =>$v){
                        if($v['carId']){
                            $res = Db::name('car')->where(['id'=>$v['carId']])->delete();
//                            dump($res);die;
                        }
                    }
                    # 成功就跳转到支付。参数必须使用？拼接。否则调不起微信支付，因为商户平台的支付授权目录的配置导致。聚能坑....
                    $jsApiParameters = base64_encode($jsApiParameters);
                    $backData = array("msg" => "呼起支付", 'code' => 200, 'redirect' => url("pay/index")."?js_api_parameters={$jsApiParameters}&id={$addId}");
                    die(json_encode($backData));
                }
//            }

        }
        public static function array_group_by($arr, $key)
        {
            $grouped = [];
            foreach ($arr as $value) {
                $grouped[$value[$key]][] = $value;
            }
            // Recursively build a nested grouping if more parameters are supplied
            // Each grouped array value is grouped according to the next sequential key
            if (func_num_args() > 2) {
                $args = func_get_args();
                foreach ($grouped as $key => $value) {
                    $parms = array_merge([$value], array_slice($args, 2, func_num_args()));
                    $grouped[$key] = call_user_func_array('array_group_by', $parms);
                }
            }
            return $grouped;
        }

        public function againPay()
        {
            if($this->request->isAjax()){
                $data= $this->request->post();
                if(!$data['id']){
                    return ajax_return_error('缺少订单id');
                }
                $orderData = Db::name('order')->where(['id'=>$data['id']])->find();
                return json($orderData);
            }
        }



        # 计算订单总价值
        public function calculateOrderValue($data)
        {
            $pay = 0;
            foreach ($data  as $val) {
                $res = Db::name('goods_attribute')->field('price')->where(['id'=>$val['skuId']])->find();
                $goods = Db::name('goods')->field('postage,free_type')->where(['id'=>$val['goodsId']])->find();
                if (isset($val['num'])) {
                    $pay += $res['price'] * $val['num'];
                }
                if($goods['free_type']==0){
                    $pay +=$goods['postage'];
                }
            }
//            dump($pay);
            return $pay;
        }

        #计算单商铺的价格
        public function  getGoodsPrice($data)
        {
            dump($data);die;
        }









    }
