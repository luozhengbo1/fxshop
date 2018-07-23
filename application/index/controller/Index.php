<?php

namespace app\index\controller;

use think\Controller;
use think\Db;

class Index extends Mustlogin
{
    public function index()
    {
        #获取轮播图数据
        $sildeShow = new  Sildeshow($num = 6);
        $getSildeShow = $sildeShow->getSildeShow();
        $this->view->assign('sildeShow', $getSildeShow);
        #功能模块
        $modular = new Modular($num = 5);
        $getModular = $modular->getModular();
        $this->view->assign('modular', $getModular);
        $this->view->assign('titleName', "泛亚商城");
        /* dump($getSildeShow);*/
        /* dump($getModular);*/
        /* die;*/
        $this->view->assign('param', $this->request->param('param'));
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

    public function wxpay()
    {
        $this->assign('titleName', "微信支付");
        return $this->view->fetch();
    }
}


