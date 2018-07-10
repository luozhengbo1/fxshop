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
        #付款成功通知
//        include_once "sendMsg/SDK/WeiXin.php";
//        $wx = new \WeiXin();
//        $wx->templateMsg('','','');
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
            file_put_contents("wx_pay_success.log",$xml."\r", 8);
            # 订单id是微信统一下单接口生成的out_trade_no
            $orderWhere = ["order_id" => $orderInfo['out_trade_no'] ];
            $update = ['pay_status' => 1, 'pay_time' => time(),'order_status'=>1];
            $res = Db::name("order")->where($orderWhere)->update($update);
        }
        exit;
    }
    # 微信退款
    public function refund()
    {
//        include_once 'WxPaySDK/WxPay.Api.php';
//        $order_id = I('order_id/s');
//        $result = ['code'=>400,'msg'=>''];
//        if( $order_id ){
//            $mOrder = M('order');
//            $where = array('order_id' => $order_id, 'pay_status' => 4);
//            $order = $mOrder
//                ->where(['order_id'=>$order_id])//支付状态
//                ->where('pay_status in (1,2,4)')//支付成功，和正在处理中的订单
//                ->find();
//            $merchid = \WxPayConfig::MCHID;
//            if( !$order ){
//                $result['code'] = 401;
//                $result['msg'] = '订单数据异常';
//                file_put_contents("wx_refund_error.log",print_r($result, true)."\r", 8);
//                die(json_encode($result));
//            }
//            $input = new \WxPayRefund();
//            $input->SetOut_trade_no($order['order_id']);   //自己的订单号
//            //$input->SetTransaction_id($order['transaction_id']);  //微信官方生成的订单流水号，在支付成功中有返回
//            $input->SetOut_refund_no( uniqid().time() );   //退款单号
//            $input->SetTotal_fee( $order['price'] );   //订单标价金额，单位为分
//            $input->SetRefund_fee( $order['price'] );  //退款总金额，订单总金额，单位为分，只能为整数
//            $input->SetOp_user_id($merchid);
//            $res = \WxPayApi::refund($input);
//            //退款操作
//            if( $res['return_code'] == 'SUCCESS' ){
//                file_put_contents("wx_refund_success.log",print_r($res, true)."\r", 8);
//                //修改订单状态
//                $updateres = M('order')->where( [ 'order_id'=>$order_id ] )->save(['pay_status'=>2]); //2表示退款成功
//                $result['code'] = 200;
//                $result['msg'] = '退款成功';
//                die(json_encode($result)) ;
//            }else{
//                file_put_contents("wx_refund_error.log",$res."\r", 8);
//                $result['code'] = 402;
//                $result['msg'] = '退款异常请联系客服人员';
//                die(json_encode($result));
//            }
//        }else{
//            $result['code'] = 404;
//            $result['msg'] = '订单号不存在';
//            file_put_contents("wx_refund_error.log",json_encode($result."\r"), 8);
//            die(json_encode($result));
//        }
    }
}
