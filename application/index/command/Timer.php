#!/usr/bin/php -q
<?php
$servername = '10.20.1.171';
$username = 'root';
$password = 'root';
$dbname = 'tpadmin';

$conn = mysqli_connect($servername, $username, $password, $dbname) or die("连接失败：$conn->connect_error");
$user_query = "SELECT id,openid,nickname,create_time,score,birthday FROM fy_customer WHERE isdelete=0";
$user_result = mysqli_query($conn, $user_query);
$lottery_query = "SELECT * FROM fy_lottery WHERE isdelete=0 and status=1";
$lottery_result = mysqli_query($conn, $lottery_query);

if ($user_result->num_rows > 0) {

    while ($row = $user_result->fetch_assoc()) {

        //获取用户的id和创建时间
        $id = $row['id'];
        $openid = $row['openid'];
        $nickname = $row['nickname'];
        $create_time = $row['create_time'];
        $score = $row['score'];
        $birthday = $row['birthday'];

        //计算时间差（年）
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

        //计算当前时间与清零时间的时间差（单位：分钟）
        $now_empty_sub = ($now_time - $empty_time) / 60;
        if ($now_empty_sub > 0 && $now_empty_sub < 1) {
            //清零积分
            $update_query = "UPDATE fy_customer SET score=0 WHERE id=$id";
            mysqli_query($conn, $update_query);
            echo $nickname . '的积分已请';
            //新增score日志记录
            $score = -$score;
            $insert_query = "INSERT INTO fy_score_log (uid,source_id,source,score,time) VALUES ($id,0,10,$score,$now_time)";
            if (! mysqli_query($conn, $insert_query)) {
                die('Error: ' . mysqli_error($conn));
            }
        }

        //计算提醒时间
        $remind_time = $empty_time - 60 * 60 * 24 * 30;

        //计算当前时间与提醒时间的时间差（单位：分钟）
        $now_remind_sub = ($now_time - $remind_time) / 60;
        if ($now_remind_sub > 0 && $now_remind_sub < 1) {
            echo $nickname . ',您的积分将于1个月后清零';
        }

        //计算生日日期
        $birthday_int = strtotime($birthday);
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
            if ($now_birth_hour == 0 && $now_birth_minutes == 0 && $now_birth_seconds = 1) {
                //将需要发放的礼包消息发送状态设为1
                $message_query = "SELECT m.*,l.type,l.expire_start_date,l.expire_end_date FROM fy_message m JOIN  fy_lottery l
WHERE m.lottery_id=l.id AND m.status=1 AND m.isdelete=0 AND m.is_send=0 AND l.type=5 AND l.status=1 AND grant_start_date<$now_time AND grant_end_date>$now_time";
                $message_list = mysqli_query($conn, $message_query);
                foreach ($message_list as $item) {
                    $message_id = $item['id'];
                    $message_update_query = "UPDATE fy_message SET is_send=1 WHERE id=$message_id";
                    if (!mysqli_query($conn, $message_update_query)) {
                        die('Error: ' . mysqli_error($conn));
                    }
                    //给生日为一周后的用户推送礼包消息
                    $message_user_insert_query = "INSERT INTO fy_message_user (uid,openid,message_id,create_time)  VALUES ($id,'".$openid."',$message_id,$now_time)";
                    if (!mysqli_query($conn, $message_user_insert_query)) {
                        die('Error: ' . mysqli_error($conn));
                    }
                    echo "$nickname,礼包已经发送了，快去领取吧";
                }

            }
        }
//        $date_create_time = date('Y-m-d H:i:s', $create_time);
//        $date_now_time = date('Y-m-d H:i:s', $now_time);
//        $date_empty_time = date('Y-m-d H:i:s', $empty_time);
//        $date_remind_time = date('Y-m-d H:i:s', $remind_time);
//        echo "===============";
//        echo "ID:$id<br/>";
//        echo "昵称:$nickname<br/>";
//        echo "差(月）:$now_birth_month<br/>";
//        echo "差(日）:$now_birth_day<br/>";
//        echo "差(时）:$now_birth_hour<br/>";
//        echo "差(分）:$now_birth_minutes<br/>";
//        echo "差(秒）:$now_birth_seconds<br/>";
//        echo "积分:$score<br/>";
//        echo "创建时间:$date_create_time<br/>";
//        echo "当前时间:$date_now_time<br/>";
//        echo "提醒时间:$date_remind_time<br/>";
//        echo "时间差（提醒分钟）:$now_remind_sub<br/>";
//        echo "清零时间:$date_empty_time<br/>";
//        echo "时间差（清零分钟）:$now_empty_sub<br/>";
//        echo "===============";
    }
}
$conn->close();

?>

