<?php

namespace app\index\controller;

use think\Controller;
use think\Db;

class Timer
{
    #定时的去提醒用户收货
    public function checkOrderGoodsSureGet()
    {
        $time = time(); #7天做一个提醒 大于6天小于7天做一次提醒 提醒过的用户记录一下  15天自动收货
        $day7 = 24*60*60*7;
        $day6 = 24*60*60*6;
        #$send_time  > time()-$day7 ;
        #$send_time < time()-  $day6;
        $goods = Db::name('order_goods')
            ->where([
                'is_send'=>1,
                'send_time'=>['between',[ time()-$day7 , time()-  $day6] ],
                'remind_get'=>0
            ])->select();
        include_once APP_PATH ."/index/controller/sendMsg/SDK/WeiXin.php";
        $wx = new \WeiXin();
//        dump($goods);
        foreach ($goods as $v){
            $v['goods_detail'] = json_decode($v['goods_detail'],true);
            $wx->sure($v['goods_detail']['name'],$v['openid'],$v['order_id']);
            Db::name('order_goods')
                ->where(['id'=>$v['id']])->update(['remind_get'=>1]);
        }
    }


}


