<?php 
    #0未支付1已支付2待评价，3待回复，4,待退款 5部分退款，6全部退款，7取消订单，8订单完成
	#思路没确认收货的商品两周自动确认收货
    # 将订单中的商品都确认收货，把订单修改为完成 、
    #查询确认收货的订单 将部分退款、 全部退款、   订单完成 结算给商户
//    $servername = 'db.istiny.cc';
//    $username = 'lzb';
//    $password = '123456';
//    $dbname = 'tpadmin';
include_once 'dbConfig.php';
    $conn = mysqli_connect($servername, $username, $password, $dbname) or die("连接失败：$conn->connect_error");
    $send_time_two_week = time()-24*60*60*7*2;
    $sql = "select * from fy_order_goods where is_send=1 and send_time<{$send_time_two_week}";#发货的两周自动确认
    $result = mysqli_query($conn,$sql);
    if ( $result->num_rows > 0) {
        while ($row = $result->fetch_assoc()){
           #将符合条件的修改为已收货
            $update = "update fy_order_goods set is_send = 2 where id={$row['id']} ";
            mysqli_query($conn,$update);
            #检查这个订单是否还有没有确认收货的商品，如果都确认了或者退货了将这个订单号修改为完成
            $checkSql= "select * from fy_order_goods where order_id='{$row['order_id']}'";
            $checkResult = mysqli_query($conn,$checkSql);
            if( $checkResult->num_rows > 0){
               $arr = mysqli_fetch_all($checkResult,MYSQLI_ASSOC);
               $newarr =  array_column($arr,'is_send');
               $count = count($newarr);
               $i =0;
               foreach ($newarr as $value){
                   if($value==2 || $value==4 || $value==5 || $value==6){#收货的，退货的，待回复的，6完成的
                       #0未发货1已发货，2待评价。3退款中，4退款完成,,5待回复，6完成,7退货退款中
                       $i+=1;
                   }
               }
               if( $i==$count ){#表示该订单已经完成
                   $updateOrderSql = "update fy_order set order_status=8 where order_id="."'".$row['order_id']."'";
                   $res  = mysqli_query($conn,$updateOrderSql);
               }

            }

        }
    }
    #查询订单  部分退款、 全部退款、   订单完成 结算给商户
    $orderSql="select * from fy_order  where pay_status=1 and order_status=8 and is_settlement=0 ";
    $orderResult = mysqli_query($conn,$orderSql);
    if ( $orderResult->num_rows > 0) {
        while ($row1 = $orderResult->fetch_assoc()){
            #结算金额
            if($row1['is_settlement']!=1){
                $settMoney = $row1['total_price']-$row1['return_price_all'];
                $setUserSql = "update fy_admin_user set balance=balance+'{$settMoney}' where id={$row1['user_id']}";
                mysqli_query($conn,$setUserSql);
                #将结算订单修改城已经结算
                $setsql = "update fy_order set is_settlement=1 where id={$row1['order_id']}";
                mysqli_query($conn,$setsql);
            }

        }
    }
