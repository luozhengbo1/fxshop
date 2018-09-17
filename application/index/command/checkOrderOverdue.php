#!/usr/bin/php -q
<?php
//$servername = '127.0.0.1';
//$username = 'root';
//$password = 'root';
//$dbname = 'tpadmin';
$reas = include_once 'dbConfig.php';
$conn = mysqli_connect($host, $user, $pass, $dbname) or die("连接失败：$conn->connect_error");
$expre =time()-600;
$query = "SELECT id,order_id,create_time FROM fy_order WHERE pay_status=0 and order_status=0";
$query_result = mysqli_query($conn, $query);
if ($query_result->num_rows > 0) {
    while ($row = $query_result->fetch_assoc()) {
        //获取用户的id和创建时间
        if($row['create_time'] < $expre){
            $update = "update fy_order set order_status=7 where id={$row['id']}";
            $res = mysqli_query($conn, $update);
            $orderGoodsSql = "select * from fy_order_goods where order_id='{$row['order_id']}'";
            $orderGoodsRes =  mysqli_query($conn,$orderGoodsSql);
//             var_dump($orderGoodsRes);
            while ($rowSon =$orderGoodsRes->fetch_assoc() ){
                $orderGoodsSqlSon = "update  fy_goods_attribute set store=store+{$rowSon['goods_num']}  where id='{$rowSon['sku_id']}'";
                $resa =mysqli_query($conn,$orderGoodsSqlSon);
//                var_dump($rowSon);
            }
        }
        #将订单修改为失效
    }
}
$conn->close();

?>

