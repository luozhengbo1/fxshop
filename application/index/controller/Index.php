<?php
namespace app\index\controller;
use think\Controller;
class Index extends Mustlogin
{
    public function index()
    {
        #获取轮播图数据
        $sildeShow =  new  Sildeshow($num=6);
        $getSildeShow = $sildeShow->getSildeShow();
        $this->view->assign('sildeShow',$getSildeShow);
        #功能模块
        $modular = new Modular($num=5);
        $getModular = $modular->getModular();
        $this->view->assign('modular',$getModular);
        $this->view->assign('titleName', "泛亚商城");
       /* dump($getSildeShow);*/
       /* dump($getModular);*/
       /* die;*/
        return $this->fetch();
    }
    public function message(){
        $this->assign('titleName', "个人消息 ");
        return $this->view->fetch();
    }
    public function goodssearch(){
        $this->assign('titleName', "商品搜索");
        return $this->view->fetch();
    }
    public function announce(){
        $this->assign('titleName', "商城公告");
        return $this->view->fetch();
    }
    public function rushpurchase(){
        $this->assign('titleName', "限时抢购");
        return $this->view->fetch();
    }
    public function goodspoints(){
        $this->assign('titleName', "积分商城");
        return $this->view->fetch();
    }
    public function sort(){
        $this->assign('titleName', "商品分类");
        return $this->view->fetch();
    }
    public function product(){
        $this->assign('titleName', "商品详情");
        return $this->view->fetch();
    }
    public function affirmorder(){
        $this->assign('titleName', "确认订单");
        return $this->view->fetch();
    }
    public function addresslist(){
        $this->assign('titleName', "地址列表");
        return $this->view->fetch();
    }
    public function addaddress(){
        $this->assign('titleName', "收货地址");
        return $this->view->fetch();
    }
    public function goodscar(){
        $this->assign('titleName', "购物车");
        return $this->view->fetch();
    }
    public function customer(){
        $this->assign('titleName', "会员中心");
        return $this->view->fetch();
    }
    public function myset(){
        $this->assign('titleName', "设置");
        return $this->view->fetch();
    }
    public function orderlist(){
        $this->assign('titleName', "我的订单");
        return $this->view->fetch();
    }
    public function mysign(){
        $this->assign('titleName', "签到");
        return $this->view->fetch();
    }
    public function evaluatelist(){
        $this->assign('titleName', "商品评价");
        return $this->view->fetch();
    }
    public function goodscollect(){
        $this->assign('titleName', "收藏夹");
        return $this->view->fetch();
    }
    public function mywallet(){
        $this->assign('titleName', "我的钱包");
        return $this->view->fetch();
    }
    public function myactivity(){
        $this->assign('titleName', "我的活动中心");
        return $this->view->fetch();
    }
    public function mycardvoucher(){
        $this->assign('titleName', "卡券中兴");
        return $this->view->fetch();
    }
    public function vouchermarket(){
        $this->assign('titleName', "券集市");
        return $this->view->fetch();
    }

    public function demo(){
        return $this->view->fetch();
    }

}


