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
        $xml = isset($GLOBALS['HTTP_RAW_POST_DATA']) ? $GLOBALS['HTTP_RAW_POST_DATA'] : '';
        # 支付成功后更新支付状态，支付时间
        include_once 'WxPaySDK/Notify.php'; # 微信回调通知
        include_once 'WxPaySDK/WxPay.Config.php'; # 微信回调通知
        $wxConfig = new \WxPayConfig();
        $notify = new \PayNotifyCallBack();
        $notify->Handle($wxConfig, true);
        $orderInfo = \WxPayResults::Init($wxConfig, $xml);
//        $orderInfo['out_trade_no']="144121740220180808160606";
//        $orderInfo['openid']="omQYXwNAT5uC15TQqMGxajJzqo4s";
        if (empty($orderInfo)) {
            file_put_contents("wx_pay_error.log", $xml . "\r", 8);
        } else {
            file_put_contents("wx_pay_success.log", $xml . "\r", 8);
            #查出父订单
            $sonId = Db::name('order_all')->where('order_id', $orderInfo['out_trade_no'])->find();
            #付款成功通知
            $orderWhere = ["order_id" => $orderInfo['out_trade_no']];
            $update = ['status' => 1];
            $res = Db::name("order_all")->where($orderWhere)->update($update);
            $arr = [];
            $arr = explode(',', $sonId['son_id']);
            $user = Db::name('customer')->where(['openid' => $orderInfo['openid']])->find();
            $goodsname = "";
            $goods_data = "";//商城发货消息
            if (is_array($arr)) {
                $orderAllData = Db::name('order_all')->where(['order_id' => $orderInfo['out_trade_no']])->find();
                if ($orderAllData['is_tui'] == 0) {
                    Db::name('order_all')->where(['order_id' => $orderInfo['out_trade_no']])->update(['is_tui' => 1]);
                    foreach ($arr as $value) {
                        #查出两个子订单，将其状态改成已支付
                        Db::name('order')
                            ->where(['order_id' => $orderInfo['out_trade_no'] . $value])
                            ->update(['order_status' => 1, 'pay_status' => 1, 'pay_time' => time()]);
                        #将子订单中对应的商品数量减少。
                        $goodsOrder = Db::name('order_goods')->where(['order_id' => $orderInfo['out_trade_no'] . $value])->select();
                        foreach ($goodsOrder as $v) {
                            $goodsStore = Db::name('goods_attribute')->field('store,id,goods_id')->where(['id' => $v['sku_id']])->find();
                            $store = '';
                            if ($goodsStore['store'] - $v['goods_num'] <= 0) {
                                $store = 0;
                            }
                            $store = $goodsStore['store'] - $v['goods_num'];
                            $goodsDa = Db::name('goods')->where(['id' => $goodsStore['goods_id']])->find();
                            $goodsname .= $goodsDa['name'] . "  " . $v['sku_val'] . "*" . $v['goods_num'] . "   ";
                            $goods_data .= $goods_data . '' . $goodsDa['name'] . "  " . $v['sku_val'] . "×" . $v['goods_num'] . "<br/>";
                            #减库存
                            Db::name('goods_attribute')->where(['id' => $v['sku_id']])->update(['store' => $store]);
                            #加上销量
                            Db::name('goods')->where(['id' => $goodsStore['goods_id']])->setInc('buy_num', $goodsStore['store']);
                            #扣取相应的积分
                        }
                        $totalScore = $this->totalScore($goodsOrder);

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
                        $scoreLog['score'] = -$decScore;
                        $scoreLog['time'] = time();
                        Db::name('score_log')->insert($scoreLog);
                    }
                    include_once "sendMsg/SDK/WeiXin.php";
                    $wx = new \WeiXin();
                    $result = $wx->buySuccess($goodsname, $orderInfo['openid'], $sonId['total_price']);
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
                        $wx_pay_refund_log_insert['money'] = $sonId['total_price'];
                        $wx_pay_refund_log_insert['type'] = 1;
                        $wx_pay_refund_log_insert['order_id'] = $orderInfo['out_trade_no'];
                        #购买商品
                        Db::name('wx_pay_refund_log')->insert($wx_pay_refund_log_insert);
                    }
                }
            }

        }
        exit;
    }

    #统计积分合计
    public function totalScore($data)
    {
        $pay = 0;
        foreach ($data as $val) {
            $goods = Db::name('goods')->where(['id' => $val['goods_id']])->find();
            $res = Db::name('goods_attribute')->field('price,point_score')->where(['id' => $val['sku_id']])->find();
            if ($goods['settlement_type'] == 2 || $goods['settlement_type'] == 3) {
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
//        $orderInfo['out_trade_no']="144121740220180720145045";
        if (empty($orderInfo)) {
            file_put_contents("wx_pay_error.log", $xml . "\r", 8);
        } else {
            file_put_contents("wx_pay_success.log", $xml . "\r", 8);
            #付款成功通知
            $orderData = Db::name('order')->where(['order_id' => $orderInfo['out_trade_no']])->find();
            if ($orderData['is_tui'] == 0) {
                Db::name('order')->where(['order_id' => $orderInfo['out_trade_no']])->update(['is_tui' => 1]);
                #减对应商品的库存
                $goodsname = '';
                $goods_data = '';
                $goodsOrder = Db::name('order_goods')->where(['order_id' => $orderInfo['out_trade_no']])->select();
                foreach ($goodsOrder as $v) {
//                dump($v);
                    $goodsStore = Db::name('goods_attribute')->where(['id' => $v['sku_id']])->find();
                    $store = '';
                    if ($goodsStore['store'] - $v['goods_num'] <= 0) {
                        $store = 0;
                    }
                    $store = $goodsStore['store'] - $v['goods_num'];
                    #减库存
                    Db::name('goods_attribute')->where(['id' => $v['sku_id']])->update(['store' => $store]);
                    #加销量
                    Db::name('goods')->where(['id' => $goodsStore['goods_id']])->setInc('buy_num', $goodsStore['store']);
                    $goodsDa = Db::name('goods')->where(['id' => $goodsStore['goods_id']])->find();
                    $goodsname .= $goodsDa['name'] . "  " . $v['sku_val'] . "*" . $v['goods_num'] . "   ";
                    $goods_data .= $goods_data . '' . $goodsDa['name'] . "  " . $v['sku_val'] . "×" . $v['goods_num'] . "<br/>";
                }
                include_once "sendMsg/SDK/WeiXin.php";
                $wx = new \WeiXin();
                $result = $wx->buySuccess($goodsname, $orderInfo['openid'], $orderData['total_price']);
                $user = Db::name('customer')->where(['openid' => $orderInfo['openid']])->find();
                $order = Db::name('order')->where(['order_id' => $orderInfo['out_trade_no']])->find();
                $where['order_id'] = $orderInfo['out_trade_no'];
                $data['pay_time'] = time();
                $data['pay_status'] = 1;
                $data['order_status'] = 1;
                Db::name('order')->where($where)->update($data);
                #减去对应商品的积分
                $totalScore = $this->totalScore($goodsOrder);
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
                $scoreLog['score'] = -$decScore;
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
        if (empty($orderInfo)) {
            file_put_contents("wx_pay_error.log", $xml . "\r", 8);
        } else {
            $time = time();
            $whereOrder=[];
            $whereOrder = ['order_id'=>$orderInfo['out_trade_no']];
            $lotteryOrder = Db::name('lottery_log')->where($whereOrder)->find();
            $lotteryOrder['lottery_info'] =   json_decode($lotteryOrder['lottery_info'],true );
            if($lotteryOrder['pay_status']!=1){#表示状态已经修改
                Db::name('lottery_log')->where($whereOrder)->where(['pay_time'=>$time,'pay_status'=>1,'order_status'=>1]);
                #减去对应代金券的数量
                Db::name('lottery')->where(['id'=>$lotteryOrder['lottery_id']])->setDec('number',$lotteryOrder['lottery_num']);
                file_put_contents("wx_pay_success.log", $xml . "\r", 8);
            }
            if($lotteryOrder['is_tui']==0){#消息是否推送
                //发货消息发送
                include_once "sendMsg/SDK/WeiXin.php";
                $wx = new \WeiXin();
                $result = $wx->buySuccess($lotteryOrder['lottery_info']['name'], $orderInfo['openid'], $lotteryOrder['total_price']);
                Db::name('lottery_log')->where($whereOrder)->where(['is_tui'=>1]);

            }
        }
    }

}

