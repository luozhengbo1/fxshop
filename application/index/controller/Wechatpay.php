<?php
/*
*/

namespace app\index\controller;

use app\common\behavior\OrderMessage;
use think\Controller;
use think\Db;
use think\Session;

class Wechatpay extends Controller
{
    public function __construct()
    {
        header("content-type:text/html;charset=utf-8");
        parent::__construct();
    }
    # 微信支付回调
    public function notify()
    {
        $dataPost = $this->request->post();
        if(isset($dataPost['flag'])){
            $orderInfo['out_trade_no']=$dataPost['order_id'];
            $orderInfo['openid']=$dataPost['openid'];
            $xml='';
        }else{
            $xml = isset($GLOBALS['HTTP_RAW_POST_DATA']) ? $GLOBALS['HTTP_RAW_POST_DATA'] : '';
            # 支付成功后更新支付状态，支付时间
            include_once 'WxPaySDK/Notify.php'; # 微信回调通知
            include_once 'WxPaySDK/WxPay.Config.php'; # 微信回调通知
            $wxConfig = new \WxPayConfig();
            $notify = new \PayNotifyCallBack();
            $notify->Handle($wxConfig, true);
            $orderInfo = \WxPayResults::Init($wxConfig, $xml);
        }
//       $orderInfo['out_trade_no']="150794476120180923204059";
//        $orderInfo['openid']="oj2u_0toFbhREpQixXq6Es5_c-GU";
        $user = Db::name('customer')->where(['openid'=>$orderInfo['openid']])->find();

        if (empty($orderInfo)) {
            file_put_contents("wx_pay_error.log", $xml . "\r", 8);
        } else {
            #查出父订单
            $orderAllData = Db::name('order_all')->where(['order_id' => $orderInfo['out_trade_no']])->find();
            #付款成功通知
            $arr = [];
            $arr = explode(',', $orderAllData['son_id']);
            $user = Db::name('customer')->where(['openid' => $orderInfo['openid']])->find();
            $goodsname = "";
            $goods_data = "";//商城发货消息
            $orderAllData = Db::name('order_all')->where(['order_id' => $orderInfo['out_trade_no']])->find();
            if ($orderAllData['is_tui'] == 0  ) {
                    #调用分销函数-------------------
                    self::fxSettlement($orderInfo['out_trade_no'], $orderInfo['openid'],0,$user);
                    #调用分销函数-----------------------
                file_put_contents("wx_pay_success.log", $xml . "\r", 8);
                    Db::name('order_all')->where(['order_id' => $orderInfo['out_trade_no']])->update(['is_tui' => 1,'status'=>1]);
                $totalScore=0;
                foreach ($arr as $value) {
                    #查出两个子订单，将其状态改成已支付
                    Db::name('order')
                        ->where(['order_id' => $orderInfo['out_trade_no'] . $value])
                        ->update(['order_status' => 1, 'pay_status' => 1, 'pay_time' => time()]);
                    $orderSon = Db::name('order')->where(['order_id' => $orderInfo['out_trade_no'] . $value])->find();
                    $totalScore+=$orderSon['total_point'];
                    #将子订单中对应的商品数量减少。
                    $goodsOrder = Db::name('order_goods')->where(['order_id' => $orderInfo['out_trade_no'] . $value])->select();
                    foreach ($goodsOrder as $v) {
                        $goodsStore = Db::name('goods_attribute')->field('store,id,goods_id')->where(['id' => $v['sku_id']])->find();
                        $store = '';
                        if ($goodsStore['store'] - $v['goods_num'] <= 0) {
                            $store = 0;
                        }
                        $store = $goodsStore['store'] - $v['goods_num'];
                        $goodsDa = json_decode($v['goods_detail'],true);
                        $goodsname .= $goodsDa['name'] . "  " . $v['sku_val'] . "*" . $v['goods_num'] . "   ";
                        $goods_data .= $goods_data . '' . $goodsDa['name'] . "  " . $v['sku_val'] . "×" . $v['goods_num'] . "<br/>";
                        #减库存
                        Db::name('goods_attribute')->where(['id' => $v['sku_id']])->update(['store' => $store]);
                        #加上销量
                        Db::name('goods')->where(['id' => $goodsStore['goods_id']])->setInc('buy_num', $goodsStore['store']);
                        #将优惠券记录为失效
                        if( $v['is_lottery']==1 && $v['lottery_log_id']){
                            $lotteryLog = Db::name('lottery_log')->where(['id'=>$v['lottery_log_id']])->find();
                            $dec_lottery_num = $lotteryLog['lottery_num']-1;
                            if($dec_lottery_num>=0){
                                Db::name('lottery_log')->where(['id'=>$v['lottery_log_id']])->update(['lottery_num'=>$dec_lottery_num,'use_num'=>$lotteryLog['use_num']+1]);
                            }
                        }
                    }
                }


                #将用户积分扣取，并将扣取记录记下来
                $decScore = $user['score'] - $totalScore;
                if ($decScore < 0) $decScore = 0;
                Db::name('customer')->where(['openid' => $orderInfo['openid']])->update(['score' => $decScore]);
//                        file_put_contents("wx_pay_success.log",Db::name('customer')->getLastSql()."\r", 8);
                #记录
                $scoreLog = [];
                $scoreLog['openid'] = $orderInfo['openid'];
                $scoreLog['source'] = 7;
                $scoreLog['uid'] = $user['id'];
                $scoreLog['source_id'] = 0;
                $scoreLog['score'] = -$totalScore;

                $scoreLog['time'] = time();
                Db::name('score_log')->insert($scoreLog);
                include_once "sendMsg/SDK/WeiXin.php";
                $wx = new \WeiXin();
                $result = $wx->buySuccess($goodsname, $orderInfo['openid'], $orderAllData['total_price']);
                //发货消息发送
                $order_message = new OrderMessage();
                $user_info = ['uid' => $user['id'], 'openid' => $user['openid']];
                $goods_info = ['total_price' => $orderAllData['total_price'], 'goods_data' => $goods_data];
                $order_message->payMessage('pay_success', $user_info, $goods_info, '');
                $wx_par_log_is = Db::name('wx_pay_refund_log')->where(['order_id' => $orderInfo['out_trade_no'], 'type' => 1])->find();
                if (!$wx_par_log_is) {#已经有了不在写入
                    $wx_pay_refund_log_insert = [];
                    $wx_pay_refund_log_insert['openid'] = $user['openid'];
                    $wx_pay_refund_log_insert['username'] = $user['nickname'];
                    $wx_pay_refund_log_insert['create_time'] = time();
                    $wx_pay_refund_log_insert['money'] = $orderAllData['total_price'];
                    $wx_pay_refund_log_insert['type'] = 1;
                    $wx_pay_refund_log_insert['order_id'] = $orderInfo['out_trade_no'];
                    #购买商品
                    Db::name('wx_pay_refund_log')->insert($wx_pay_refund_log_insert);
                }
            }
        }
        exit;
    }
    #分销结算
    public function fxSettlement($orderId,$openId,$flag,$user)
    {
        $orderAll = Db::name('order_all')->where('order_id',$orderId)->find();
        $time = time();
        if($flag==0){
            if($user['is_member']!=1){#非会员
                foreach (explode(',',$orderAll['son_id']) as $value) {
                    $orderGoods = Db::name('order_goods')
                        ->field('order_id,openid,real_pay_price')
                        ->where('order_id',$orderId.$value)
                        ->select();
                    $currentTotal = array_sum(array_column($orderGoods,'real_pay_price'));
                    if($currentTotal>=88){#将当前用户修改为会员，并且将积分送给用户并记录
                        $updateUser=[
                            'is_member'=>1,
//                            'fx_money'=>$user['fx_money']+8.8, #可提现积分暂时不加上去，
                            'fx_total_money'=>$user['fx_total_money']+8.8
                        ];
                        Db::name('customer')->where('openid',$user['openid'])->update($updateUser);
                        $insertSelf = [
                            'create_time'=>$time,
                            'get_user_id'=>$user['id'],
                            'get_user_name'=>$user['nickname'],
                            'get_user_openid'=>$user['openid'],
                            'source_user_id'=>$user['id'],
                            'source_user_name'=>$user['nickname'],
                            'source_user_openid'=>$user['openid'],
                            'order_id'=>$orderId.$value,
                            'money'=>8.8,
                            'total_price'=>$orderAll['total_price'],
                            'rate'=>10,
                            'is_tx'=>0,
                            'type'=>1,
                            'status'=>0,
                        ];
                        Db::name('fx_user_log')->insert($insertSelf);
                    }
                }
            }
        }else{
            if($user['is_member']!=1){#非会员
                $orderGoods = Db::name('order_goods')
                    ->field('order_id,openid,real_pay_price')
                    ->where('order_id',$orderId)
                    ->select();
                $currentTotal = array_sum(array_column($orderGoods,'real_pay_price'));
                if($currentTotal>=88){#将当前用户修改为会员，并且将积分送给用户并记录
                    $updateUser=[
                        'is_member'=>1,
//                        'fx_money'=>$user['fx_money']+8.8,
                        'fx_total_money'=>$user['fx_total_money']+8.8
                    ];
                    Db::name('customer')->where('openid',$user['openid'])->update($updateUser);
                    $insertSelf = [
                        'create_time'=>$time,
                        'get_user_id'=>$user['id'],
                        'get_user_name'=>$user['nickname'],
                        'get_user_openid'=>$user['openid'],
                        'source_user_id'=>$user['id'],
                        'source_user_name'=>$user['nickname'],
                        'source_user_openid'=>$user['openid'],
                        'order_id'=>$orderId,
                        'money'=>8.8,
                        'total_price'=>$orderAll['total_price'],
                        'rate'=>10,
                        'is_tx'=>0,
                        'type'=>1,
                        'status'=>0,
                    ];
                    Db::name('fx_user_log')->insert($insertSelf);
                }

            }

        }

        $sqlUser ="SELECT T2.id, T2.openid,T2.nickname,T2.fx_money,T2.is_member,T2.fx_total_money FROM (   
            SELECT  @r AS _id,  (SELECT @r := pid  FROM  fy_customer WHERE id = _id) AS pid,   
            @l := @l + 1 AS lvl   FROM    (SELECT @r := ".$user['id'] ." , @l := 0) vars,   
           fy_customer h   WHERE @r <> 0) T1 JOIN fy_customer T2   ON T1._id = T2.id  ORDER BY T1.lvl ASC  limit 4";
        $parList = Db::name('customer')->query($sqlUser);

        array_shift($parList);
//            dump($parList);
        $fxSet = Db::name('fx_set')->where(['status'=>1])->find();
        if($fxSet){
            $count = (count($parList)>2)?2:count($parList);
            $insertFxLog = [];
            for($i=0;$i<$count;$i++){
                if( !empty($parList[$i]) &&  $parList[$i]['is_member']==1 ){
                    if($i == 0){
                        $money = number_format($orderAll['total_price']*$fxSet['first']/100,2);
                    }else if($i==1){
                        $money = number_format($orderAll['total_price']*$fxSet['second']/100,2);
                    }
                    $insertFxLog[] = [
                        'create_time'=>$time,
                        'get_user_id'=>$parList[$i]['id'],
                        'get_user_name'=>$parList[$i]['nickname'],
                        'get_user_openid'=>$parList[$i]['openid'],
                        'source_user_id'=>$user['id'],
                        'source_user_name'=>$user['nickname'],
                        'source_user_openid'=>$user['openid'],
                        'order_id'=>$orderId,
                        'money'=>$money,
                        'total_price'=>$orderAll['total_price'],
                        'rate'=>$fxSet['first'],
                        'is_tx'=>0,
                        'type'=>1,
                        'status'=>0,
                    ];
                    #累计积分的增加
                    Db::name('customer')
                        ->where('openid',$parList[$i]['openid'])
                        ->update([  'fx_total_money'=>$user['fx_total_money']+$money ]);
                }

            }
            Db::name('fx_user_log')->insertAll($insertFxLog);
        }
        #查询5级用户
        if( isset($parList[2]) ){
            $sqlUser5 = "SELECT T2.id, T2.openid,T2.nickname,T2.fx_money,T2.is_member,T2.fx_total_money FROM (   
            SELECT  @r AS _id,  (SELECT @r := pid  FROM  fy_customer WHERE id = _id) AS pid,   
            @l := @l + 1 AS lvl   FROM    (SELECT @r := ".$parList[2]['id'] ." , @l := 0) vars,   
           fy_customer h   WHERE @r <> 0) T1 JOIN fy_customer T2   ON T1._id = T2.id  ORDER BY T1.lvl ASC  limit 3";
            $parList5 = Db::name('customer')->query($sqlUser5);
//            dump($parList5);
            if(!empty($parList5)){
                $insertFxLog5=[];
                foreach ($parList5 as $k=>$val){
                    if($val['fx_total_money']>=10000){# 累计超过10000 可以额外获得1%的积分
                        $money5 = number_format( 1*$orderAll['total_price']/100,2);
                        $insertFxLog5[] = [
                            'create_time'=>$time,
                            'get_user_id'=>$val['id'],
                            'get_user_name'=>$val['nickname'],
                            'get_user_openid'=>$val['openid'],
                            'source_user_id'=>$user['id'],
                            'source_user_name'=>$user['nickname'],
                            'source_user_openid'=>$user['openid'],
                            'order_id'=>$orderId,
                            'money'=>$money5,
                            'total_price'=>$orderAll['total_price'],
                            'rate'=>1,
                            'is_tx'=>0,
                            'type'=>1,
                            'status'=>0,
                        ];
                        #累计积分的增加
                        Db::name('customer')
                            ->where('openid',$val['openid'])
                            ->update(['fx_total_money'=>$val['fx_total_money']+$money5]);
                    }
                }
                Db::name('fx_user_log')->insertAll($insertFxLog5);
            }
        }



    }
    #支付回调
    public function notify1()
    {
        # 支付成功后更新支付状态，支付时间
        $xml = isset($GLOBALS['HTTP_RAW_POST_DATA']) ? $GLOBALS['HTTP_RAW_POST_DATA'] : '';
        include_once 'WxPaySDK/Notify.php'; # 微信回调通知
        include_once 'WxPaySDK/WxPay.Config.php'; # 微信回调通知
        $notify = new \PayNotifyCallBack();
        $wxConfig = new \WxPayConfig();
        $notify->Handle($wxConfig, true);
        $orderInfo = \WxPayResults::Init($wxConfig, $xml);
//        $orderInfo['out_trade_no']="150794476120180923224507";
//        $orderInfo['openid']="oj2u_0hqYXzMYv6vvNwPZnTD8gl8";
        $user = Db::name('customer')->where(['openid' => $orderInfo['openid']])->find();
        if (empty($orderInfo)) {
            file_put_contents("wx_pay_error.log", $xml . "\r", 8);
        } else {
            file_put_contents("wx_pay_success.log", $xml . "\r", 8);
            self::fxSettlement($orderInfo['out_trade_no'], $orderInfo['openid'],1,$user);
            #付款成功通知
            $orderData = Db::name('order')->where(['order_id' => $orderInfo['out_trade_no']])->find();
            Db::name('customer')->where(['openid' => $orderInfo['openid']])->update(['is_member' => 1]);
//            dump(234);
            if ($orderData['is_tui'] == 0  ) {

                #减对应商品的库存
                $goodsname = '';
                $goods_data = '';
                $goodsOrder = Db::name('order_goods')->where(['order_id' => $orderInfo['out_trade_no']])->select();
                foreach ($goodsOrder as $v) {
                    $goodsStore = Db::name('goods_attribute')->where(['id' => $v['sku_id']])->find();
                    $store=$goodsStore['store'] - $v['goods_num'];
                    if ($store<= 0) $store = 0;
                    #减库存
                    Db::name('goods_attribute')->where(['id' => $v['sku_id']])->update(['store' => $store]);
                    #加销量
                    Db::name('goods')->where(['id' => $goodsStore['goods_id']])->setInc('buy_num', $goodsStore['store']);
                    $goodsDa =json_decode($v['goods_detail'],true);
                    $goodsname .= $goodsDa['name'] . "  " . $v['sku_val'] . "*" . $v['goods_num'] . "   ";
                    $goods_data .= $goods_data . '' . $goodsDa['name'] . "  " . $v['sku_val'] . "×" . $v['goods_num'] . "<br/>";
                    #将优惠券记录为失效
                    if( $v['is_lottery']==1 && $v['lottery_log_id']){
                        $lotteryLog = Db::name('lottery_log')->where(['id'=>$v['lottery_log_id']])->find();
                        $dec_lottery_num = $lotteryLog['lottery_num']-1;
                        if($dec_lottery_num>=0){
                            Db::name('lottery_log')->where(['id'=>$v['lottery_log_id']])->update(['lottery_num'=>$dec_lottery_num,'use_num'=>$lotteryLog['use_num']+1]);
                        }
                    }
                }
                include_once "sendMsg/SDK/WeiXin.php";
                $wx = new \WeiXin();
                $result = $wx->buySuccess($goodsname, $orderInfo['openid'], $orderData['total_price']);
                $order = Db::name('order')->where(['order_id' => $orderInfo['out_trade_no']])->find();
                #修改 状态
                $where['order_id'] = $orderInfo['out_trade_no'];
                $data['pay_time'] = time();
                $data['pay_status'] = 1;
                $data['order_status'] = 1;
                $data['is_tui']=1;
                Db::name('order')->where($where)->update($data);
                #减去对应商品的积分
                $totalScore = $orderData['total_point'];

                #将用户积分扣取，并将扣取记录记下来
//            dump($order);die;
                $decScore = $user['score'] - $totalScore;
                if ($decScore < 0) $decScore = 0;
                Db::name('customer')->where(['openid' => $orderInfo['openid']])->update(['score' => $decScore]);
                #记录
                $scoreLog = [];
                $scoreLog['openid'] = $orderInfo['openid'];
                $scoreLog['source'] = 7;
                $scoreLog['source_id'] = 0;
                $scoreLog['uid'] = $user['id'];
                $scoreLog['score'] = -$totalScore;
                $scoreLog['time'] = time();
                Db::name('score_log')->insert($scoreLog);

                //发货消息发送
                $order_message = new OrderMessage();
                $user_info = ['uid' => $user['id'], 'openid' => $user['openid']];
                $goods_info = ['total_price' => $orderData['total_price'], 'goods_data' => $goods_data];
                $order_message->payMessage('pay_success', $user_info, $goods_info, '');

                $wx_par_log_is = Db::name('wx_pay_refund_log')->where(['order_id' => $orderInfo['out_trade_no'], 'type' => 1])->find();
                if (!$wx_par_log_is) {#已经有了不在写入
                    $wx_pay_refund_log_insert = [];
                    $wx_pay_refund_log_insert['openid'] = $user['openid'];
                    $wx_pay_refund_log_insert['username'] = $user['nickname'];
                    $wx_pay_refund_log_insert['create_time'] = time();
                    $wx_pay_refund_log_insert['money'] = $order['total_price'];
                    $wx_pay_refund_log_insert['type'] = 1;#购买商品
                    $wx_pay_refund_log_insert['order_id'] = $orderInfo['out_trade_no'];
                    Db::name('wx_pay_refund_log')->insert($wx_pay_refund_log_insert);
                }
            }

            #交易记录
        }
    }

    #代金券的支付回调
    public function  notify3()
    {
        # 支付成功后更新支付状态，支付时间
        $xml = isset($GLOBALS['HTTP_RAW_POST_DATA']) ? $GLOBALS['HTTP_RAW_POST_DATA'] : '';
        include_once 'WxPaySDK/Notify.php'; # 微信回调通知
        include_once 'WxPaySDK/WxPay.Config.php'; # 微信回调通知
        $notify = new \PayNotifyCallBack();
        $wxConfig = new \WxPayConfig();
        $notify->Handle($wxConfig, true);
        $orderInfo = \WxPayResults::Init($wxConfig, $xml);
//        $orderInfo['out_trade_no']="144121740220180809112541";
//        $orderInfo['openid']="omQYXwNAT5uC15TQqMGxajJzqo4s";
        if (empty($orderInfo)) {
            file_put_contents("wx_pay_error.log", $xml . "\r", 8);
        } else {
            $time = time();
            $whereOrder=[];
            $whereOrder = ['order_id'=>$orderInfo['out_trade_no']];
            $lotteryOrder = Db::name('lottery_log')->where($whereOrder)->find();

            $lotteryOrder['lottery_info'] =   json_decode($lotteryOrder['lottery_info'],true );
            if($lotteryOrder['pay_status']!=1){#表示状态已经修改
                Db::name('lottery_log')->where($whereOrder)->update(['pay_time'=>$time,'pay_status'=>1,'order_status'=>1]);
                #减去对应代金券的数量
                Db::name('lottery')->where(['id'=>$lotteryOrder['lottery_id']])->setDec('surplus_number',$lotteryOrder['lottery_num']);
                #把领取量加上去
                Db::name('lottery')->where(['id'=>$lotteryOrder['lottery_id']])->setInc('receive_number',$lotteryOrder['lottery_num']);
                file_put_contents("wx_pay_success.log", $xml . "\r", 8);
            }
            if($lotteryOrder['is_tui']==0){#消息是否推送
                //发货消息发送
                include_once "sendMsg/SDK/WeiXin.php";
                $wx = new \WeiXin();
                $result = $wx->buySuccess($lotteryOrder['lottery_info']['name'], $orderInfo['openid'], $lotteryOrder['total_price']);
                Db::name('lottery_log')->where($whereOrder)->update(['is_tui'=>1]);

            }
        }
    }

}

