<?php
//
//$host ="db.istiny.cc";
//$user ="lzb";
//$pass ="123456";
//$dbname ="tpadmin";
include_once 'dbConfig.php';
$con = mysqli_connect($host,$user,$pass,$dbname) or die(mysqli_connect_error());
$sql ="delete from fy_file ";
$res = mysqli_query($con,$sql);

#删除