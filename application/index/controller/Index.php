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
        //监听访问情况
        $user_session = Session::get('wx_user');
        $user_data = Db::table('fy_customer')
            ->field('id')
            ->where('openid', $user_session['openid'])
            ->find();
        $user_session['uid'] = $user_data['id'];
//        if (!$this->request->isAjax()) {
        Hook::exec('app\\index\\behavior\\LoginLog', 'run', $user_session);
//        }
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


