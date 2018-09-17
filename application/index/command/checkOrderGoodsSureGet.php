<?php
//$servername = '127.0.0.1';
//$username = 'root';
//$password = 'root';
//$dbname = 'tpadmin';
$reas = include_once 'dbConfig.php';
$conn = mysqli_connect($host, $user, $pass, $dbname) or die("连接失败：$conn->connect_error");
$time = time(); #7天做一个提醒 大于6天小于7天做一次提醒 提醒过的用户记录一下  15天自动收货
$day7 = 24*60*60*7;
$day6 = 24*60*60*6;
$send_time  = $time-$day7 ;
$send_time1 = $time-  $day6;
$query = "select * from fy_order_goods  where is_send=1  and send_time between  $send_time  and $send_time1 and remind_get=0";
//echo $query;
$query_result = mysqli_query($conn, $query);
include_once  __DIR__."/../controller/sendMsg/SDK/WeiXin.php";
if ($query_result->num_rows > 0) {
    while ($row = $query_result->fetch_assoc()) {
        //获取用户的id和创建时间
        $update = "update fy_order_goods set remind_get=1 where id={$row['id']}";
        $row['goods_detail'] = json_decode($row['goods_detail'],true);
        $wx = new \WeiXin();
        $wx->sure($row['goods_detail']['name'],$row['openid'],$row['order_id']);
        $res = mysqli_query($conn, $update);
    }
}
$conn->close();
