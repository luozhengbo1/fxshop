<?php

namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Cache;
use think\Session;

Class Lottery extends Mustlogin
{

    #券集市  取出没有结算，并且没有过期的奖券
    #根据分类id 查找商品 过滤条件：商品有券
    public function market()
    {
        $this->view->assign('titleName', '券集市');
        if($this->request->isAjax()){
            $page = $this->request->param('page');
            $size = $this->request->param('size');
            $goodsClassId = $this->request->param('goodsClassId');
            $time = time();
            $where =[
                'fy_goods.status'=>1,
                'fy_goods.isdelete'=>'0',
                'fy_lottery.grant_start_date' => ['<', $time],
                'fy_lottery.grant_end_date' => ['>', $time],
                'fy_lottery.status' =>1,
            ];
            if($goodsClassId !='all'){
                if(!$goodsClassId){
                    return ajax_return_error('缺少参数分类id');
                }
                #查询所有的子分类
                $goodsClassAllChild = getAllChildcateIds($goodsClassId);
                $where['fy_goods.goods_class_id'] = ['in',$goodsClassAllChild];
            }
            $goodsWithLottery = Db::name('goods')
                ->field(
                    'fy_lottery.*,
                    fy_goods_class.name as class_name')
                ->join('fy_lottery', 'fy_goods.id=fy_lottery.goods_id','left')
                ->join('fy_goods_class', 'fy_goods_class.id=fy_goods.goods_class_id','left')
                ->where($where)
                ->page($page,$size)
                ->select();
//            dump($goodsWithLottery);
          //  echo Db::name('goods')->getLastSql();die;
            return ajax_return($goodsWithLottery, '', '200');
            //带有券的商品
        }
        return $this->view->fetch('market');

    }
    #券详情
    public function detail($id,$goods_id,$type)
    {
        $this->assign('titleName', "券详情");
        $lottery = Db::name('lottery')
            ->where( [
                'id'=>['in',$id],
            ])
            ->find();

        $this->assign('lottery', $lottery);
        $this->assign('goods_id', $goods_id);
        $this->assign('type', $type);
        return  $this->view->fetch();

    }
    #券清单确认
    public function affairm($lottery_id,$goods_id)
    {
        $this->assign('titleName', "订单确认");
        $goods = Db::name('goods')
            ->where( [
                'id'=>['in',$goods_id],
            ])
            ->find();
        $lottery = Db::name('lottery')
            ->where( [
                'id'=>['in',$lottery_id],
            ])
            ->find();
        $this->assign('lottery', $lottery);
        $this->assign('goods', $goods);

        return  $this->view->fetch();

    }
    #未完成待续
    public function get()
    {
        if ($this->request->isAjax()) {
            $data = $this->request->post();
            if (!$data['id']) {
                return ajax_return_error('缺少参数id');
            }
            $lottery = Db::name('lottery')->where(['id' => $data['id'], 'status' => '1'])->find();
          //  dump($lottery);
            if ($lottery['number'] < 1) {
                return ajax_return_error('奖券已经被领取完');
            }
            if ($lottery['grant_start_date'] > time() || $lottery['grant_end_date'] < time()) {
                return ajax_return_error('领取时间不对');
            }
            #查询是否领取过这个奖券
            $lotteryLog = Db::name('lottery_log')->where(['openid' => $this->userInfo['openid'], 'lottery_id' => $data['id']])->find();

            if ($lotteryLog) {
                return ajax_return_error('每人只能领一张');
            }
            #将数量减少，记录领取用户
            $insert = [];
           // dump($this->userInfo);
            $insert['username'] = $this->userInfo['nickname'];
            $insert['uid'] = $this->userInfo['id'];
            $insert['addtime'] = time();
            $insert['lottery_id'] = $data['id'];
            $insert['status'] = 1;
            $insert['lottery_name'] = $lottery['name'];
            $insert['is_use'] = 0;
            $insert['openid'] = $this->userInfo['openid'];
            $res = Db::name('lottery')->where(['id' => $data['id']])->update(['number'=>$lottery['number']-1]);
            $res1 = Db::name('lottery_log')->insert($insert);
            if ($res && $res1) {
                return ajax_return('', '领取成功', '200');
            } else {
                return ajax_return_error('领取失败', '500');
            }
        }

    }

    /**
     * 我的卡券中心
     */
    public function mycardvoucher($page = '1', $size = '4', $status = '0')
    {
        if ($this->request->isAjax()) {
            $userdata = Db::table('fy_customer')->field('id')->where('openid', $this->userInfo['openid'])->find();
            //取未使用过的奖券
            if ($status == 0) {
                $lottery_no_use = Db::table('fy_lottery_log')->alias('log')
                    ->field('lott.*,log.uid,log.updatetime,log.is_use,log.status')
                    ->join('fy_lottery lott', 'log.lottery_id=lott.id')
                    ->join('fy_customer custo', 'log.uid=custo.id')
                    ->where(['custo.id'=>$userdata['id'],'log.is_use'=>$status])
                    ->order('expire_end_date','desc')
                    ->page($page, $size)
                    ->select();
                if ($lottery_no_use) {
                    return ajax_return($lottery_no_use, 'ok', 200);
                } else {
                    return ajax_return('', 'no data', 204);
                }
                //取使用过的奖券
            } elseif ($status == 1) {
                $lottery_use = Db::table('fy_lottery_log')->alias('log')
                    ->field('lott.*,log.uid,log.updatetime,log.is_use,log.status')
                    ->join('fy_lottery lott', 'log.lottery_id=lott.id')
                    ->join('fy_customer custo', 'log.uid=custo.id')
                    ->where(['custo.id'=>$userdata['id'],'log.is_use'=>$status])
                    ->order('expire_end_date','desc')
                    ->page($page, $size)
                    ->select();
                if ($lottery_use) {
                    return ajax_return($lottery_use, 'ok', 200);
                } else {
                    return ajax_return('', 'no data', 204);
                }
            }
        } else {
            $this->assign('titleName', "卡券中心");
            return $this->view->fetch('mycardVoucher');
        }
    }

    #商家扫码同意

    /**
     * @param $id 券id
     * @param $goods_id 商品id
     * @param $adminId  发行券商家id
     * @return string
     * @throws \think\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function  adminUserScanCode($id,$goods_id,$user_id){
        $this->assign('titleName', "商家扫码券");
       ;
        $tempUser = Db::table('fy_lottery_log')->alias('log')
            ->where([
                'openid.id'=> $this->userInfo['openid'],
                'id'=>$user_id
            ])
            ->find();
        if(!empty($tempUser)){
            $lottery = Db::name('lottery')
                ->where( [
                    'id'=>['in',$id],
                ])
                ->find();
            $this->assign('lottery', $lottery);
            $this->assign('goods_id', $goods_id);
            return $this->view->fetch('adminUserScanCode');
        }else{
            return $this->view->fetch('oScanCode');
        }

    }

    #券的支付接口
    public function  payLottery()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            if(!$data['id'] || !$data['lottery_num'] ){
                return ajax_return_error('缺少奖券id');
            }
            #查出券相关信息
            $lottery = Db::name('lottery')->where(['id'=>(int)$data['id']])->find();
            #查询库存是否足够
            if($lottery['number']<$data['lottery_num']){
                return ajax_return('',"库存不足，只有{$lottery['number']}张",'500');
            }
            #生成订单数据
             $orderRow =[];
            $orderRow['lottery_id']=$lottery['id'];
            $orderRow['username']=$this->userInfo['nickname'];
            $orderRow['openid']=$this->userInfo['openid'];
            $orderRow['lottery_num']=$data['lottery_num'];
            $orderRow['total_price']=$lottery['coupon_real_money']*$data['lottery_num'];
            $orderRow['pay_status']=0;
            $orderRow['addtime']=time();
            $orderRow['lottery_info']=json_encode($lottery);
            $orderRow['is_tui']=0;
            $orderRow['order_status']=0;
            include_once "WxPaySDK/WxPay.Api.php";
            include_once "WxPaySDK/WxPay.JsApiPay.php";
            include_once 'WxPaySDK/log.php';
            include_once 'WxPaySDK/WxPay.Config.php';
            $wxConfig = new \WxPayConfig();
            $tools = new \JsApiPay();
            #订单总价的计算
            $orderId = $wxConfig->GetMerchantId().date("YmdHis");
            $orderRow['order_id']=$orderId;
//            $orderId = \WxPayConfig::MCHID.date("YmdHis");
            //$openId = $tools->GetOpenid(); # 获取微信用户信息，因为不在安全域名内，所以获取不到，使用github的实现。
            //②、统一下单
            $input = new \WxPayUnifiedOrder();
            $input->SetBody("泛亚商城 的订单");
            $input->SetAttach("附加参数");
            $input->SetOut_trade_no($orderId);
            $input->SetTotal_fee($orderRow['total_price']*100);
            $input->SetTime_start(date("YmdHis"));
            $input->SetTime_expire(date("YmdHis", time() + 1800));
            $input->SetGoods_tag("");
            #微信支付回调变更
            $notifyUrl = $wxConfig->GetNotifyUrl("http://".$_SERVER['HTTP_HOST']."/index.php/index/wechatpay/notify3");
            $input->SetNotify_url($notifyUrl);
            $input->SetTrade_type("JSAPI");
            $input->SetOpenid($this->userInfo['openid']);
            $unifiedOrder = \WxPayApi::unifiedOrder($wxConfig,$input);
            $jsApiParameters= $tools->GetJsApiParameters($unifiedOrder);
            $jsApiParameters = base64_encode($jsApiParameters);
            $orderRow['js_api_parameters']=$jsApiParameters;
            $orderRow['prepay_id']=$unifiedOrder['prepay_id'];
            #保存订单数据
            $res = Db::name('lottery_log')->insert($orderRow);
            if($res){
                $backData = array("msg" => "呼起支付", 'code' => 200, 'redirect' => url("pay/index")."?js_api_parameters={$jsApiParameters}&order_id={$orderId}&flag=flag");
                die(json_encode($backData));
            }else{
                return ajax_return('','支付调起失败','500');
            }
        }

    }
}
