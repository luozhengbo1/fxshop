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

    public function demo()
    {
        $this->assign('titleName', "demo");
        return $this->view->fetch();
    }

}


