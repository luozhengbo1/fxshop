#!/usr/bin/php -q
<?php
$servername = 'db.istiny.cc';
$username = 'lzb';
$password = '123456';
$dbname = 'tpadmin';
$conn = mysqli_connect($servername, $username, $password, $dbname) or die("连接失败：$conn->connect_error");
$expre =time()-1800;
$query = "SELECT id,order_id,create_time FROM fy_order WHERE pay_status=0 and order_status=0";
$query_result = mysqli_query($conn, $query);
if ($query_result->num_rows > 0) {
    while ($row = $query_result->fetch_assoc()) {
        //获取用户的id和创建时间
        if($row['create_time'] < $expre){
            $update = "update fy_order set order_status=7 where id={$row['id']}";
            $res = mysqli_query($conn, $update);
        }
        #将订单修改为失效
    }
}
$conn->close();

?>

