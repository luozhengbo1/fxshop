#!/usr/bin/php -q
<?php
//$servername = '127.0.0.1';
//$username = 'root';
//$password = 'root';
//$dbname = 'tpadmin';
include_once 'dbConfig.php';
$conn = mysqli_connect($host, $user, $pass, $dbname) or die("连接失败：$conn->connect_error");
$user_query = "SELECT id,openid,nickname,create_time,score,birthday FROM fy_customer WHERE isdelete=0";
$user_result = mysqli_query($conn, $user_query) or die('Error: ' . mysqli_error($conn));;
//$lottery_query = "SELECT * FROM fy_lottery WHERE isdelete=0 and status=1";
//$lottery_result = mysqli_query($conn, $lottery_query) or die('Error: ' . mysqli_error($conn));;

if ($user_result->num_rows > 0) {

    while ($row = $user_result->fetch_assoc()) {

        //获取用户的id和创建时间
        $id = $row['id'];
        $openid = $row['openid'];
        $nickname = $row['nickname'];
        $create_time = $row['create_time'];
        $score = $row['score'];
        $birthday = $row['birthday'];

        //计算当前与用户注册时间的时间差（年）
        $now_time = time();
        $time_sub = ($now_time - $create_time) / (60 * 60 * 24 * 365);

        //计算清零时间
        $intval_time_sub = intval($time_sub);
        if ($intval_time_sub == 0) {
            $empty_time = 60 * 60 * 24 * 365 * 2 + $create_time;
        } elseif ($intval_time_sub % 2) {
            $empty_time = 60 * 60 * 24 * 365 * ($intval_time_sub + 1) + $create_time;
        } else {
            $empty_time = 60 * 60 * 24 * 365 * $intval_time_sub + $create_time;
        }

        //计算当前时间与清零时间的时间差（单位：分钟），若满足清零条件，插入相应的message
        $now_empty_sub = ($now_time - $empty_time) / 60;
        if ($now_empty_sub > 0 && $now_empty_sub < 1) {
            //清零积分
            $update_query = "UPDATE fy_customer SET score=0 WHERE id=$id";
            mysqli_query($conn, $update_query) or die('Error: ' . mysqli_error($conn));
            //新增score日志记录
            $score = -$score;
            $insert_query = "INSERT INTO fy_score_log (uid,openid,source_id,source,score,time) VALUES ($id,'" . $openid . "',0,10,$score,$now_time)";
            mysqli_query($conn, $insert_query) or die('Error: ' . mysqli_error($conn));
            //新增一条清零message
            $message_query = "SELECT id  FROM fy_message WHERE type=2 and isdelete=0";
            $message_list = mysqli_query($conn, $message_query) or die('Error: ' . mysqli_error($conn));;
            $message_array = mysqli_fetch_array($message_list);
            $message_id = $message_array['id'];
            $message_user_insert_query = "INSERT INTO fy_message_user (uid,openid,message_id,create_time)  VALUES ($id,'" . $openid . "',$message_id,$now_time)";
            mysqli_query($conn, $message_user_insert_query) or die('Error: ' . mysqli_error($conn));
        }

        //计算提醒时间
        $remind_time = $empty_time - 60 * 60 * 24 * 30;

        //计算当前时间与提醒时间的时间差（单位：分钟）
        $now_remind_sub = ($now_time - $remind_time) / 60;
        if ($now_remind_sub > 0 && $now_remind_sub < 1) {
            //新增一条清零提醒message
            $message_query = "SELECT id  FROM fy_message WHERE type=1 and isdelete=0";
            $message_list = mysqli_query($conn, $message_query) or die('Error: ' . mysqli_error($conn));;
            $message_array = mysqli_fetch_array($message_list);
            $message_id = $message_array['id'];
            $message_user_insert_query = "INSERT INTO fy_message_user (uid,openid,message_id,create_time)  VALUES ($id,'" . $openid . "',$message_id,$now_time)";
            mysqli_query($conn, $message_user_insert_query) or die('Error: ' . mysqli_error($conn));
        }

        //计算生日日期
        $birthday_int = strtotime($birthday);
   	//$birthday_int =	1534928700;
	$birth_month = date('m', $birthday_int);
        $birth_day = date('d', $birthday_int);
        $birth_hour = date('H', $birthday_int);
        $birth_minutes = date('i', $birthday_int);
        $birth_seconds = date('s', $birthday_int);

        //计算当前时间
        $now_month = date('m', $now_time);
        $now_day = date('d', $now_time);
        $now_hour = date('H', $now_time);
        $now_minutes = date('i', $now_time);
        $now_seconds = date('s', $now_time);

        //计算当前时间与生日时间的时间差
        $now_birth_month = $now_month - $birth_month;
        $now_birth_day = $now_day - $birth_day;
        $now_birth_hour = $now_hour - $birth_hour;
        $now_birth_minutes = $now_minutes - $birth_minutes;
        $now_birth_seconds = $now_seconds - $birth_seconds;
        //判断当前用户是否一周后过生日
        if ($now_birth_month == 0 && $now_birth_day == -7) {
            if ($now_birth_hour == 0 && $now_birth_minutes == 0 && $now_birth_seconds == 1) {
                //生日礼包记录
        //        $message_query = "SELECT * FROM fy_gift_bag WHERE id=3 and isdelete=0  and status=1";
         //       $message_list = mysqli_query($conn, $message_query) or die('Error: ' . mysqli_error($conn));
          //      $message_array = mysqli_fetch_array($message_list);
          //      $message_id = $message_array['id'];
                $message_user_insert_query = "INSERT INTO fy_gift_bag_log (openid,gift_bag_id,create_time,type)  VALUES ('" . $openid . "',2,$now_time,2)";
                mysqli_query($conn, $message_user_insert_query) or die('Error: ' . mysqli_error($conn));
            }
        }
    }
}
$conn->close();

?>

