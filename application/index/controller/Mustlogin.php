<?php

namespace app\index\controller;

use Org\Util\Wehcat;
use think\Controller;
use think\Db;
use think\Request;

Class MustLogin extends Controller
{
    protected  $userInfo;
    public function __construct()
    {
        parent::__construct();
        $sessionUserInfo = \think\Session::get('wx_user');
//        dump($sessionUserInfo);
        if (empty($sessionUserInfo['openid'])) {
            $this->redirect(substr(url('Wechat/wxLogin', ['state' => myUrl()]), 0, -5));
        }
        $user = Db::name('customer')->where(['openid'=>$sessionUserInfo['openid']])->find();
        $this->userInfo =$user ?$user:$sessionUserInfo;
        $this->view->assign('param', $this->request->param('param'));
        //会员收藏数量
        $car = Db::table('fy_car')
            ->where([
                'openid'=>$this->userInfo['openid'],
                'status'=> 1
            ])
            ->select();
        $carNum=0;
        foreach ($car as $k=>$v){
            $carNum +=$v['goods_num'];
        }
        if($carNum>999) $carNum=$carNum+'+';
        $this->assign('carNum', $carNum);
    }
}
