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
        public function  index()
        {
            $orderList = Db::name('order')
                ->where(['openid'=>$this->userInfo['openid']])
                ->select();
        }

        #订单确认页面
        public function affirmOrder()
        {
            $this->view->assign('titleName', "确认订单");
            if($this->request->isGet()){
                $storeData =  Session::get('storeData '.$this->userInfo['openid']);
                if(empty($storeData) ){
                    $this->error('什么也没有','index/index/index');
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
           //    dump($address);
               //dump($storeData);
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
                $price = $this->calculateOrderValue($data);
                if ($price == 0) {
                    $price = 0.01; #至少支付一分钱
                }
                $time = time();
                $orderId = \WxPayConfig::MCHID.date("YmdHis");
                $orderRow = array(
                    "order_id" => $orderId,
                    "openid" => $this->userInfo['openid'],
                    "customer_name" => $this->userInfo['nickname'],
                    "total_price" => $price * 100,
                    "goods_all" => $goodsall,
                    "create_time" => $time,
                    "pay_status" => 0,#支付状态;0未付款;1已付款
                    "order_status" => 0,
                );
                $tools = new \JsApiPay();
                //$openId = $tools->GetOpenid(); # 获取微信用户信息，因为不在安全域名内，所以获取不到，使用github的实现。
                //②、统一下单
                $input = new \WxPayUnifiedOrder();
                $input->SetBody("泛亚商城 的订单");
                $input->SetAttach("附加参数");
                $input->SetOut_trade_no($orderId);
                $input->SetTotal_fee($orderRow['total_price']);
                $input->SetTime_start(date("YmdHis"));
                $input->SetTime_expire(date("YmdHis", time() + 600));
                $input->SetGoods_tag("");
                $input->SetNotify_url("http://".$_SERVER['HTTP_HOST']."/index.php/WxPay/notify");
                $input->SetTrade_type("JSAPI");
                $input->SetOpenid($this->userInfo['openid']);
                $unifiedOrder = \WxPayApi::unifiedOrder($input);
                $jsApiParameters= $tools->GetJsApiParameters($unifiedOrder);
                $orderRow['prepay_id'] = $unifiedOrder['prepay_id'];
                $orderRow['js_api_parameters'] = $jsApiParameters;
                # 插入订单数据
                $addId =Db::name("order")->insert($orderRow);
                $arr =[];
                foreach ($data as $k=>$v){
                    $goodsData = Db::name('goods')->where(['id'=>$v['goodsId']])->find();
                    $arr[$k]['goods_id'] = $v['goodsId'];
                    $arr[$k]['sku_id'] = $v['skuId'];
                    $arr[$k]['order_id'] = $orderId;
                    $arr[$k]['user_id'] = $goodsData['user_id'];
                    $arr[$k]['goods_detail'] = json_encode($goodsData);
                    $arr[$k]['words'] = $v['words'];
                }

                if ($addId > 0) {
                    # 清空购物车
                    foreach ($data as $k =>$v){
                        if($v['carId']){
                            Db::name('car')->where(['id'=>$v['carId']])->update(['status'=>0]);
                        }
                    }

                    # 成功就跳转到支付。参数必须使用？拼接。否则调不起微信支付，因为商户平台的支付授权目录的配置导致。聚能坑....
                    $jsApiParameters = base64_encode($jsApiParameters);
                    $backData = array("msg" => "呼起支付", 'status' => 1, 'redirect' => url("WxPay/index")."?js_api_parameters={$jsApiParameters}&id={$addId}");
                    die(json_encode($backData));
                }
            }

        }


        # 计算订单总价值
        public function calculateOrderValue($data)
        {

            $pay = 0;
            foreach ($data  as $val) {
                $res = Db::name('goods_attribute')->field('price')->where(['id'=>$val['skuId']])->find();
                if (isset($val['num'])) {
                    $pay += $res['price'] * $val['num'];
                }
            }
//            dump($pay);die;
            return 0.01;
        }







    }