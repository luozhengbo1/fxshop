<?php

namespace app\index\controller;

use Org\Util\Wehcat;
use think\Controller;
use think\Db;
use think\Request;
use think\Config;

Class MustLogin extends Controller
{
    protected  $userInfo;
    public function __construct()
    {
        parent::__construct();
        $sessionUserInfo = \think\Session::get('wx_user');
//        dump($sessionUserInfo);die;
        $redirtUrl =urldecode(myUrl()) ;
        $parData = explode('=',strchr($redirtUrl,'uid'));
        \think\Session::set('pid',isset($parData[1])?$parData[1]:'');
        if (empty($sessionUserInfo['openid'])  ) {
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
        $time = time();
        $this->view->assign('currentTime',  $time);
        $this->assign('carNum', $carNum);

        #微信分享
        $localUrl = 'http://'.$_SERVER['HTTP_HOST'].':'.$_SERVER['SERVER_PORT']."/index.php/index/index/index?uid={$user['id']}";
//       http://blog.istiny.cc/index.php/index/index/index/uid/153
        $data=[
            'linkurl'=>$localUrl,
            'img'=>'http://'.$_SERVER['HTTP_HOST'].':'.$_SERVER['SERVER_PORT'].'/pic/uploads/20180815/e554024d8505052d6bb4deaaa2c23a03.png',
            'des'=>'秭归有机质商城各类商品即将上线完毕，商品类型多种多样，欢迎各位会员体验购买！'
        ];
        $this->view->assign('fxData',$data);
        $appid =Config::get('app_id');
        $appSecret =Config::get('app_secret');
        $jssdk = new Jssdk($appid,$appSecret);
        $signPackage = $jssdk->GetSignPackage();
        $this->view->assign('wx',$signPackage);
        $this->view->assign('wxShare',$this->view->fetch('Public/wxShare'));
    }

}
