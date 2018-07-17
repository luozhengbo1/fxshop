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
            $this->view->assign('param', $this->request->param('param'));
        }

        #订单列表页面
        public function  index()
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
                    $where = ['fy_order.openid'=>$this->userInfo['openid']]
                }else{
                    if($data['status']==1 ||  $data['status']==2 ){
                        $where = ['fy_order.openid'=>$this->userInfo['openid'],'fy_order.order_status'=>$data['status'],'fy_order_goods.is_return'=>0];
                    }else{
                        $where = ['fy_order.openid'=>$this->userInfo['openid'],'fy_order.order_status'=>$data['status'],'fy_order_goods.is_return'=>1];
                    }
                }
                $orderList = Db::name('order')
                    ->join('fy_order_goods','fy_order_goods.order_id=fy_order.order_id','left')
                    ->join('fy_goods_attribute','fy_goods_attribute.id=fy_order_goods.sku_id','left')
                    ->where($where)
                    ->order('fy_order.create_time desc')
                    ->page($page,$size)
                    ->select();
//                echo Db::name('order')->getLastSql();
//                dump($orderList);
                foreach ($orderList as $k=>$v ){
                    $orderList[$k]['goods_detail'] = json_decode($v['goods_detail'],true);
                }
                $orderList = array_values($this->array_group_by($orderList,'order_id'));
               // if(!empty($orderList) ){
                    return ajax_return($orderList,'ok','200');
                /*}else{
                    return ajax_return('','no','500');
                }*/

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
                    $this->redirect('index/order/index');
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
                return $this->view->fetch();
            }
        }

        #订单确认  判断商品库存是否够
        public function  affirmOrderApi()
        {
            if($this->request->isAjax()){
                $storeData = json_decode(str_replace('&quot;','"', $this->request->post()['arr']),true);
                $res = Db::name('goods_attribute')->where(['id'=>$storeData[0]['skuId'],'store'=>['<',$storeData[0]['num']]])->find();
//                dump($res);die;
                if($res){
                    return ajax_return_error('库存数量不足');
                }
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
                    'total_price'=>$price,
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
                    $sonId[] = rand(1000,9999);
                    $orderRow[$k] = array(
                        "order_id" => $orderId.$sonId[$k],
                        "address_id" => $data[$k]['addressId'],
                        "openid" => $this->userInfo['openid'],
                        "customer_name" => $this->userInfo['nickname'],
                        "total_price" => $this->calculateOrderValue($v),
                        "goods_all" => join(array_column($v,'goodsId'),','),
                        "create_time" => $time,
                        "pay_status" => 0,#支付状态;0未付款;1已付款
                        "order_status" => 0,
                    );
                    #添加上商户id
                    foreach ($v as $val){
                        $orderRow[$k]["user_id"] =Db::name('goods')->field('user_id')->where(['id'=> $val['goodsId']])->find()['user_id'];
                        #获取简单的商品明细
                        $getNameSkuNum[]=[
                            'goods_name'=>Db::name('goods')->field('name')->where(['id'=> $val['goodsId']])->find()['name'],
                            'sku_val'=>$val['val'],
                            'num'=>$val['num'],
                        ];
                    }
                    $orderRow[$k]["buy_list"] =json_encode($getNameSkuNum);
                }
                $orderAll['son_id']= join($sonId,',');
                $orderGoods=[];
                foreach ($data as $k=> $v){
                    $goodsData = Db::name('goods')->where(['id'=>$v['goodsId']])->find();
                    $orderGoods[$k]['goods_id'] = $v['goodsId'];
                    $orderGoods[$k]['goods_num'] = $v['num'];
                    $orderGoods[$k]['words'] = $v['words'];
                    $orderGoods[$k]['sku_val'] = $v['val'];
                    $orderGoods[$k]['sku_id'] = $v['skuId'];
                    $orderGoods[$k]['goods_detail'] = json_encode($goodsData);
                    $orderGoods[$k]['openid'] = $this->userInfo['openid'];
                    $orderGoods[$k]['address_id'] = $v['addressId'] ;
                    $orderGoods[$k]['user_id'] = $goodsData['user_id'] ;
                    foreach ($orderRow as $value ){
                        if($goodsData['user_id'] ==$value['user_id'] ){
                            $orderGoods[$k]['order_id'] =  $value['order_id'];
                        }
                    }
                }
                #计算几个商户进行分成多个订单
                $tools = new \JsApiPay();
                //$openId = $tools->GetOpenid(); # 获取微信用户信息，因为不在安全域名内，所以获取不到，使用github的实现。
                //②、统一下单
                $input = new \WxPayUnifiedOrder();
                $input->SetBody("泛亚商城 的订单");
                $input->SetAttach("附加参数");
                $input->SetOut_trade_no($orderId);
                $input->SetTotal_fee($orderAll['total_price']*100);
                $input->SetTime_start(date("YmdHis"));
                $input->SetTime_expire(date("YmdHis", time() + 1800));
                $input->SetGoods_tag("");
                $input->SetNotify_url("http://".$_SERVER['HTTP_HOST']."/index.php/index/wechatpay/notify");
                $input->SetTrade_type("JSAPI");
                $input->SetOpenid($this->userInfo['openid']);
                $unifiedOrder = \WxPayApi::unifiedOrder($input);
                $jsApiParameters= $tools->GetJsApiParameters($unifiedOrder);
//                $orderAll['prepay_id'] = $unifiedOrder['prepay_id'];
//                $orderAll['js_api_parameters'] = $jsApiParameters;
                # 插入订单数据

                $addId1 =Db::name("order_all")->insert($orderAll);
                $addId2 =Db::name("order")->insertAll($orderRow);
                $addId3 =Db::name("order_goods")->insertAll($orderGoods);
                #将库存减少，半小时后不付款恢复 或者支付成功减库存
                if ($addId1 > 0 && $addId2 > 0 && $addId3 > 0 ) {
                    # 清空购物车^M
                    foreach ($data as $k =>$v){
                        if($v['carId']){
                            $res = Db::name('car')->where(['id'=>$v['carId']])->delete();
//                            dump($res);die;^M
                        }
                    }
                    $jsApiParameters = base64_encode($jsApiParameters);
                    $backData = array("msg" => "呼起支付", 'code' => 200, 'redirect' => url("pay/index")."?js_api_parameters={$jsApiParameters}&id={$addId1}");
                    die(json_encode($backData));
                }
            }

        }
        #二维数组分组
        public static function array_group_by($arr, $key)
        {
            $grouped = [];
            foreach ($arr as $value) {
                $grouped[$value[$key]][] = $value;
            }
            if (func_num_args() > 2) {
                $args = func_get_args();
                foreach ($grouped as $key => $value) {
                    $parms = array_merge([$value], array_slice($args, 2, func_num_args()));
                    $grouped[$key] = call_user_func_array('array_group_by', $parms);
                }
            }
            return $grouped;
        }

        #再次发起支付
        public function againPay()
        {
            if($this->request->isAjax()){
                $data= $this->request->post();
//                dump($data);die;
                if(!$data['id']){
                    return ajax_return_error('缺少订单id');
                }
                $orderData = Db::name('order')->where(['order_id'=>$data['id']])->find();
                #超过半小时过期
                if($orderData['create_time'] + 1800 < time() ){
                    return ajax_return_error('该订单已经失效');
                }
                if($orderData['pay_status']==1 || $orderData['order_status']==1){
                    return ajax_return_error('该订单已经支付');
                }
                if($orderData['js_api_parameters'] && $orderData['prepay_id'] ){
                    $jsApiParameters = base64_encode($orderData['js_api_parameters']);
                    $backData = array(
                        "msg" => "呼起支付",
                        'code' => 200,
                        'redirect' => url("pay/index")."?js_api_parameters={$jsApiParameters}&id={$orderData['id']}");
                }else{
//                    dump($orderData['total_price']*100);die;
                    include_once "WxPaySDK/WxPay.Api.php";
                    include_once "WxPaySDK/WxPay.JsApiPay.php";
                    include_once 'WxPaySDK/log.php';
                    $tools = new \JsApiPay();
                    //$openId = $tools->GetOpenid(); # 获取微信用户信息，因为不在安全域名
                    //
                    //内，所以获取不到，使用github的实现。
                    //②、统一下单
                    $input = new \WxPayUnifiedOrder();
                    $input->SetBody("泛亚商城 的订单");
                    $input->SetAttach("附加参数");
                    $input->SetOut_trade_no($orderData['order_id']);
                    $input->SetTotal_fee($orderData['total_price']*100);
                    $input->SetTime_start(date("YmdHis"));
                    $input->SetTime_expire(date("YmdHis", time() + 1800));
                    $input->SetGoods_tag("");
                    $input->SetNotify_url("http://".$_SERVER['HTTP_HOST']."/index.php/index/wechatpay/notify1");
                    $input->SetTrade_type("JSAPI");
                    $input->SetOpenid($this->userInfo['openid']);
                    $unifiedOrder = \WxPayApi::unifiedOrder($input);
//                    dump($unifiedOrder);die;
                    $jsApiParameters= $tools->GetJsApiParameters($unifiedOrder);

                    Db::name('order')
                        ->where(['order_id'=>$data['id']])
                        ->update([
                            'js_api_parameters'=>$jsApiParameters,
                            'prepay_id' => $unifiedOrder['prepay_id']
                        ]);
                    $jsApiParameters = base64_encode($jsApiParameters);
                }
                $backData = array("msg" => "呼起支付", 'code' => 200, 'redirect' => url("pay/index")."?js_api_parameters={$jsApiParameters}&id={$orderData['id']}");
                return json($backData);
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
            return $pay;
//            return 0.01;
        }

        #确认收货状态
        public function sureDeliver()
        {
            if($this->request->isAjax()){
                $data = $this->request->post();
                if(!$data['order_id'] ){
                    return ajax_return_error('缺少参数id');
                }
                $res = Db::name('order_goods')
                    ->where([
                        'order_id'=>$data['order_id'],
                        'goods_id'=>$data['goods_id'],
                        'sku_id'=>$data['sku_id']
                    ])
                    ->update(['is_get_status'=>1]);

                if($res){
                    #将这个商品的积分返给用户。
                    $goods = Db::name('order_goods')
                        ->field('fy_goods.return_score,fy_goods.id')
                        ->join('fy_goods','fy_goods.id=fy_order_goods.id')
                        ->where([
                            'fy_order_goods.order_id'=>$data['order_id'],
                            'fy_order_goods.goods_id'=>$data['goods_id'],
                            'fy_order_goods.sku_id'=>$data['sku_id']
                        ])->find();
                    #加上同样多的价格和
                    Db::name('customer')->where(['openid'=>$this->userInfo['openid']])->setInc('experience',$goods['return_score']);
                    Db::name('customer')->where(['openid'=>$this->userInfo['openid']])->setInc('score',$goods['return_score']);
                    $insert =[];
                    $insert['openid']=$this->userInfo['openid'];
                    $insert['source_id']=$goods['id'];
                    $insert['source']=5;
                    $insert['score']=$goods['return_score'];
                    $insert['time']=time();
                    Db::name('score_log')->insert($insert);
                    return  ajax_return('','确认成功','200');
                }else{
                    return  ajax_return('','确认失败','500');
                }
            }
        }
        #退款接口
        public function refund()
        {
            if($this->request->isAjax()){
                $data = $this->request->post();
                if(!$data['order_id'] || !$data['goods_id'] || !$data['sku_id'] ){
                    return ajax_return_error('缺少参数id');
                }
                $orderGoods = Db::name('order_goods')->where([
                    'order_id'=>$data['order_id'],
                    'goods_id'=>$data['goods_id'],
                    'sku_id'=>$data['sku_id'],
                ])->find();
                $orderGoods['goods_detail'] = json_decode($orderGoods['goods_detail'],true);
                if($orderGoods['goods_detail']['is_return_goods']==0){
                    return ajax_return_error('该商品不支持退换货');
                }
                #查询是否使用优惠券
                $order =  Db::name('order')->where([
                    'order_id'=>$data['order_id'],'is_lottery'=>1])->find();
                #扣去奖券金额   #未使用优惠券直接退款商品价格 如果不包邮直接商品价格，
                $goodsAttribute = Db::name('goods_attribute')->field('price')->where(['id'=>$data['sku_id']])->find();
                $returnMoney = $goodsAttribute['price'];
//                if($order){
//                    if($order['pay_status']!=1){
//                        return ajax_return_error('未付款商品不能退款');
//                    }
//                    Db::name('lottery')->where(['id'=>$order['lottery_id'],''])->
//                }
//                dump($goodsAttribute['price']);die;
                $res1 = Db::name('order_goods')->where([
                    'order_id'=>$data['order_id'],
                    'goods_id'=>$data['goods_id'],
                    'sku_id'=>$data['sku_id'],
                ])->update(['is_return'=>1,'return_price'=>$goodsAttribute['price']]); # 待退款
                $ordertmp = Db::name('order')->field('return_price_all')->where([
                    'order_id'=>$data['order_id']])->find();

                Db::name('order')->where('order_id',$data['order_id'])->update(['return_price_all'=>$goodsAttribute['price']+$ordertmp['return_price_all']]);#总退款加上
                $res = Db::name('order')->where(['order_id'=>$data['order_id']])->update(['order_status'=>3]);

                if($res){
                    return  ajax_return($returnMoney,'ok','200');
                }else{
                    return  ajax_return('','no','500');
                }
            }
        }

        #订单详情页面
        public function  orderDetail()
        {
            $this->assign('titleName', "订单详情");
            $id = $this->request->param('id');
            if(!$id){
                return $this->error('缺少参数订单id');
            }
            $orderDetail = Db::name('order')
//                ->join('fy_customer_address','fy_customer_address.id=fy_order.address_id','left')
                ->join('fy_order_goods','fy_order_goods.order_id=fy_order.order_id','left')
                ->join('fy_goods_attribute','fy_order_goods.sku_id=fy_goods_attribute.id','left')
                ->where(['fy_order.order_id'=>$id])
                ->select();
            $address = Db::name('customer_address')
                ->where(['id'=>$orderDetail[0]['address_id']])
                ->find();
            foreach (  $orderDetail as$k=> $v){
                $orderDetail[$k]['goods_detail'] = json_decode($orderDetail[$k]['goods_detail'],true);
            }
            $this->view->assign('address',$address);
            $this->view->assign('orderDetail',$orderDetail);
            return $this->view->fetch('orderDetail');
        }

        #商品售后
        public function  orderService()
        {
            $this->assign('titleName', "商品售后");
            $order_id = $this->request->param('order_id');
            $goods_id = $this->request->param('goods_id');
            if(!$goods_id || !$order_id ){
                return $this->error('缺少参数id');
            }
            $orderDetail = Db::name('order')
                ->join('fy_order_goods','fy_order_goods.order_id=fy_order.order_id','left')
                ->join('fy_goods_attribute','fy_order_goods.sku_id=fy_goods_attribute.id','left')
                ->where(['fy_order.order_id'=>$order_id,'fy_order_goods.goods_id'=>$goods_id])
                ->find();
            $orderDetail['goods_detail'] = json_decode($orderDetail['goods_detail'],true);
//            echo Db::name('order')->getLastSql();
//            dump($orderDetail);die;
            $this->view->assign('orderDetail',$orderDetail);
            return $this->view->fetch('orderService');
        }
        #商品售后
        public function  logistics()
        {
            $this->assign('titleName', "物流信息");
            $order_id = $this->request->param('order_id');
            $goods_id = $this->request->param('goods_id');
            if(!$goods_id || !$order_id ){
                return $this->error('缺少参数id');
            }
            $orderDetail = Db::name('order')
                ->join('fy_order_goods','fy_order_goods.order_id=fy_order.order_id','left')
                ->join('fy_goods_attribute','fy_order_goods.sku_id=fy_goods_attribute.id','left')
                ->where(['fy_order.order_id'=>$order_id,'fy_order_goods.goods_id'=>$goods_id])
                ->find();
            $orderDetail['goods_detail'] = json_decode($orderDetail['goods_detail'],true);
//            echo Db::name('order')->getLastSql();
//            dump($orderDetail);die;
            $this->view->assign('orderDetail',$orderDetail);
            return $this->view->fetch('logistics');
        }

        #订单评论
        public function  orderComment()
        {
            if($this->request->isAjax()){
                $data = $this->request->post();
                if(!$data['order_id'] ){
                    return ajax_return_error('缺少参数id');
                }
                $orderGoods = Db::name('order_goods')
                    ->where([
                        'order_id'=>$data['order_id'],
                        'goods_id'=>$data['goods_id'],
                        'sku_id'=>$data['sku_id']
                    ])->find();
                $goods = Db::name('goods')
                    ->field('is_comment')
                    ->where([
                        'id'=>$data['goods_id'],
                    ])->find();
                if($goods['is_comment']==0){
                    return ajax_return_error('该商品不可已评论');
                }
                if($orderGoods['comment']==1){
                    return ajax_return_error('该商品已经评论');
                }
                $res = Db::name('order_goods')
                    ->where([
                        'order_id'=>$data['order_id'],
                        'goods_id'=>$data['goods_id'],
                        'sku_id'=>$data['sku_id']
                    ])
                    ->update(['comment'=>1]);
                #记录评价内容
                $orderGoods['goods_detail'] = json_decode($orderGoods['goods_detail'],true);
                $insert=[];
                $insert['pic']=$data['pic'];
                $insert['openid']=$this->userInfo['openid'];
                $insert['username']=$this->userInfo['nickname'];
                $insert['goods_id']= $data['goods_id'] ;
                $insert['goods_name']=$orderGoods['goods_detail']['name'];
                $insert['content']=$data['desc'];
                $insert['create_time']=time();
                $insert['similarity_score']=$data['similarity_score'];
                $insert['logistics_score']=$data['logistics_score'];
                $insert['service_score']=$data['service_score'];
                $insert['avg_score']= number_format(($data['service_score'] + $data['similarity_score']+$data['logistics_score'])/3 ,2);
                $res1 = Db::name('goods_comment')->insert($insert);

                #将这个订单修改为已评价
                Db::name('order')->where(['order_id'=>$data['order_id']])->update(['order_status'=>5]);
                //echo Db::name('order_goods')->getLastSql();
                // dump($res);
                if($res && $res1){
                    return  ajax_return('','确认成功','200');
                }else{
                    return  ajax_return('','确认失败','500');
                }
            }else{

                $this->assign('titleName', "商品评价");
                $this->assign('sku_id', $this->request->param('sku_id'));
                $this->assign('goods_id', $this->request->param('goods_id'));
                $this->assign('order_id',   $this->request->param('order_id'));
                return $this->view->fetch('orderComment');
            }
        }

    }

