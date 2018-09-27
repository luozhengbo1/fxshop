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
    $conn = mysqli_connect($host, $user, $pass, $dbname) or die("连接失败：$conn->connect_error");
    $send_time_two_week = time()-24*60*60*7*2;
//    $send_time_two_week = time()-8*60;
    $time =time();
    $sql = "select * from fy_order_goods where is_send=2 and send_time<{$send_time_two_week}";#发货的两周自动确认
    $result = mysqli_query($conn,$sql);
    if ( $result->num_rows > 0) {
        while ($row = $result->fetch_assoc()){
           #将符合条件的修改为已收货
            $update = "update fy_order_goods set is_send = 2 ,get_goods_time={$time} where id={$row['id']} ";
            mysqli_query($conn,$update);
        }
    }
    #已经评论的商品 确认收货不评价一周内自动完成
    $flagTime = time()-24*60*60*7*1;
    $sqls = "select * from fy_order_goods where is_send=2 or is_send=5";
    $results = mysqli_query($conn,$sqls);
    if ( $results->num_rows > 0) {
        while ($row = $results->fetch_assoc()){
            #将符合条件的修改为已收货

            if($row['get_goods_time']< $flagTime){#將这个单改成完成
                $updates = "update fy_order_goods set is_send = 6 where id={$row['id']} ";
                $res= mysqli_query($conn,$update);

            }
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
                        #0未发货1已发货，2待评价。3退款中，4退款完成,,5待回复，6完成,7退货退款
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
    #将完成的订单商品进行结算
    $flagTime = time()-24*60*60*7;
//    $flagTime = time()-8*60;
    $sqls = "select * from fy_order_goods where is_send=2 or is_send=5";
    $results = mysqli_query($conn,$sqls);
    if ( $results->num_rows > 0) {
        while ($row = $results->fetch_assoc()){
            #将符合条件的修改为已收货
            if($row['get_goods_time']< $flagTime){#將这个单改成完成
                $updates = "update fy_order_goods set is_send = 6 where id={$row['id']} ";
                mysqli_query($conn,$updates);
            }

        }
    }
    #发货的两周自动确认


    #查询订单  部分退款、 全部退款、   订单完成 分批结算给商户
    #结算给商户
    $orderSql="select * from fy_order_goods  where is_send=6 ";
    $orderResult = mysqli_query($conn,$orderSql);
    if ( $orderResult->num_rows > 0) {
        while ($row1 = $orderResult->fetch_assoc()){
            #查询当前用户结算金额超过88元成为会员
            $isMemberSql = "select * from fy_order_goods  where is_send=6 and openid='".$row1['openid']."'";
//            echo $isMemberSql;
            $isMemberResult = mysqli_query($conn,$isMemberSql);
            if( $isMemberResult->num_rows > 0){
                $userOrderAll =mysqli_fetch_all($isMemberResult,MYSQLI_ASSOC);
//                var_dump($userOrderAll);
                $currentUserTotalPrice = array_sum(array_column($userOrderAll,'real_pay_price'));
            }
            #将分销商进行分成
            $sqlselect = "select * from fy_customer where openid='".$row1['openid']."'";
            $reUser = mysqli_query($conn,$sqlselect);
            if($reUser->num_rows>0 ){
                $user = mysqli_fetch_assoc($reUser);
            }
            #大于88元成为会员
            if($currentUserTotalPrice>=88){
                if($user['is_member']!=1 ){
                    $sqlUserMemberSql  = "update fy_customer set is_member=1,fx_money=fx_money+8.8 ,fx_total_money=fx_total_money+8.8 where openid='".$row1['openid']."'";
                    $updateMemberRes = mysqli_query($conn,$sqlUserMemberSql);
                    $fxMoneyNew =8.8;
                    $inSqlnew = "insert into fy_fx_user_log(create_time, get_user_id,get_user_openid,get_user_name,source_user_id,source_user_openid,source_user_name,order_id,money,total_price,rate)  ";
                    $insertvalueNew="VALUES({$time},{$user['id']},'".$user['openid']."', '".$user['nickname']."' ,{$user['id']}, '".$user['openid']."', '".$user['nickname']."',  '".$row1['order_id']."' ,'".$fxMoneyNew."' ,'88','10')";
                    $inSqlnew .=$insertvalueNew;
                    mysqli_query($conn,$inSqlnew);
                }
            }

            #结算金额
            if($row1['is_settlement']!=1 && ($row1['get_goods_time']< $flagTime ) ){
                $settMoney = $row1['real_pay_price'];
                $setUserSql = "update fy_admin_user set balance=balance+'{$settMoney}' where id={$row1['user_id']}";
                mysqli_query($conn,$setUserSql);
                #将结算订单修改城已经结算
                $setsql = "update fy_order_goods set is_settlement=1 where id={$row1['id']}";
                mysqli_query($conn,$setsql);
                #查询当前用户是否是会员
                $sqlUser ="SELECT T2.id, T2.openid,T2.nickname,T2.fx_money,T2.is_member,T2.fx_total_money FROM (   
                SELECT  @r AS _id,  (SELECT @r := pid  FROM  fy_customer WHERE id = _id) AS pid,   
                @l := @l + 1 AS lvl   FROM    (SELECT @r := ".$user['id'] ." , @l := 0) vars,   
               fy_customer h   WHERE @r <> 0) T1 JOIN fy_customer T2   ON T1._id = T2.id  ORDER BY T1.lvl ASC  limit 4";
                $uesrParentListRes =mysqli_query($conn,$sqlUser);
                if($uesrParentListRes->num_rows > 0){
                    $parUserList =  mysqli_fetch_all($uesrParentListRes,MYSQLI_ASSOC);
                }
                array_shift($parUserList);
//                array_pop($parUserList);
                $sqlfx = "select * from fy_fx_set where status=1 limit 1" ;
                $fxres = mysqli_query($conn, $sqlfx);
                if($fxres->num_rows>0){
                    $fxdata = mysqli_fetch_assoc($fxres);
                }
                if($fxdata){
                    $first = $fxdata['first']*$row1['real_pay_price']/100;
                    $second = $fxdata['second']*$row1['real_pay_price']/100;
//                    $three = $fxdata['three']*$row1['real_pay_price']/100;
                }
//                var_dump($parUserList);
                $time =time();
                $inSql = "insert into fy_fx_user_log(create_time, get_user_id,get_user_openid,get_user_name,source_user_id,source_user_openid,source_user_name,order_id,money,total_price,rate) ";
                if( !empty($parUserList[0]['id']) && ($parUserList[0]['is_member']==1)  ){
                    $sqlupdate1= "update fy_customer set fx_money=fx_money+{$first} ,fx_total_money=fx_total_money+{$first} where id={$parUserList[0]['id']}";
                    $res1 = mysqli_query($conn,$sqlupdate1);
                    $insertvalue ="VALUES({$time},{$parUserList[0]['id']},'".$parUserList[0]['openid']."', '".$parUserList[0]['nickname']."' ,{$user['id']}, '".$user['openid']."', '".$user['nickname']."',  '".$row1['order_id']."' ,'".$first."' ,'".$row1['real_pay_price']."','".$fxdata['first']."')";
                    if($res1){
                        $sqlLog1 = "{$inSql} {$insertvalue} ";
//                        echo $sqlLog1;die;
                        $reseee = mysqli_query($conn,$sqlLog1);
                    }

                }
                #只有成为会员可以拿分销提成
                if(!empty($parUserList[1]['id']) && ($parUserList[1]['is_member']==1)  ){
                    $sqlupdate2= "update fy_customer set fx_money=fx_money+{$second} ,fx_total_money=fx_total_money+{$second}  where id={$parUserList[1]['id']}";
                    $res2 = mysqli_query($conn,$sqlupdate2);
                    $insertvalue2 ="VALUES({$time},{$parUserList[1]['id']},'".$parUserList[1]['openid']."', '".$parUserList[1]['nickname']."' ,{$user['id']}, '".$user['openid']."', '".$user['nickname']."',  '".$row1['order_id']."' ,'".$second."' ,'".$row1['real_pay_price']."','".$fxdata['second']."')";
                    if($res2){
                        $sqlLog2 = "{$inSql} {$insertvalue2} ";
                        $reseee = mysqli_query($conn,$sqlLog2);
                    }
                }
                if( !empty($parUserList[2]['id'])  ){
                    $parSql3_5 =  "SELECT T2.id, T2.openid,T2.nickname,T2.fx_money,T2.is_member,T2.fx_total_money FROM (   
                        SELECT  @r AS _id,  (SELECT @r := pid  FROM  fy_customer WHERE id = _id) AS pid,   
                        @l := @l + 1 AS lvl   FROM    (SELECT @r := ".$parUserList[2]['id']." , @l := 0) vars,   
                       fy_customer h   WHERE @r <> 0) T1 JOIN fy_customer T2   ON T1._id = T2.id  ORDER BY T1.lvl ASC  limit 4";
                    $res3_5 = mysqli_query($conn,$parSql3_5);
                    $parUserList3_5 =  mysqli_fetch_all($res3_5,MYSQLI_ASSOC);
                    array_shift($parUserList);
                    if( !empty($parUserList3_5) ){
                        if(!empty($parUserList3_5[0])  && ($parUserList3_5[0]['is_member']==1) ){#如果存在第3节
                            if($parUserList3_5[0]['fx_total_money']>=10000){#累计积分超过10000可以获取1%
                                $fxMoney = $row1['real_pay_price']* 1/100;
                                $updateSql3= "update fy_customer set fx_money=fx_money+{$fxMoney} ,fx_total_money=fx_total_money+{$fxMoney}  where id={$parUserList3_5[0]['id']}";
                                $res3 = mysqli_query($conn,$updateSql3);
                                $insertvalue3 ="VALUES({$time},{$parUserList3_5[0]['id']},'".$parUserList3_5[0]['openid']."', '".$parUserList3_5[0]['nickname']."' ,{$user['id']}, '".$user['openid']."', '".$user['nickname']."',  '".$row1['order_id']."' ,'".$fxMoney."' ,'".$row1['real_pay_price']."','1')";
                                if($res3){
                                    $sqlLog3 = "{$inSql} {$insertvalue3} ";
                                    $rese3 = mysqli_query($conn,$sqlLog3);
                                }
                            }
                        }
                        if(!empty($parUserList3_5[1])   && ($parUserList3_5[1]['is_member']==1) ){#如果存在第4节
                            if($parUserList3_5[1]['fx_total_money']>=10000){#累计积分超过10000可以获取1%
                                $fxMoney4 = $row1['real_pay_price']* 1/100;
                                $updateSql4= "update fy_customer set fx_money=fx_money+{$fxMoney4} ,fx_total_money=fx_total_money+{$fxMoney4}  where id={$parUserList3_5[1]['id']}";
                                $res4 = mysqli_query($conn,$updateSql4);
                                $insertvalue4 ="VALUES({$time},{$parUserList3_5[1]['id']},'".$parUserList3_5[1]['openid']."', '".$parUserList3_5[1]['nickname']."' ,{$user['id']}, '".$user['openid']."', '".$user['nickname']."',  '".$row1['order_id']."' ,'".$fxMoney4."' ,'".$row1['real_pay_price']."','1')";
                                if($res4){
                                    $sqlLog4 = "{$inSql} {$insertvalue4} ";
                                    $rese4 = mysqli_query($conn,$sqlLog4);
                                }

                            }
                        }
                        if(!empty($parUserList3_5[2]) && ($parUserList3_5[2]['is_member']==1) ){#如果存在第5节
                            if($parUserList3_5[2]['fx_total_money']>=10000){#累计积分超过10000可以获取1%
                                $fxMoney5 = $row1['real_pay_price']* 1/100;
                                $updateSql5= "update fy_customer set fx_money=fx_money+{$fxMoney5} ,fx_total_money=fx_total_money+{$fxMoney5}  where id={$parUserList3_5[2]['id']}";
                                $res5 = mysqli_query($conn,$updateSql5);
                                $insertvalue5 ="VALUES({$time},{$parUserList3_5[2]['id']},'".$parUserList3_5[2]['openid']."', '".$parUserList3_5[2]['nickname']."' ,{$user['id']}, '".$user['openid']."', '".$user['nickname']."',  '".$row1['order_id']."' ,'".$fxMoney5."' ,'".$row1['real_pay_price']."','1')";
                                if($res5){
                                    $sqlLog5 = "{$inSql} {$insertvalue5} ";
                                    $rese5 = mysqli_query($conn,$sqlLog5);
                                }

                            }

                        }
                    }
                }

            }

        }
    }




