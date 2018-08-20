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
        $this->userInfo['uid'] = isset($this->userInfo['id'])?$this->userInfo['id']:'';
        Hook::exec('app\\index\\behavior\\LoginLog', 'run',  $this->userInfo);
        #获取轮播图数据
        $sildeShow = new  Sildeshow($num = 6);
        $getSildeShow = $sildeShow->getSildeShow();
        $this->view->assign('sildeShow', $getSildeShow);
        #功能模块
        $modular = new Modular($num = 5);
        $getModular = $modular->getModular();
        $this->view->assign('modular', $getModular);
        $this->view->assign('titleName', "泛亚商城");
        return $this->fetch();
    }

    public function message($page = '1', $size = '4')
    {
        $this->assign('titleName', "个人消息 ");
        return $this->view->fetch();
    }
    public function newCustomerGiftBag($gift_bag_id=3)
    {
        #查询是否有新人礼包
        $lotteryList=  $this->giftCommon(3);
        return ajax_return($lotteryList,'ok',200);
    }
    public function giftCommon($gift_bag_id=3)
    {
        $giftBagLog = Db::name('gift_bag_log')->where(['openid'=> $this->userInfo['openid'],'status'=>0,'gift_bag_id'=>$gift_bag_id])->find();
        $lotteryList=[];
        if($giftBagLog){#未发放
            $giftBag = Db::name('gift_bag')->where(['id'=>$giftBagLog['gift_bag_id']])->find();
            if( trim($giftBag['lottery_id']) ){
                $lotteryId = explode(',', trim($giftBag['lottery_id']));
                foreach ($lotteryId as  $k=>$vId){
                    $lottery = Db::name('lottery')->where(['id'=>$vId])->find();
                    $lotteryList[$k] =  $lottery ;
                    $insert =[ 'addtime'=>time(),
                        'lottery_id'=>$vId,
                        'lottery_name'=>$lottery['name'],
                        'lottery_num'=>1,
                        'status'=>1,
                        'openid'=>$this->userInfo['openid'],
                        'lottery_info'=>json_encode($lottery)];
                    $lotteryList[$k]['lotteryLog'] =  $insert ;
                    Db::name('lottery_log')->insert($insert);
                }
            }
        }
        $giftBagLog = Db::name('gift_bag_log')->where(['openid'=> $this->userInfo['openid'],'gift_bag_id'=>$gift_bag_id])->update(['status'=>1]);
        return $lotteryList;
    }
    public function birthdayCustomerGiftBag($gift_bag_id=2)
    {
        if($this->request->isAjax()){
            #青铜之上
            if($this->userInfo['experience']>1999){
                $lotteryList = $this->giftCommon(2);
                return ajax_return($lotteryList,'ok',200);
            }
        }
        #不同等级得到不同积分。
    }

}


