<?php
namespace app\index\controller;
use app\index\controller\SildeShow;
use think\Controller;
class Index extends Controller
{
    public function index(){
        $this->assign('titleName', "泛亚商城");
//        $sildeShow = new \app\index\controller\SildeShow();
//        $sildeShowList =$sildeShow->getSildeShow();
//        dump($sildeShowList);

        return $this->fetch();

    }
    public function message(){
        $this->assign('titleName', "个人消息");
        return $this->view->fetch();
    }
    public function goodsSearch(){
        $this->assign('titleName', "商品搜索");
        return $this->view->fetch();
    }
    public function announce(){
        $this->assign('titleName', "商城公告");
        return $this->view->fetch();
    }
    public function rushPurchase(){
        $this->assign('titleName', "限时抢购");
        return $this->view->fetch();
    }
    public function goodsPoints(){
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
    public function affirmOrder(){
        $this->assign('titleName', "确认订单");
        return $this->view->fetch();
    }
    public function addressList(){
        $this->assign('titleName', "地址列表");
        return $this->view->fetch();
    }
    public function addAddress(){
        $this->assign('titleName', "收货地址");
        return $this->view->fetch();
    }
    public function goodsCar(){
        $this->assign('titleName', "购物车");
        return $this->view->fetch();
    }
    public function demo(){
        return $this->view->fetch();
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

