#!/usr/bin/php -q
<?php
$servername = '10.20.1.171';
$username = 'root';
$password = 'root';
$dbname = 'tpadmin';

$conn = mysqli_connect($servername, $username, $password, $dbname) or die("连接失败：$conn->connect_error");
$query = "SELECT id,nickname,create_time,score FROM fy_customer WHERE isdelete=0";
$query_result = mysqli_query($conn, $query);

if ($query_result->num_rows > 0) {

    while ($row = $query_result->fetch_assoc()) {

        //获取用户的id和创建时间
        $id = $row['id'];
        $nickname = $row['nickname'];
        $create_time = $row['create_time'];
        $score = $row['score'];

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
            $time = time();
            $insert_query = "INSERT INTO fy_sign_log ('uid','source_id','source','score','time') VALUES ($id,0,10,$score,$time)";
            mysqli_query($conn, $insert_query);
        }

        //计算提醒时间
        $remind_time = $empty_time - 60 * 60 * 24 * 30;

        //计算当前时间与提醒时间的时间差（单位：分钟）
        $now_remind_sub = ($now_time - $remind_time) / 60;
        if ($now_remind_sub > 0 && $now_remind_sub < 1) {
            echo $nickname . ',您的积分将于1个月后清零';
        }


        $date_create_time = date('Y-m-d H:i:s', $create_time);
        $date_now_time = date('Y-m-d H:i:s', $now_time);
        $date_empty_time = date('Y-m-d H:i:s', $empty_time);
        $date_remind_time = date('Y-m-d H:i:s', $remind_time);
        echo "===============";
        echo "ID:$id<br/>";
        echo "昵称:$nickname<br/>";
        echo "积分:$score<br/>";
        echo "创建时间:$date_create_time<br/>";
        echo "当前时间:$date_now_time<br/>";
        echo "提醒时间:$date_remind_time<br/>";
        echo "时间差（提醒分钟）:$now_remind_sub<br/>";
        echo "清零时间:$date_empty_time<br/>";
        echo "时间差（清零分钟）:$now_empty_sub<br/>";
        echo "===============";
    }
}
$conn->close();

?>

