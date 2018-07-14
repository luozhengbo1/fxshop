<?php
/*
*/
namespace app\index\controller;

use think\Controller;
use think\Db;

class Wechatpay extends Controller
{
    public function __construct(){
        header("content-type:text/html;charset=utf-8");
        parent::__construct();

    }

    # 微信支付回调
    public function notify()
    {

//        die;
        # 支付成功后更新支付状态，支付时间
        $xml = isset($GLOBALS['HTTP_RAW_POST_DATA']) ? $GLOBALS['HTTP_RAW_POST_DATA'] : '';
        include_once 'WxPaySDK/Notify.php'; # 微信回调通知
        $notify = new \PayNotifyCallBack();
        $notify->Handle(false);
        $orderInfo = \WxPayResults::Init($xml);
        if (empty($orderInfo)) {
            file_put_contents("wx_pay_error.log",$xml."\r", 8);
        } else {

            #查出两个子订单，将其状态改成已支付
            $where['order_id']=$orderInfo['out_trade_no'];
            $sonId = Db::name('order_all')->field('son_id')->where($where)->find();
            $arr =[];
            $arr = explode(',',$sonId['son_id']);
            foreach ($arr as $value){
                Db::name('order')
                    ->where(['order_id'=>$orderInfo['out_trade_no'].$value])
                    ->update(['order_status'=>1,'pay_status'=>1, 'pay_time' => time()]);

            }
            file_put_contents("wx_pay_success.log",$xml."\r", 8);
            # 订单id是微信统一下单接口生成的out_trade_no
            $orderWhere = ["order_id" => $orderInfo['out_trade_no'] ];
            $update = ['status' => 1];
            $res = Db::name("order_all")->where($orderWhere)->update($update);
            #付款成功通知
//            include_once "sendMsg/SDK/WeiXin.php";
//            $wx = new \WeiXin();
//            $wx->buySuccess('','','');
        }
        exit;
    }

    #支付回调
    public function notify1()
    {
        # 支付成功后更新支付状态，支付时间
        $xml = isset($GLOBALS['HTTP_RAW_POST_DATA']) ? $GLOBALS['HTTP_RAW_POST_DATA'] : '';
        include_once 'WxPaySDK/Notify.php'; # 微信回调通知
        $notify = new \PayNotifyCallBack();
        $notify->Handle(false);
        $orderInfo = \WxPayResults::Init($xml);
        if (empty($orderInfo)) {
            file_put_contents("wx_pay_error.log",$xml."\r", 8);
        } else {
            $where['order_id']=$orderInfo['out_trade_no'];
            $data['pay_time']=time();
            $data['pay_status']=1;
            $data['order_status']=1;
            Db::name('order')->where($where)->update($data);
        }
    }

}
