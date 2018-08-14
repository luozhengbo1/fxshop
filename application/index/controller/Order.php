<?php
    namespace  app\index\controller;
    use app\common\behavior\OrderMessage;
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
            return $this->view->fetch('orderList');
        }
        #获取订单商品接口
        public function  getOrderListApi()
        {

            if($this->request->isAjax()){
                $page = $this->request->param('page')?$this->request->param('page'):1;
                $size = $this->request->param('size')?$this->request->param('size'):4;
                $data = $this->request->post();

                if($data['status']=='all'){
                    $where = ['fy_order.openid'=>$this->userInfo['openid']];
                }else{
//                    $this->userInfo['openid']="omQYXwM8TEkiBZR7Ldm891OOWbNQ";
                    #待付款
                    if($data['status']==0){
                        $where = ['fy_order.openid'=>$this->userInfo['openid'],'fy_order.pay_status'=>0,'fy_order.order_status'=>0];
                    }
                    #待發貨
                    if($data['status']==1 ){
                        $where = ['fy_order.openid'=>$this->userInfo['openid'],'fy_order.pay_status'=>1,'fy_order_goods.is_send'=>0];
//                        $where = ['fy_order.openid'=>'omQYXwM8TEkiBZR7Ldm891OOWbNQ','fy_order.pay_status'=>1,'fy_order_goods.is_send'=>0];
                    }
                    #待收货
                    if($data['status']==2){
                        $where = ['fy_order.openid'=>$this->userInfo['openid'],'fy_order.pay_status'=>1,'fy_order_goods.is_send'=>1];
                    }
                    #待退款
                    if($data['status']==3){
                        $where = ['fy_order.openid'=>$this->userInfo['openid'],'fy_order.pay_status'=>1,'fy_order_goods.is_return'=>1];
//                        $where = ['fy_order.openid'=>'omQYXwM8TEkiBZR7Ldm891OOWbNQ','fy_order.order_status'=>4,'fy_order.pay_status'=>1,'fy_order_goods.is_return'=>1];
                    }
                    #待评价
                    if($data['status']==4){
                        $where = ['fy_order.openid'=>$this->userInfo['openid'],'fy_order.pay_status'=>1,'fy_order_goods.is_send'=>2];
                    }
                }
//                dump($where);
                $orderList = Db::name('order')
                    ->join('fy_order_goods','fy_order_goods.order_id=fy_order.order_id')
                    ->join('fy_goods_attribute','fy_goods_attribute.id=fy_order_goods.sku_id')
                    ->where($where)
                    ->order('fy_order.create_time desc')
                    ->page($page,$size)
                    ->select();
//                echo Db::name('order')->getLastSql();
                foreach ($orderList as $k=>$v ){

                    $orderList[$k]['goods_detail'] = json_decode($v['goods_detail'],true);
                }
                $orderList = array_values($this->array_group_by($orderList,'order_id'));
                return ajax_return($orderList,'ok','200');
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
                $time = time();
                foreach ($storeData as $k=>$v){
                    $tempGoods = Db::name('goods')
                        ->field('fy_goods.*,fy_goods_attribute.point_score,fy_goods_attribute.price as price1')
                        ->join('fy_goods_attribute','fy_goods_attribute.goods_id=fy_goods.id','left')
                        ->where([
                            'fy_goods.id'=>$v['goodsId'],
                            'fy_goods_attribute.id'=>$v['skuId'],
                        ])->find();
                    #服务信息
                    if( !empty($tempGoods['service']) ){
                        $tempGoods['service'] = json_decode($tempGoods['service'],true);
                    }
                    //查询用户有效的券
                    $arrGoodsId =[$v['goodsId'],'all'];
                    $lottery = Db::name('lottery')
                        ->alias('lottery')
                        ->field('lottery.*,fy_lottery_log.id as lottery_log_id')
                        ->join('fy_lottery_log','fy_lottery_log.lottery_id=lottery.id')
                        ->where([
                            "fy_lottery.goods_id"=>['in',$arrGoodsId],
                            'fy_lottery.status'=>1,
                            'fy_lottery.isdelete'=>0,
                            'fy_lottery.expire_start_date' =>['<', $time],
                            'fy_lottery.expire_end_date' =>['>', $time],
                            'fy_lottery_log.openid'=>$this->userInfo['openid'],
                        ])
                        ->select();
                    $storeData[$k] = array_merge($storeData[$k], $tempGoods);
                    $dikou = [];
                    $youhui= [];
                    $daijin=[];
                    $mianyou= [];
                    foreach ($lottery as $key=>$lot){
                        $coupon_type=$lot['type'];
                        switch($coupon_type){
                            /*  case 1://抵扣券
                                  array_push($dikou,$lot);
                                  break;*/
                            case  2://优惠券
                                $totalPrice = ($storeData[$k]['num']*$storeData[$k]['price1']);
                                if($totalPrice>$lot['coupon_real_money']){
                                    array_push($youhui,$lot);
                                }
                                break;
                           /* case  3://代金券
                                array_push($daijin,$lot);
                                break;
                            case 4://免邮
                                //不包邮的时候
                                if($storeData[$k]['free_type']==0){
                                    array_push($mianyou,$lot);
                                }*/
                                break;
                        }
                    }
                    $storeData[$k]['dikou']=$dikou;
                    $storeData[$k]['youhui']=$youhui;
                    $storeData[$k]['daijin']=$daijin;
                    $storeData[$k]['mianyou']=$mianyou;
                   // $storeData[$k] = array_merge($storeData[$k], Db::name('goods')->where(['id'=>$v['goodsId']])->find());
                }
//                dump($storeData);

                #如果有地址就取出地址
                $address = Db::name('customer_address')->alias('ca')
                    ->field('ca.*')
                    ->join('fy_customer','fy_customer.id=ca.uid')
                    ->where(['fy_customer.openid'=>$this->userInfo['openid'],'ca.status'=>1 ])
                    ->find();
                //dump($storeData);die;
                $this->view->assign('address',$address?$address:'');
                $this->view->assign('storeData',$storeData);
                return $this->view->fetch();
            }
        }
        #查询用户有效的券
        public function getUserLottery($ids){
            $idArr = explode(",", $ids);
            $time = time();
            $lottery = Db::name('lottery')
                ->alias('lottery')
                ->field('lottery.*')
                ->join('fy_lottery_log','fy_lottery_log.lottery_id=lottery.id')
                ->where([
                    "fy_lottery.goods_id"=>['in',$idArr],
                    'fy_lottery.status'=>1,
                    'fy_lottery.isdelete'=>'0',
                    'fy_lottery.expire_start_date' =>['<', $time],
                    'fy_lottery.expire_end_date' =>['>', $time],
                    'fy_lottery_log.openid'=>$this->userInfo['openid'],
                ])
                ->select();
            return ajax_return($lottery,'','200');

        }


        #订单确认  判断商品库存是否够  #庞端用户积分是否
        public function  affirmOrderApi()
        {
            if($this->request->isAjax()){
                $storeData = json_decode(str_replace('&quot;','"', $this->request->post()['arr']),true);
                #判断库存是否足够
                $user = Db::name('customer')->where(['openid'=>$this->userInfo['openid']])->find();
                $score = 0;
                foreach ($storeData as $v) {
                    #积分判断
                    $goodsData = Db::name('goods')->where(['id'=>$v['goodsId']])->find();
                    if($goodsData['settlement_type']==2 || $goodsData['settlement_type']==3){
                        $score+=$goodsData['score'];
                    }
                    #限时商品判断
                    if($goodsData['show_area']==1){#限时抢购，查看是否在抢购时间
                          if($goodsData['start_date'] > time() ||  time() >$goodsData['end_date'] ){
                              return ajax_return('','你来晚了,抢购已经结束');
                          }
                    }
                    #库存判断
                    $goods_attribute = Db::name('goods_attribute')->where(['id'=>$v['skuId']])->find();
                    if($goods_attribute['store']<$v['num']){
                        $goods = Db::name('goods')->field('name')->where(['id'=>$v['goodsId']])->find();
                        return ajax_return('','库存不足','500');
                    }
                }
                $totalScore = $this->totalScore($storeData);
                $user = Db::name('customer')->where(['openid'=>$this->userInfo['openid']])->find();
//                dump($totalScore);
                if($totalScore>$user['score']){
                    return ajax_return('','你的积分不足','500');
                }
//                dump($res);die;
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
                if(!$data[0]['addressId']){
                    return ajax_return('','请选择收货地址');
                }
                $totalType = 0;
                foreach ($data as $k=>$v) {
                    $goodsAttribute = Db::name('goods_attribute')->where(['id' => $v['skuId']])->find();
                    $goods = Db::name('goods')->where(['id' => $v['goodsId']])->find();
                    if ($goodsAttribute['store'] < $v['num']) {
                        return ajax_return($goods['name'], '该商品库存不足，还剩' . $goodsAttribute['store'], '500');
                    }
                    if($goods['settlement_type']==2  ){#积分结算
                        $totalType +=1;
                    }
                }
                if(count($data)==$totalType){#积分
                    $type = 1;
                }elseif($totalType==0){#钱
                    $type = 0;
                }else{
                    $type = 2;
                }
                $totalScore = $this->totalScore($data);
                $user = getUserInfo($this->userInfo['openid']);
                if($user['score']<$totalScore){
                    return ajax_return_error('用户积分不足');
                }
                $goodsall = join(array_column($data,'goodsId'),',');
                include_once "WxPaySDK/WxPay.Api.php";
                include_once "WxPaySDK/WxPay.JsApiPay.php";
                include_once 'WxPaySDK/log.php';
                include_once 'WxPaySDK/WxPay.Config.php';
                #订单总价的计算
                $price = $this->calculateOrderValue($data);
//                dump($price);die;
                if ($price == 0) {
                    $price = 0.01; #至少支付一分钱
                }
//                $orderId = \WxPayConfig::MCHID.date("YmdHis");
                $wxConfig = new \WxPayConfig();
                $orderId =$wxConfig->GetMerchantId().date("YmdHis");
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
                foreach ( $dataUser as $k=>$v ){
                    $sonId[] = rand(1000,9999);

                    $userPrice[] = $this->calculateOrderValue($v);
                    $userPoint[] = $this->totalScore($v);
                    $orderRow[$k] = array(
                        "order_id" => $orderId.$sonId[$k],
                        "address_id" => $data[$k]['addressId'],
                        "address_detail" => json_encode(Db::name('customer_address')->where(['id'=>$data[$k]['addressId']])->find()),
                        "openid" => $this->userInfo['openid'],
                        "customer_name" => $this->userInfo['nickname'],
                        "total_price" => $userPrice[$k],
                        "goods_all" => join(array_column($v,'goodsId'),','),
                        "create_time" => $time,
                        "pay_status" => 0,#支付状态;0未付款;1已付款
                        "order_status" => 0,
                        "type"=>$type,
                        "total_point"=>$userPoint[$k],
                    );

                    #添加上商户id
                    foreach ($v as $val){
                        $orderRow[$k]["user_id"] =Db::name('goods')->field('user_id')->where(['id'=> $val['goodsId']])->find()['user_id'];
                        #获取简单的商品明细
                        $getNameSkuNum[]=[
                            'goods_name'=>Db::name('goods')->field('name')->where(['id'=> $val['goodsId'],'user_id'=> $orderRow[$k]["user_id"]])->find()['name'],
                            'sku_val'=>$val['val'],
                            'num'=>$val['num'],
                            'goods_id'=>$val['goodsId'],
                            'user_id'=>$orderRow[$k]["user_id"],
                        ];
                    }
                    #商品详情根据用户分组之后更新
                    $buyListAll = $this->array_group_by($getNameSkuNum,'user_id');
                    $orderRow[$k]["buy_list"] =  json_encode($buyListAll[$orderRow[$k]["user_id"]]);
                }
                $orderAll['son_id']= join($sonId,',');
                $orderGoods=[];
//                dump($data);die;
                foreach ($data as $k=> $v){
                    $goodsData = Db::name('goods')->where(['id'=>$v['goodsId']])->find();
                    $orderGoods[$k]['goods_id'] = $v['goodsId'];
                    $orderGoods[$k]['goods_num'] = $v['num'];
                    #该商品实际支付价格
                    $skuVal = Db::name('goods_attribute')->where(['id'=>$v['skuId']])->find();
                    $orderGoods[$k]['real_pay_price'] = $v['num']*($skuVal['price']+$goodsData['postage']);
                    $orderGoods[$k]['words'] = $v['words'];
                    $orderGoods[$k]['sku_val'] = $v['val'];
                    $orderGoods[$k]['sku_id'] = $v['skuId'];
                    $orderGoods[$k]['goods_detail'] = json_encode($goodsData);
                    $orderGoods[$k]['openid'] = $this->userInfo['openid'];
                    $orderGoods[$k]['address_id'] = $v['addressId'] ;
                    $orderGoods[$k]['address_detail']= json_encode(Db::name('customer_address')->where(['id'=> $v['addressId'] ])->find());
                    $orderGoods[$k]['user_id'] = $goodsData['user_id'] ;
                    foreach ($orderRow as $value ){
                        #加上对应的order_id
                        if($goodsData['user_id'] ==$value['user_id'] ){
                            $orderGoods[$k]['order_id'] =  $value['order_id'];
                        }
                    }
                    #添加优惠券id如果存在
                    if(isset($v['youhuiId']) && isset($v['youhui_lottery_log_id']) ){
                        $lotteryLog = Db::name('lottery_log')->where(['id'=>$v['youhui_lottery_log_id']])->find();
                        if($lotteryLog['lottery_num']<0){#表示该券已经使用
                            return ajax_return('',$lotteryLog['lottery_name']."该券已经使用");
                        }
                        $orderGoods[$k]['lottery_id'] = $v['youhuiId'] ;
                        $orderGoods[$k]['lottery_log_id'] = $v['youhui_lottery_log_id'] ;
                        $orderGoods[$k]['is_lottery'] = 1 ;
                        $lottery[$k] = Db::name('lottery')->where(['id'=>$v['youhuiId']])->find();
                        $orderGoods[$k]['lottery_detail'] = json_encode($lottery[$k]) ;
                        #将去订单的价格
                    }else{
                        $orderGoods[$k]['is_lottery'] = 0 ;
                        $orderGoods[$k]['lottery_id']='';
                        $orderGoods[$k]['lottery_detail'] ='';
                        $orderGoods[$k]['lottery_log_id'] ='';
                    }

                }
//                dump($orderGoods);die;
                #减去子订单对应的价格
                $lotteryTotalPrice =0;
                foreach ($orderGoods as $k=>$v){
                    if( isset($v['lottery_id']) && $v['is_lottery']==1){
                        $v['lottery_detail'] = json_decode($v['lottery_detail'] ,true);
                        foreach ($orderRow as &$value ){
                            if(   $value['order_id'] == $v['order_id']){
                                #z子订单检出优惠券面额
                                $value['total_price']=$value['total_price'] - $v['lottery_detail']['coupon_money'];
                                $orderGoods[$k]['real_pay_price'] =   $orderGoods[$k]['real_pay_price']-  $v['lottery_detail']['coupon_money'];
                                #总金额统计
                                $lotteryTotalPrice+=$v['lottery_detail']['coupon_money'];

                            }
                        }
                    }

                }
                #减去订单总价上的优惠价
                $orderAll['total_price'] =    $orderAll['total_price'] -$lotteryTotalPrice;
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
                #微信支付回调变更
                $notifyUrl = $wxConfig->GetNotifyUrl("http://".$_SERVER['HTTP_HOST']."/index.php/index/wechatpay/notify");
                $input->SetNotify_url($notifyUrl);
                $input->SetTrade_type("JSAPI");
                $input->SetOpenid($this->userInfo['openid']);
                $unifiedOrder = \WxPayApi::unifiedOrder($wxConfig,$input);
                $jsApiParameters= $tools->GetJsApiParameters($unifiedOrder);
//                $orderAll['prepay_id'] = $unifiedOrder['prepay_id'];
//                $orderAll['js_api_parameters'] = $jsApiParameters;
                # 插入订单数据
                $addId1 =Db::name("order_all")->insert($orderAll);
                $addId2 =Db::name("order")->insertAll($orderRow);
                $addId3 =Db::name("order_goods")->insertAll($orderGoods);
                foreach ($orderGoods as $value ){
                    #减少库存。
                    Db::name('goods_attribute')->where(['id'=>$value['sku_id']])->setDec('store',$value['goods_num']);
                }
//                dump($type);die;
                #将库存减少，半小时后不付款恢复 或者支付成功减库存
                if ($addId1 > 0 && $addId2 > 0 && $addId3 > 0 ) {
                    # 清空购物车^M
                    foreach ($data as $k =>$v){
                        if($v['carId']){
                            $res = Db::name('car')->where(['id'=>$v['carId']])->delete();
//                            dump($res);die;^M
                        }
                    }
                    if($type==0 ||  $type==2){ #钱 和积分加钱
                        $jsApiParameters = base64_encode($jsApiParameters);
                        $backData = array("msg" => "呼起支付", 'code' => 200, 'redirect' => url("pay/index")."?js_api_parameters={$jsApiParameters}&order_id={$orderId}");
                        die(json_encode($backData));
                    } else {
                        #将用户积分扣取，并将扣取记录记下来
                        $decScore = $user['score']-$totalScore;
                        if($decScore<0)$decScore=0;
                        Db::name('customer')->where(['openid'=>$this->userInfo['openid']])->update(['score'=>$decScore]);
                        #记录
                        $scoreLog=[];
                        $scoreLog['openid']=$this->userInfo['openid'];
                        $scoreLog['source']=7;
                        $scoreLog['source_id']=0;
                        $scoreLog['uid']=$user['id'];
                        $scoreLog['score']=-$decScore;
                        $scoreLog['time']=time();
                        Db::name('score_log')->insert($scoreLog);
//                        dump($orderRow);die;
                        foreach ($orderRow as $val){
                            $res = Db::name('order')->where(['order_id'=>$val['order_id']])->update(['pay_status'=>1,'order_status'=>1,'pay_time'=>time()]);#将订单状态修改为1
                        }
                        $backData = array("msg" => "积分扣取成功", 'code' => 200,'redirect' => url("order/index",array('param'=>'all')));
                        die(json_encode($backData));
                    }

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
                $user = Db::name('customer')->where(['openid'=>$this->userInfo['openid']])->find();
                if($user['score']<$orderData['total_point']){
                    return ajax_return_error('你的积分不足');
                }
                if($orderData['type']==1){#存积分
                    #扣去用户积分 将订单状态修改已支付
                    $decScore = $user['score']-$orderData['total_point'];
                    Db::name('customer')->where(['openid'=>$this->userInfo['openid']])->update(['score'=>$decScore]);
                    $scoreLog=[];
                    $scoreLog['openid']=$this->userInfo['openid'];
                    $scoreLog['source']=7;
                    $scoreLog['source_id']=0;
                    $scoreLog['uid']=$user['id'];
                    $scoreLog['score']=-$decScore;
                    $scoreLog['time']=time();
                    Db::name('score_log')->insert($scoreLog);
                    $backData = array("msg" => "购买成功", 'code' => 200, 'redirect' => url("order/index"));
                    return json($backData);
                }
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
                    include_once 'WxPaySDK/WxPay.Config.php';
                    $wxConfig = new \WxPayConfig();
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
                    #微信支付回调变更
                    $notifyUrl = $wxConfig->GetNotifyUrl("http://".$_SERVER['HTTP_HOST']."/index.php/index/wechatpay/notify1");
                    $input->SetNotify_url($notifyUrl);
                    $input->SetTrade_type("JSAPI");
                    $input->SetOpenid($this->userInfo['openid']);
                    $unifiedOrder = \WxPayApi::unifiedOrder($wxConfig,$input);
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
                #积分扣取
                if($orderData['type']==0||$orderData['type']==2){

                }
                $backData = array("msg" => "呼起支付", 'code' => 200, 'redirect' => url("pay/index")."?js_api_parameters={$jsApiParameters}&order_id={$orderData['order_id']}");
                return json($backData);
            }

        }
        #统计积分合计
        public function totalScore($data)
        {
//            dump($data);die;
            $pay = 0;
            foreach ($data  as $val) {
                $goods = Db::name('goods')->where(['id'=>$val['goodsId']])->find();
                $res = Db::name('goods_attribute')->field('price,point_score')->where(['id'=>$val['skuId']])->find();
                if($goods['settlement_type']==2 ||$goods['settlement_type']==3 ){
                    if (isset($val['num'])) {
                        $pay += $res['point_score'] * $val['num'];
                    }
                }
//                if($goods['free_type']==0){
//                    $pay +=$goods['postage'];
//                }
            }
            return $pay;
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
                    $pay +=$goods['postage']* $val['num'];
                }
            }
            return $pay;
//            return 0.01;
        }

        #取消订单
        public function cancelOrder()
        {
            if($this->request->isAjax()){
                $data=$this->request->post();
                if(!$data['order_id']){
                    return ajax_return_error('缺少订单id');
                }
                $order =Db::name('order')->where(['order_id'=>$data['order_id']])->find();
                if($order['pay_status']==1){#
                    return ajax_return_error('已经支付只能退货');
                }
                $res =Db::name('order')->where(['order_id'=>$data['order_id']])->update(['order_status'=>7]);
                #回滚库存
                $orderGoods =Db::name('order_goods')->where(['order_id'=>$data['order_id']])->select();
                if( !empty($orderGoods) ){
                    foreach ($orderGoods as $v){
                        Db::name('goods_attribute')->where(['id'=>$v['sku_id']])->setInc('store',$v['goods_num']);
                    }
                }
                return ajax_return('','取消成功','200');
            }

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
                    ->update(['is_send'=>2,'get_goods_time'=>time()]);#表示确认收货
                if($res){
                    #将这个商品的积分返给用户。
                    $goods = Db::name('goods')
                        ->where(['id'=>$data['goods_id']])->find();

                    #加上同样多的价格和
                    $user = Db::name('customer')->where(['openid'=>$this->userInfo['openid']])->find();
                    $grade = Db::name('customer_grade')
                        ->where(['experience_start'=>['<=',$user['experience']],'experience_end'=>['>=',$user['experience'] ]])
                        ->find();

                    #不同等级得到不同积分。
                    Db::name('customer')->where(['openid'=>$this->userInfo['openid']])->update([
                        'experience'=>$user['experience']+$goods['return_score'],
                        'score'=>$user['score']+$goods['return_score']*$grade['goods_score_rate'],
                    ]);
//                    echo Db::name('customer')->getLastSql();die;
//                    Db::name('customer')->where(['openid'=>$this->userInfo['openid']])->setInc('score',$goods['return_score']*$grade['goods_score_rate']);
                    $insert =[];
                    $insert['openid']=$this->userInfo['openid'];
                    $insert['source_id']=$goods['id'];
                    $insert['source']=5;
                    $insert['score']=$goods['return_score']*$grade['goods_score_rate'];
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
                #积分商品不支持退货退款
                $goods = Db::name('goods')->where(['id'=>$data['goods_id']])->find();
//                if($goods['settlement_type']==2 || $goods['settlement_type']==3){
                if($goods['settlement_type']==2 ){
                    return ajax_return_error('积分商品不支持退换');
                }
                $orderGoods['goods_detail'] = json_decode($orderGoods['goods_detail'],true);
                if($orderGoods['goods_detail']['is_return_goods']==0){
                    return ajax_return_error('该商品不支持退换货');
                }
                #查询是否使用优惠券
                $order =  Db::name('order')->where([
                    'order_id'=>$data['order_id'],'is_lottery'=>1])->find();
                #扣去奖券金额   #未使用优惠券直接退款商品价格 如果不包邮直接商品价格，
                $goodsAttribute = Db::name('goods_attribute')->field('price')->where(['id'=>$data['sku_id']])->find();
                $returnMoney = $orderGoods['goods_num']*$goodsAttribute['price'];
                #如果商品包邮，退款时减去邮费
                if($goods['free_type']==0){
                    $returnMoney-=$orderGoods['goods_num']*$goods['postage'];
                }
                if($returnMoney<0)$returnMoney=0.01;
//                $returnMoney = $goodsAttribute['price'];

                $res1 = Db::name('order_goods')->where([
                    'order_id'=>$data['order_id'],
                    'goods_id'=>$data['goods_id'],
                    'sku_id'=>$data['sku_id'],
//                ])->update(['is_return'=>1,'return_price'=>$goodsAttribute['price'],'is_send'=>3]); # 待退款  3退款中 7退款中/退货退款
                ])->update(['is_return'=>1,'return_price'=>$orderGoods['real_pay_price'],'is_send'=>3]); # 待退款  3退款中 7退款中/退货退款 就是实际付款金额
                $ordertmp = Db::name('order')->field('return_price_all')->where([
                    'order_id'=>$data['order_id']])->find();
                #退款价
                $order = Db::name('order')->where('order_id',$data['order_id'])->find();
                $update =[];
                $update = ['return_price_all'=>$orderGoods['real_pay_price']+$ordertmp['return_price_all']];
//                if($goodsAttribute['price']+$ordertmp['return_price_all']==$order['total_price'] ){
//                }else{
//                    $update = ['return_price_all'=>$goodsAttribute['price']+$ordertmp['return_price_all'],'order_status'=>4];
//                }
                $res= Db::name('order')
                    ->where('order_id',$data['order_id'])
                    #总退款加上0未支付1已支付2待评价，3待回复，5部分退款，6全部退款，7取消订单，8订单完成
                    ->update($update);
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
                ->join('fy_order_goods ','fy_order_goods.order_id=fy_order.order_id','left')
                ->join('fy_goods_attribute','fy_order_goods.sku_id=fy_goods_attribute.id','left')
                ->where(['fy_order.order_id'=>$id])
                ->select();
            $address = json_decode($orderDetail[0]['address_detail'],true);
            if(!empty($orderDetail) && is_array($orderDetail)){
                foreach (  $orderDetail as $k=> $v){
                    $orderDetail[$k]['goods_detail'] = json_decode($orderDetail[$k]['goods_detail'],true);
                    $orderDetail[$k]['lottery_detail'] = json_decode($orderDetail[$k]['lottery_detail'],true);
                    #服务信息
                    if( !empty( $orderDetail[$k]['goods_detail']['service']) ){
                        $orderDetail[$k]['goods_detail']['service'] = json_decode($orderDetail[$k]['goods_detail']['service'],true);
                    }else{
                        $orderDetail[$k]['goods_detail']['service']=[];
                    }
                }
            }

            $this->view->assign('address',$address) ;
            $this->view->assign('orderDetail',$orderDetail);

            return $this->view->fetch('orderDetail');
        }

        #商品售后
        public function  orderService()
        {
            if($this->request->isAjax()){
                $data =$this->request->post();
                if(!$data['order_id'] || !$data['goods_id'] || !$data['sku_id'] ){
                    return $this->error('缺少参数id');
                }
                if( !$data['after_sale_type'] || !$data['after_sale_reson'] ){
                    return ajax_return('','请选择售后类型和原因','500');
                }
                $goods = Db::name('goods')->where(['id'=>$data['goods_id']])->find();
                if($goods['settlement_type']==2||$goods['settlement_type']==3){
                    if($data['after_sale_type']==3){#表示退货退款
                        return ajax_return('','积分商品不支持退货退款','500');
                    }
                }
                $orderGoods = Db::name('order_goods')->where(['order_id'=>$data['order_id'],'goods_id'=>$data['goods_id'],'sku_id'=>$data['sku_id']])->find();
                $time = time() ;
                $orderGoods['address_detail'] = json_decode( $orderGoods['address_detail'],true);
                $orderGoods['goods_detail'] = json_decode( $orderGoods['goods_detail'],true);
                $day7 = 24*60*60*7;
                if( ($time - $orderGoods['get_goods_time'] > $day7 )&& $data['after_sale_type']==1   ){#大于7天不可以退换货
                    return ajax_return('','超过七天不可以退换货，请联系卖家','500');
                }

                $update=[];
                $update['after_sale_type'] = $data['after_sale_type'];
                $update['after_sale_reson'] = $data['after_sale_reson'];
                $update['after_sale_ask'] = $data['after_sale_ask'];
                $update['after_sale_remark'] = $data['after_sale_remark'];
                $update['after_sale_pic'] = $data['after_sale_pic'];
                $update['order_id'] = $orderGoods['order_id'];
                $update['goods_id'] = $orderGoods['goods_id'];
                $update['openid'] = $orderGoods['openid'];
                $update['after_status'] = 1;
                $update['apply_time'] = $time;
                $update['handle_time'] = $time;
                $update['mobile'] = $orderGoods['address_detail']['mobile'];
                $update['ogid'] = $orderGoods['id'];
                #默认寄回地址
                $address = Db::name('customer_address')->where(['id'=>$data['address_id']])->find();
                $update['moren_address'] =json_encode($address);
                Db::name('after_sale_following')->insert($update);
//                $returnMoeny =$orderGoods['goods_num'] ;
                if($data['after_sale_type']==3){
                    $goodsAttribute = Db::name('goods_attribute')->field('price')->where(['id' => $orderGoods['sku_id']])->find();
                    $returnMoney = $orderGoods['goods_num'] * $goodsAttribute['price'];
                    #如果商品包邮，退款时减去邮费
                    if ($orderGoods['goods_detail']['free_type'] == 0) {
                        $returnMoney -= $orderGoods['goods_num'] * $orderGoods['goods_detail']['postage'];
                    }
                    if ($returnMoney < 0) $returnMoney = 0.01;
                    $res1 = Db::name('order_goods')->where([
                        'order_id' => $data['order_id'],
                        'id' => $orderGoods['id'],
                    ])->update(['is_return' => 1, 'return_price' => $goodsAttribute['price'], 'is_send' => 7]); # 待退款  3退款中 7退款中/退货退款
                    $ordertmp = Db::name('order')->where([
                        'order_id' => $orderGoods['order_id']])->find();
                    #退款价
                    $newupdate = [];
                    $update = ['return_price_all' => $goodsAttribute['price'] + $ordertmp['return_price_all']];
                    $res = Db::name('order')
                        ->where('order_id', $data['order_id'])->update($newupdate);
                }

                Db::name('order_goods')->where([
                    'order_id' => $data['order_id'],
                    'id' => $orderGoods['id'],
                ])->update(['after_sale_is' => 1]); # 待退款  3退款中 7退款中/退货退款
                return ajax_return('','申请成功','200');
            }
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
            $orderDetail['address_detail'] = json_decode($orderDetail['address_detail'],true);

            $user = Db::name('customer')->where(['openid'=>$this->userInfo['openid']])->find();
            $userAddress = Db::table('fy_customer_address')->where(
                ['uid' => $user['id'], 'status' => 1]
            )->find();
            //dump($userAddress);
            $this->assign('userAddress', $userAddress);

            $this->view->assign('orderDetail',$orderDetail);
            $this->view->assign('address',$userAddress);
            return $this->view->fetch('orderService');
        }

        #用户填写物流单号
        public function orderServerAddWuliu()
        {
            if($this->request->isAjax()){
                $data =$this->request->post();
                if(!$data['id']  ){
                    return $this->error('缺少参数id');
                }
                $data['user_wuliu_type_order'] = $data['type'].$data['wuliu_order'];
                Db::name('after_sale_following')->where(['id'=>$data['id']])->update(['user_wuliu_type_order'=>$data['user_wuliu_type_order']]);
                return ajax_return('','更新成功','200');
            }
        }

        #删除订单
        public function  deleteOrder()
        {
            if($this->request->isAjax()){
                $data =$this->request->post();
                if(!$data['order_id']  ){
                    return $this->error('缺少参数id');
                }
                Db::name('order')->where(['order_id'=>$data['order_id']])->delete();
                Db::name('order_goods')->where(['order_id'=>$data['order_id']])->delete();
                return ajax_return('','删除成功','200');
            }
        }
        #取消售后
        public function  cancleAfterSale()
        {
            if($this->request->isAjax()){
                $data =$this->request->post();
//                if(!$data['id'] ){
//                    return $this->error('缺少参数id');
//                }
//                if(!$data['ogid'] ){
//                    return $this->error('缺少参数ogid');
//                }
                $afterSale = Db::name('after_sale_following')
                    ->where(['order_id'=>$data['order_id'],'goods_id'=>$data['goods_id'],'openid'=>$this->userInfo['openid']])
                    ->find();
                $orderGoods = Db::name('order_goods')->where(['order_id'=>$data['order_id'],'goods_id'=>$data['goods_id'],'sku_id'=>$data['sku_id']])->find();
                if($afterSale['after_sale_type']==3){#
                    $goodsAttribute = Db::name('goods_attribute')->field('price')->where(['id' => $orderGoods['sku_id']])->find();
                    $returnMoney = $orderGoods['goods_num'] * $goodsAttribute['price'];
                    #如果商品包邮，退款时减去邮费
                    if ($orderGoods['goods_detail']['free_type'] == 0) {
                        $returnMoney -= $orderGoods['goods_num'] * $orderGoods['goods_detail']['postage'];
                    }
                    if ($returnMoney < 0) $returnMoney = 0.01;
                    $returnMoney = $goodsAttribute['price'];
                    $res1 = Db::name('order_goods')->where([
                        'order_id' => $data['order_id'],
                        'id' => $data['id'],
                    ])->update(['is_return' => 0, 'return_price' =>0, 'is_send' => 6, 'after_sale_is' => 0]); # 0   6 完成 0 未提交
                    $ordertmp = Db::name('order')->where([
                        'order_id' => $orderGoods['order_id']])->find();
                    #退款价
                    $order = Db::name('order')->where('order_id', $orderGoods['order_id'])->find();
                    $update = [];
                    $update = ['return_price_all' =>$ordertmp['return_price_all'] - $goodsAttribute['price']];#减去退款价
                    $res = Db::name('order')
                        ->where('order_id', $data['order_id'])->update($update);
                    #总退款加上0未支付1已支付2待评价，3待回复，5部分退款，6全部退款，7取消订单，8订单完成

                }
                Db::name('order_goods')
                    ->where(['order_id'=>$data['order_id'],'goods_id'=>$data['goods_id'],'sku_id'=>$data['sku_id'],'openid'=>$this->userInfo['openid']])
                    ->update(['after_sale_is'=>0,'after_handle_is'=>0]);
                return ajax_return('','取消成功','200');
            }

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
            $this->view->assign('orderDetail',$this->returnOrderDetail($order_id,$goods_id));
            return $this->view->fetch('logistics');
        }
        #商品售后
        public function  orderTrack()
        {
            $this->assign('titleName', "售后详情");
            $order_id = $this->request->param('order_id');
            $goods_id = $this->request->param('goods_id');
            $sku_id= $this->request->param('sku_id');
            if(!$goods_id || !$order_id ){
                return $this->error('缺少参数id');
            }
             $afterSale = Db::name('after_sale_following')
                ->where(['order_id'=>$order_id
                    ,'goods_id'=>$goods_id,'openid'=>$this->userInfo['openid']])
                 ->order('apply_time desc')
                ->find();
            $this->view->assign('afterSale',$afterSale);
            $orderGoods = Db::name('order_goods')
                ->where([
                    'order_id'=>$order_id
                    ,'goods_id'=>$goods_id
                    ,'sku_id'=>$sku_id
                ])
                ->find();
            $orderGoods['goods_detail'] = json_decode($orderGoods['goods_detail'],true);
            $this->view->assign('orderDetail',$orderGoods);
            $this->view->assign('userInfo',$this->userInfo);
            //dump($this->userInfo);
            //dump($orderGoods);
            return $this->view->fetch('orderTrack');
        }
        #订单评论
        public function  orderComment()
        {
            if($this->request->isAjax()){
                $data = $this->request->post();
                if(!$data['order_id'] ){
                    return ajax_return_error('缺少参数id');
                }
                if( $data['pic'] ){
                    $data['pic'] = explode(',',$data['pic']);
                    $data = picHandle($data);
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
                if($orderGoods['is_send']==5){
                    return ajax_return_error('该商品已经评论');
                }
                $res = Db::name('order_goods')
                    ->where([
                        'order_id'=>$data['order_id'],
                        'goods_id'=>$data['goods_id'],
                        'sku_id'=>$data['sku_id']
                    ])
                    ->update(['is_send'=>5]);#待回复
                #记录评价内容
                $orderGoods['goods_detail'] = json_decode($orderGoods['goods_detail'],true);
                $insert=[];
                if($data['pic']){
                    $insert['pic']=join($data['pic'],',');
                }
                $insert['openid']=$this->userInfo['openid'];
                $insert['ogid']=$orderGoods['id'];
                $insert['username']=$this->userInfo['nickname'];
                $insert['goods_id']= $data['goods_id'] ;
                #所属商户
                $insert['user_id']=  $orderGoods['goods_detail']['user_id'] ;
                $insert['goods_name']=$orderGoods['goods_detail']['name'];
                $insert['content']=$data['desc'];
                $insert['create_time']=time();
                $insert['similarity_score']=$data['similarity_score'];
                $insert['logistics_score']=$data['logistics_score'];
                $insert['service_score']=$data['service_score'];
                $insert['avg_score']= number_format(($data['service_score'] + $data['similarity_score']+$data['logistics_score'])/3 ,2);
                $res1 = Db::name('goods_comment')->insert($insert);

                #将这个订单修改为已评价
//                Db::name('order_')->where(['order_id'=>$data['order_id']])->update(['order_status'=>8]);
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

        #返回订单详情
        public function returnOrderDetail($order_id,$goods_id){
            $orderDetail = Db::name('order')
                ->join('fy_order_goods','fy_order_goods.order_id=fy_order.order_id','left')
                ->join('fy_goods_attribute','fy_order_goods.sku_id=fy_goods_attribute.id','left')
                ->where(['fy_order.order_id'=>$order_id,'fy_order_goods.goods_id'=>$goods_id])
                ->find();
            $orderDetail['goods_detail'] = json_decode($orderDetail['goods_detail'],true);
            return $orderDetail;
        }
    }

