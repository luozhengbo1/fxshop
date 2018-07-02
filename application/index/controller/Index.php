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
        #公告
        $notice = new Notice($num=5);
        $getNotice = $notice->getNotice();
        $this->view->assign('notice',$getNotice);
        $this->assign('titleName', "泛亚商城");
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


    public function  return_evaluate_json()
    {
        $data = "{
                \"lists\":[
                
                    {
                        \"title\":\"Haier海尔 M352L 移动/联通2G 翻盖老人机 2.4英寸屏老人手机 长待机老年机金色0MB非合约机官方标配\",
                        \"pic\":\"http://d8.yihaodianimg.com/N05/M0A/82/F7/CgQI01ZYI-KAMMwzAAFW6ZSR3Tg50500_80x80.jpg\",
                        \"link\":\"#15\",
                        \"date\":\"2015-12-15\"
                    },
                    {
                        \"title\":\"Haier海尔 M352L 移动/联通2G 翻盖老人机 2.4英寸屏老人手机 长待机老年机金色0MB非合约机官方标配\",
                        \"pic\":\"http://d8.yihaodianimg.com/N05/M0A/82/F7/CgQI01ZYI-KAMMwzAAFW6ZSR3Tg50500_80x80.jpg\",
                        \"link\":\"#15\",
                        \"date\":\"2015-12-15\"
                    }
                ]
            }";
        $arr = json_decode($data,true);
        return json($arr);
    }
    public function  return_json()
    {
       $data = "{
                \"lists\":[
                    {
                        \"title\":\"Haier海尔 M352L 移动/联通2G 翻盖老人机 2.4英寸屏老人手机 长待机老年机金色0MB非合约机官方标配\",
                        \"pic\":\"http://d8.yihaodianimg.com/N05/M0A/82/F7/CgQI01ZYI-KAMMwzAAFW6ZSR3Tg50500_80x80.jpg\",
                        \"link\":\"#15\",
                        \"date\":\"2015-12-15\"
                    },
                    {
                        \"title\":\"Haier海尔 M352L 移动/联通2G 翻盖老人机 2.4英寸屏老人手机 长待机老年机金色0MB非合约机官方标配\",
                        \"pic\":\"http://d8.yihaodianimg.com/N05/M0A/82/F7/CgQI01ZYI-KAMMwzAAFW6ZSR3Tg50500_80x80.jpg\",
                        \"link\":\"#15\",
                        \"date\":\"2015-12-15\"
                    },
                    {
                        \"title\":\"Haier海尔 M352L 移动/联通2G 翻盖老人机 2.4英寸屏老人手机 长待机老年机金色0MB非合约机官方标配\",
                        \"pic\":\"http://d8.yihaodianimg.com/N05/M0A/82/F7/CgQI01ZYI-KAMMwzAAFW6ZSR3Tg50500_80x80.jpg\",
                        \"link\":\"#15\",
                        \"date\":\"2015-12-15\"
                    },
                    {
                        \"title\":\"Haier海尔 M352L 移动/联通2G 翻盖老人机 2.4英寸屏老人手机 长待机老年机金色0MB非合约机官方标配\",
                        \"pic\":\"http://d8.yihaodianimg.com/N05/M0A/82/F7/CgQI01ZYI-KAMMwzAAFW6ZSR3Tg50500_80x80.jpg\",
                        \"link\":\"#15\",
                        \"date\":\"2015-12-15\"
                    },
                    {
                        \"title\":\"Haier海尔 M352L 移动/联通2G 翻盖老人机 2.4英寸屏老人手机 长待机老年机金色0MB非合约机官方标配\",
                        \"pic\":\"http://d8.yihaodianimg.com/N05/M0A/82/F7/CgQI01ZYI-KAMMwzAAFW6ZSR3Tg50500_80x80.jpg\",
                        \"link\":\"#15\",
                        \"date\":\"2015-12-15\"
                    },
                    {
                        \"title\":\"Haier海尔 M352L 移动/联通2G 翻盖老人机 2.4英寸屏老人手机 长待机老年机金色0MB非合约机官方标配\",
                        \"pic\":\"http://d8.yihaodianimg.com/N05/M0A/82/F7/CgQI01ZYI-KAMMwzAAFW6ZSR3Tg50500_80x80.jpg\",
                        \"link\":\"#15\",
                        \"date\":\"2015-12-15\"
                    }
                ]
            }";
        $arr = json_decode($data,true);
        return json($arr);
    }

}

