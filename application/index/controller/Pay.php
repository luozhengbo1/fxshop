<?php
namespace app\index\controller;
use think\Controller;
use think\Session;
class Pay extends  Mustlogin
{
    public function index()
    {
        $wx_user = Session::get('wx_user');
        $this->assign('titleName', "微信支付 ");
        Session::set('storeData'.$wx_user['openid'],'');
//        dump( Session::get('storeData'.$wx_user['openid']));die;
        return $this->fetch();
    }



}


