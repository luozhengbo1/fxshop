<?php
namespace app\index\controller;
use think\Controller;
class Pay extends  Controller
{
    public function index()
    {
        $this->assign('titleName', "微信支付 ");

        return $this->fetch();
    }

}

