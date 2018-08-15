<?php

namespace app\index\controller;

use think\Cache;
use think\Controller;
use think\Db;
use think\Hook;
use think\Session;

class Index extends Mustlogin
{
    public function index()
    {
        #查询是否有新人礼包

        $this->userInfo['uid'] = isset($this->userInfo['id'])?$this->userInfo['id']:'';
        $giftBagLog = Db::name('gift_bag_log')->where(['openid'=> $this->userInfo['openid'],'status'=>0,'gift_bag_id'=>3])->find();
        $lotteryList=[];
        if($giftBagLog){#未发放
            $giftBag = Db::name('gift_bag')->where(['id'=>$giftBagLog['gift_bag_id']])->find();
            if( trim($giftBag['lottery_id']) ){
               $lotteryId = explode(',', trim($giftBag['lottery_id']));
               foreach ($lotteryId as $vId){
                   $lotteryList[] = Db::name('lottery')->where(['id'=>$vId])->find();
               }
            }
        }
//        $giftBagLog = Db::name('gift_bag_log')->where(['openid'=> $this->userInfo['openid'],'gift_bag_id'=>3])->update(['status'=>1]);
        Hook::exec('app\\index\\behavior\\LoginLog', 'run',  $this->userInfo);
        #获取轮播图数据
        $sildeShow = new  Sildeshow($num = 6);
        $getSildeShow = $sildeShow->getSildeShow();
        $this->view->assign('sildeShow', $getSildeShow);
        #功能模块
        $modular = new Modular($num = 5);
        $getModular = $modular->getModular();
        $this->view->assign('modular', $getModular);
        $this->view->assign('lotteryList', $lotteryList);
        $this->view->assign('titleName', "泛亚商城");
        return $this->fetch();
    }

    public function message($page = '1', $size = '4')
    {
        $this->assign('titleName', "个人消息 ");
        return $this->view->fetch();
    }

    public function demo()
    {
        $this->assign('titleName', "demo");
        return $this->view->fetch();
    }

}


