<?php
/**
 * Created by PhpStorm.
 * User: luozhengbo
 * Date: 2018/8/29
 * Time: 15:16
 */
 include_once 'dbConfig.php';
$conn = mysqli_connect($host, $user, $pass, $dbname) or die("连接失败：$conn->connect_error");
$sql = "select * from fy_lottery_log where order_id  is not  null and pay_status=0";
$result = mysqli_query($conn,$sql);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc() ){
        #將未支付的订单删除
        $delSql = "delete from fy_lottery_log where id={$row['id']}";
        mysqli_query($conn,$delSql);
    }
}

#c查询是否有过期 代金券 可以用的
$time = time();
$time=1535616515;
$sqlSeLottery = "select * from fy_lottery_log where pay_status=1 and status=1 and total_price>0";
$result1 = mysqli_query($conn,$sqlSeLottery);
if ($result1->num_rows > 0) {
    while ($row1 = $result1->fetch_assoc() ){
        #查询一下
        $sql2 = "select * from fy_lottery where id={$row1['lottery_id']}";
        $result2 = mysqli_query($conn,$sql2);
        if ($result2->num_rows > 0) {
            while ($row2 = $result2->fetch_assoc() ){
                $row1['lottery_info'] = $row2;
            }
        }
        #判断时间上是否过期，
        if($row1['lottery_info']['expire_type']==1){ #领取之后多少天
            $d = $row1['lottery_info']['expire_time']*60*60*24;
            if($time > ($d + $row1['pay_time'])){#表示过期
                refund($conn,$orderId=$row1['order_id'],$money=$row1['total_price'],$openid=$row1['openid']);
            }
        }else{
            if ($time < $row1['lottery_info']['expire_start_date'] || $time > $row1['lottery_info']['expire_end_date']) {
                refund($conn,$orderId=$row1['order_id'],$money=$row1['total_price'],$openid=$row1['openid']);
            }
        }
    }
}

function refund($conn,$orderId,$money,$openid){
    include_once __DIR__ . '/../controller/WxPaySDK/WxPay.Api.php';
    include_once __DIR__ . '/../controller/WxPaySDK/WxPay.Config.php';
    $wxConfig = new WxPayConfig();
    $merchid = $wxConfig->GetMerchantId();
    $input = new \WxPayRefund();
    $input->SetOut_trade_no($orderId);   //自己的订单号
    //$input->SetTransaction_id($order['transaction_id']);  //微信官方生成的订单流水号，在支付成功中有返回
    $input->SetOut_refund_no(uniqid() . time());   //退款单号
    $input->SetTotal_fee($money * 100);   //订单标价金额，单位为分
    $input->SetRefund_fee($money* 100);  //退款总金额，订单总金额，单位为分，只能为整数
    $input->SetOp_user_id($merchid);
    $res = \WxPayApi::refund($wxConfig, $input);
    if ($res['return_code'] == 'SUCCESS' && $res['result_code'] == "SUCCESS") {
        #记录退款记录
        $sql1 = "select nickname from fy_customer where openid='{$openid}'";
        $res= mysqli_query($conn,$sql1);
        $username='';
        if($res->num_rows>0){
            while ($row = $res->fetch_assoc()){
                $username = $row['nickname'];
            }
        }
        $time =time();
        $sql = "insert into fy_wx_pay_refund_log(openid,create_time,money,type,order_id,username,`desc`) 
            values('{$openid}',$time,'{$money}',2,'{$orderId}','{$username}','代金券过期退款')";
        $inserRes =mysqli_query($conn,$sql);
    }



}