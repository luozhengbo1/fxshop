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

use think\Cache;
use think\Db;
use think\Log;
use think\Session;

class LoginLog
{

    public function run(&$params)
    {
        if ($params && !Cache::get($params['openid'])) {
            $time = date('Y-m-d H:i:s', time());
            Db::table('fy_customer_login_log')->insert([
                'uid' => $params['uid'],
                'openid' => $params['openid'],
                'login_ip' => $params['login_ip'],
                'login_time' => $time,
            ]);
            //30分钟内多次访问/刷新首页，只计算为一次访问
           $cache= Cache::set($params['openid'], '1', 10*60);
           if(!$cache){
               Log::write("缓存写入失败", 'warring');
           }
        }
    }
}