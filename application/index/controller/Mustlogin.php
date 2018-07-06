<?php

namespace app\index\controller;

use Org\Util\Wehcat;
use think\Controller;
use think\Db;
use think\Request;

Class MustLogin extends Controller
{
    public function __construct()
    {
        parent::__construct();
        $userInfo = \think\Session::get('wx_user');
        if (empty($userInfo['openid'])) {
            $this->redirect(substr(url('Wechat/wxLogin', ['state' => myUrl()]), 0, -5));
        }
        $this->isEliminateScore();
    }

    //超过两年清零会员积分
    public function isEliminateScore()
    {
        $user = session('wx_user');
        $openid = $user['openid'];
        $customer_data = Db::table('fy_customer')->where('openid', $openid)->find();
        $id = $customer_data['id'];
        $name = $customer_data['nickname'];
        //根据当前时间与会员创建时间的时间差是否为偶数年清零积分
        $now_time = time();
        $create_time = $customer_data['create_time'];
        $time_difference = ($now_time - strtotime($create_time)) / (60 * 60 * 24 * 365);
        $result = $time_difference % 2;
        //判断创建时间是否为过去的某一天
        if ($time_difference >= 0) {
            //判断时间差是否为偶数
            if (!$result) {
                Db::table('fy_customer')->where('id', $id)->setField('score', 0);
//                echo $customer_data['nickname'] . '积分已经清零';
//                die;
            }
        }
    }
}
