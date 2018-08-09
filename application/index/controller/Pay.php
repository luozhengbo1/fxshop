<?php
namespace app\index\controller;
use think\Controller;
use think\Session;
use think\Db;
class Pay extends  Mustlogin
{
    public function index()
    {
        $orderId = $this->request->param('order_id');
        $flag= $this->request->param('flag');
        if(!$flag){
            if($orderId){
                $order = Db::name('order_all')->where(['order_id'=>$orderId])->find();
                if(!$order){
                    $order =  Db::name('order')->where(['order_id'=>$orderId])->find();
                }
            }
        }else{
            if($orderId){
                $order = Db::name('lottery_log')->where(['order_id'=>$orderId])->find();
            }
        }
//        dump($order);die;
        $this->assign('total',$order['total_price']);
        $this->assign('flag',$flag?$flag:'');
        $wx_user = Session::get('wx_user');
        $this->assign('titleName', "微信支付 ");
        Session::set('storeData'.$wx_user['openid'],'');
//        dump( Session::get('storeData'.$wx_user['openid']));die;
        return $this->fetch();
    }



}


