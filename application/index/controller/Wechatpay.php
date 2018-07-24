<?php
/*
*/
namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Session;

class Wechatpay extends Controller
{
    public function __construct(){
        header("content-type:text/html;charset=utf-8");
        parent::__construct();

    }

    # 微信支付回调
    public function notify()
    {
        # 支付成功后更新支付状态，支付时间
        $xml = isset($GLOBALS['HTTP_RAW_POST_DATA']) ? $GLOBALS['HTTP_RAW_POST_DATA'] : '';
        include_once 'WxPaySDK/Notify.php'; # 微信回调通知
        $notify = new \PayNotifyCallBack();
        $notify->Handle(true);
        $orderInfo = \WxPayResults::Init($xml);
//        $orderInfo['out_trade_no']="144121740220180720165543";
//        $orderInfo['openid']="omQYXwNAT5uC15TQqMGxajJzqo4s";
        if (empty($orderInfo)) {
            file_put_contents("wx_pay_error.log",$xml."\r", 8);
        } else {
            #查出两个子订单，将其状态改成已支付
            $where['order_id']=$orderInfo['out_trade_no'];
            $sonId = Db::name('order_all')->where($where)->find();
            $arr =[];
            $arr = explode(',',$sonId['son_id']);
            $user = Db::name('customer')->where(['openid'=>$orderInfo['openid']])->find();
            $goodsname="";
            if(is_array($arr)){
                foreach ($arr as $value){
                    #修改子订单状态
                    Db::name('order')
                        ->where(['order_id'=>$orderInfo['out_trade_no'].$value])
                        ->update(['order_status'=>1,'pay_status'=>1, 'pay_time' => time()]);
                    #将子订单中对应的商品数量减少。
                    $goodsOrder = Db::name('order_goods')->where(['order_id'=>$orderInfo['out_trade_no'].$value])->select();
                    foreach ($goodsOrder as $v){
                        $goodsStore = Db::name('goods_attribute')->where(['id'=>$v['sku_id']])->find();
                        $store ='';
                        if($goodsStore['store']-$v['goods_num']<=0){
                            $store =0;
                        }
                        $store = $goodsStore['store']-$v['goods_num'];

                        $goodsDa  = Db::name('goods')->where(['id'=>$goodsStore['goods_id']])->find();
                        $goodsname .= $goodsDa['name']."  ".$v['sku_val']."*".$v['goods_num']."   ";
                        #减库存
                        Db::name('goods_attribute')->where(['id'=>$v['sku_id']])->update(['store'=>$store]);
                        #加上销量
                        Db::name('goods')->where(['id'=>$goodsStore['goods_id']])->setInc('buy_num',$goodsStore['store']);
                        #扣取相应的积分
//                    $goods = Db::name('goods')->where(['id'=>$v['goods_id']])->find();
                    }
                    $totalScore = $this->totalScore($goodsOrder);

                    #将用户积分扣取，并将扣取记录记下来
                    $decScore = $user['score']-$totalScore;
                    if($decScore<0)$decScore=0;
                    Db::name('customer')->where(['openid'=>$orderInfo['openid']])->update(['score'=>$decScore]);
//                    file_put_contents("wx_pay_success.log",Db::name('customer')->getLastSql()."\r", 8);
                    #记录
                    $scoreLog=[];
                    $scoreLog['openid']=$orderInfo['openid'];
                    $scoreLog['source']=7;
                    $scoreLog['uid']=$user['id'];
                    $scoreLog['source_id']=0;
                    $scoreLog['score']=-$decScore;
                    $scoreLog['time']=time();
                    Db::name('score_log')->insert($scoreLog);

                }
            }
            file_put_contents("wx_pay_success.log",$xml."\r", 8);
            # 订单id是微信统  echo Db::name("order_all")->getLastSql();
//            dump($res);一下单接口生成的out_trade_no
            $orderWhere = ["order_id" => $orderInfo['out_trade_no'] ];
            $update = ['status' => 1];
            $res = Db::name("order_all")->where($orderWhere)->update($update);
//             file_put_contents("wx_pay_success.log",Db::name('order_all')->getLastSql()."\r", 8);
            #付款成功通知
            include_once "sendMsg/SDK/WeiXin.php";
            $wx = new \WeiXin();
            $wx->buySuccess($goodsname,$orderInfo['openid'],$sonId['total_price']);
            #交易记录
            $wx_pay_refund_log_insert=[];
            $wx_pay_refund_log_insert['openid']= $user['openid'];
            $wx_pay_refund_log_insert['username']= $user['nickname'];
            $wx_pay_refund_log_insert['create_time']= time();
            $wx_pay_refund_log_insert['money']= $sonId['total_price'];
            $wx_pay_refund_log_insert['type']=1;#购买商品
            Db::name('wx_pay_refund_log')->insert($wx_pay_refund_log_insert);
        }
        exit;
    }

    #统计积分合计
    public function totalScore($data)
    {
        $pay = 0;
//        dump($data);
        foreach ($data  as $val) {
            $res = Db::name('goods_attribute')->field('price,point_score')->where(['id'=>$val['sku_id']])->find();
//                $goods = Db::name('goods')->where(['id'=>$val['goodsId']])->find();
            if (isset($val['num'])) {
                $pay += $res['point_score'] * $val['num'];
            }
//                if($goods['free_type']==0){
//                    $pay +=$goods['postage'];
//                }
        }
        return $pay;
    }

    #支付回调
    public function notify1()
    {
        # 支付成功后更新支付状态，支付时间
        $xml = isset($GLOBALS['HTTP_RAW_POST_DATA']) ? $GLOBALS['HTTP_RAW_POST_DATA'] : '';
        include_once 'WxPaySDK/Notify.php'; # 微信回调通知
        $notify = new \PayNotifyCallBack();
        $notify->Handle(false);
        $orderInfo = \WxPayResults::Init($xml);
//        $orderInfo['out_trade_no']="144121740220180720145045";
        if (empty($orderInfo)) {
            file_put_contents("wx_pay_error.log",$xml."\r", 8);
        } else {
            $user = Db::name('customer')->where(['openid'=>$orderInfo['openid']])->find();
            $order = Db::name('order')->where(['order_id'=>  $orderInfo['out_trade_no']])->find();
            $where['order_id']=$orderInfo['out_trade_no'];
            $data['pay_time']=time();
            $data['pay_status']=1;
            $data['order_status']=1;
            Db::name('order')->where($where)->update($data);
            #减对应商品的库存
            $goodsname='';
            $goodsOrder = Db::name('order_goods')->where(['order_id'=>$orderInfo['out_trade_no']])->select();
            foreach ($goodsOrder as $v){
//                dump($v);
                $goodsStore = Db::name('goods_attribute')->where(['id'=>$v['sku_id']])->find();
                $store ='';
                if($goodsStore['store']-$v['goods_num']<=0){
                    $store =0;
                }
                $store = $goodsStore['store']-$v['goods_num'];
                #减库存
                Db::name('goods_attribute')->where(['id'=>$v['sku_id']])->update(['store'=>$store]);
                #加销量
                Db::name('goods')->where(['id'=>$goodsStore['goods_id']])->setInc('buy_num',$goodsStore['store']);
                $goodsDa  = Db::name('goods')->where(['id'=>$goodsStore['goods_id']])->find();
                $goodsname .= $goodsDa['name']."  ".$v['sku_val']."*".$v['goods_num']."   ";
            }
            #减去对应商品的积分
            $totalScore = $this->totalScore($goodsOrder);
            #将用户积分扣取，并将扣取记录记下来
//            dump($order);die;
            $decScore = $user['score']-$totalScore;
            if($decScore<0)$decScore=0;
            Db::name('customer')->where(['openid'=>$orderInfo['openid']])->update(['score'=>$decScore]);
            #记录
            $scoreLog=[];
            $scoreLog['openid']=$orderInfo['openid'];
            $scoreLog['source']=7;
            $scoreLog['source_id']=0;
            $scoreLog['uid']=$user['id'];
            $scoreLog['score']=-$decScore;
            $scoreLog['time']=time();
            Db::name('score_log')->insert($scoreLog);
            #付款成功通知
            include_once "sendMsg/SDK/WeiXin.php";
            $wx = new \WeiXin();
            $wx->buySuccess($goodsname,$orderInfo['openid'],$order['total_price']);

            #交易记录
            $wx_pay_refund_log_insert=[];
            $wx_pay_refund_log_insert['openid']= $user['openid'];
            $wx_pay_refund_log_insert['username']= $user['nickname'];
            $wx_pay_refund_log_insert['create_time']= time();
            $wx_pay_refund_log_insert['money']= $order['total_price'];
            $wx_pay_refund_log_insert['type']=1;#购买商品
            Db::name('wx_pay_refund_log')->insert($wx_pay_refund_log_insert);
        }
    }


    /**
     *  array转xml
     */
//    public function arrayToXml($arr)
//    {
//        $xml = "<xml>";
//        foreach ($arr as $key => $val){
//            if (is_numeric($val)){
//                $xml .= "<".$key.">".$val."</".$key.">";
//            }else{
//                $xml .= "<".$key."><![CDATA[".$val."]]></".$key.">";
//            }
//        }
//        $xml .= "</xml>";
//        return $xml;
//    }
//    //使用证书，以post方式提交xml到对应的接口url
//
//    /**
//     *   作用：使用证书，以post方式提交xml到对应的接口url
//     */
//    function curl_post_ssl($url, $vars, $second=30)
//    {
//        $ch = curl_init();
//        //超时时间
//        curl_setopt($ch,CURLOPT_TIMEOUT,$second);
//        curl_setopt($ch,CURLOPT_RETURNTRANSFER, 1);
//
//        curl_setopt($ch,CURLOPT_URL,$url);
//        curl_setopt($ch,CURLOPT_SSL_VERIFYPEER,false);
//        curl_setopt($ch,CURLOPT_SSL_VERIFYHOST,false);
//
//        //以下两种方式需选择一种
//        /******* 此处必须为文件服务器根目录绝对路径 不可使用变量代替*********/
//        curl_setopt($ch,CURLOPT_SSLCERT,"/home/lzb/tpAdmin/application/index/controller/WxPaySDK/cert/apiclient_cert.pem");
//        curl_setopt($ch,CURLOPT_SSLKEY,"/home/lzb/tpAdmin/application/index/controller/WxPaySDK/cert/apiclient_key.pem");
//
//        curl_setopt($ch,CURLOPT_POST, 1);
//        curl_setopt($ch,CURLOPT_POSTFIELDS,$vars);
//
//        $data = curl_exec($ch);
//        if($data){
////            echo 234;
//            curl_close($ch);
//            return $data;
//        }else {
//            $error = curl_errno($ch);
//            echo "call faild, errorCode:$error\n";
//            curl_close($ch);
//            return false;
//        }
//    }
//
//    //企业向个人付款
//    public function payToUser($openid='omQYXwNAT5uC15TQqMGxajJzqo4s',$desc='提现成功',$amount='1')
//    {
//        //微信付款到个人的接口
//        $url = 'https://api.mch.weixin.qq.com/mmpaymkttransfers/promotion/transfers';
//        $params["mch_appid"]        = \think\Config::get('app_id');   //公众账号appid
//        #商户号生成
//        include_once 'WxPaySDK/WxPay.Api.php';
//        $merchid = \WxPayConfig::MCHID;
//        $params["mchid"]            = $merchid;   //商户号 微信支付平台账号
//        $params["nonce_str"]        = 'longdongzhiye99'.mt_rand(100,999);   //随机字符串
//        $params["partner_trade_no"] = mt_rand(10000000,99999999);           //商户订单号
//        $params["amount"]           = $amount;          //金额
//        $params["desc"]             = $desc;            //企业付款描述
//        $params["openid"]           = $openid;          //用户openid
//        $params["check_name"]       = 'NO_CHECK';       //不检验用户姓名
//        $params['spbill_create_ip'] = get_client_ip();   //获取IP
//
//           //生成签名(签名算法后面详细介绍)
//        $str = 'amount='.$params["amount"].'&check_name='.$params["check_name"].'&desc='.$params["desc"].'&mch_appid='.$params["mch_appid"].'&mchid='.$params["mchid"].'&nonce_str='.$params["nonce_str"].'&openid='.$params["openid"].'&partner_trade_no='.$params["partner_trade_no"].'&spbill_create_ip='.$params['spbill_create_ip'].'&key=7c82dcb3c8437f7c654b57fb0509944b';
//        $sign = strtoupper(md5($str));
////        var_dump($sign);
////        $sign =strtoupper(hash('sha256',$sign));
////        var_dump($sign);
//        $params["sign"] = $sign;//签名
//        $xml = $this->arrayToXml($params);
//        return $this->curl_post_ssl($url, $xml);
//
//    }
//
//    public function  index()
//    {
//        $Wechatpay=new Wechatpay;
//        $res = $Wechatpay -> payToUser();
////        var_dump($res);
//    }


}

