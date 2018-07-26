<?php
/**
 * Created by PhpStorm.
 * User: liang
 * Date: 2018/7/26
 * Time: 9:00
 */

/**
 * 前端访问日志行为类
 */

namespace app\index\behavior;

use think\Db;
use think\Session;

class LoginLog
{

    public function run()
    {
        $user_session = Session::get('wx_user');
        $user_data = Db::table('fy_customer')->where('openid', $user_session['openid'])->find();
        $time = time();
        Db::table('fy_customer_login_log')->insert([
            'uid' => $user_data['id'],
            'openid' => $user_session['openid'],
            'login_ip'=>$user_session['login_ip'],
            'login_time' => $time,
        ]);
    }
}