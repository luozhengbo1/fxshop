<?php
use think\Config;
use think\Session;
class WeiXin
{
    private $appID;
    private $appsecret;
    private $db;
    protected $hostUrl;
    public function __construct()
    {
        $this->hostUrl="http://".$_SERVER['SERVER_NAME'].$_SERVER['DOCUMENT_URI'];
     /*   foreach ($conf as $key => $val) {
            $$key = $val;
        }
        $this->appID = $appID;
        $this->appsecret = $appsecret;*/
        include_once "Http.php";
    }
    public function injectionDb($db)
    {
        $this->db = $db;
    }
    public function news($openid, $template)
    {
        $msg = new stdClass();
        $msg->touser = $openid;
        $msg->msgtype = 'news';
        $msg->news['articles'][] = array(
            'title' => '%s',
            'description' => '%s',
            'url' => 'http://10.20.1.99:8088/index.php/wifi/authAfter',
            'picurl' => 'http://10.20.1.99:8088/Uploads/2018-03-19/5aaf2909704b2.jpg'
        );
        $msg = sprintf(json_encode($msg), "哈哈，你被探针扫到了", '我的内心毫无波动，甚至有些想笑');
        $this->send($msg);
    }
    public function text()
    {

    }
    public function voice()
    {

    }
    private function send($msg, $other=[])
    {
        $accessToken = $this->getAccessToken();
        $url = 'https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=' .  $accessToken;
        $sendResult = Http::post( $url, $msg );
//
//        var_dump($sendResult);
        if ($sendResult['errcode'] != 0) {
            // Todo 发送失败
        } else {
            // todo 发送成功
        }
    }

//    private function getAccessToken()
//    {
////        $url = "http://m.gzairports.com/manage.php?s=/addon/Flight/Flight/getAccessToken//is_rabbit/true/publicid/2";
//        $url="http://vip.fyxtw.com/index.php?s=/addon/DeveloperTool/DeveloperTool/getAccessToken/publicid/3";
//        $accessTokenInfo = Http::get($url);
//        $_SESSION['access_token']=$accessTokenInfo;
////        file_put_contents('./access_token.txt', $accessTokenInfo);
//        return $accessTokenInfo;
//    }
    private function getAccessToken() {
        // access_token 应该全局存储与更新，以下代码以写入到文件中做示例
//  $data = json_decode($this->get_php_file(__DIR__."/access_token.php"));
        $data = Session::get('access_token_data');
        if (!$data || $data['expire_time'] < time()) {
            // 如果是企业号用以下URL获取access_token
            // $url = "https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid=$this->appId&corpsecret=$this->appSecret";
            $appId = Config::get('app_id');
            $appSecret = Config::get('app_secret');
            $url = "https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=$appId&secret=$appSecret";
            $res = json_decode(Http::get($url));
//            dump($res);
            $access_token = $res->access_token;
            if ($access_token) {
                $data['expire_time'] = time() + 7000;
                $data['access_token'] = $access_token;
                Session::set('access_token_data', $data );
            }
        } else {
            $access_token = $data['access_token'];
        }
        return $access_token;
    }
/*
 *     public function buySuccess($openid, $flightInfo, $method)
    {
        $touser = "o7khyw2tU8pb4tWnX2u7T5YQF-b4";
        $url = "http://m.gzairports.com/manage.php?s=/addon/Flight/Flight/details/publicid/2/id/{1}";
        $hello = "<img src='http://10.20.1.99:8088/Uploads/2018-03-19/5aaf2909704b2.jpg'/>";
        $flightAirways = "CZ2555";
        $startCn = "贵州";
        $terminalCn = "长春";
        $startTime = "AAAAAAA";
        $teminalTime= "BBBBBBG";
        $aa = "------";
        $template = file_get_contents(__DIR__."/changebor.json");
        $param = sprintf($template, $touser, $url, $hello, $flightAirways, $startCn, $terminalCn, $startTime, $teminalTime, $aa, $aa);
        $this->sendTemplate($param);
    }
 * */
    #购买成功通知
    public function buySuccess($goods="测试商品",$openid="omQYXwNAT5uC15TQqMGxajJzqo4s",$pay_price="10",$flag='order')
    {
        $touser =$openid;
        $templateId=Config::get('order_pay');
        if($flag=="order"){
            $first ="我们已收到您的货款，开始为您打包商品，请耐心等待: )";
            $url = $this->hostUrl."/index/order/index/param/all";
        }else{
            $first ="感谢您的购买！: )";
            $url = $this->hostUrl."/index/lottery/mycardvoucher.html";
        }
        $template = file_get_contents(__DIR__."/buySuccess.json");
        $remark = "如有问题请致电【0717-2868207】或直接在微信留言，将第一时间为您服务！";
        $param = sprintf($template, $touser,$templateId, $url, $first, $pay_price, $goods,$remark);
        $this->sendTemplate($param);
    }

    #发货通知
    public function  sendGoods($goods,$openid,$out_trade_no,$post ,$log_number,$address)
    {
        $touser =$openid;
        $templateId=Config::get('send');
        $url = $this->hostUrl."/index/order/index/param/all";
        $first = "您购买{$goods}已经发货啦，正快马加鞭向您飞奔而去。";
        #发货时间
        $sendTime=date('Y-m-d H:i:s');
        $remark= "请保持收件手机畅通！查看详情！{$url}";
        $template = file_get_contents(__DIR__."/changeBor.json");
        $param = sprintf($template, $touser,$templateId, $url, $first, $out_trade_no, $sendTime, $post, $log_number,$address,$remark);
        $this->sendTemplate($param);
    }
    #退款通知
    public function  refund($goods="test商品",$openid="omQYXwNAT5uC15TQqMGxajJzqo4s",$out_trade_no="",$refundMoney ="10")
    {
        $touser =$openid;
        $templateId=Config::get('order_refund');
        $url =$this->hostUrl."/index/order/index/param/all";
        $first = "您的订单已经完成退款，原路退回到您的支付帐户（零钱20天内到账；储蓄卡1-3个工作日；信用卡2-5个工作日）请留意查收。";
        $remark= "有什么疑问请联系【0717-2868207】咨询";
        $template = file_get_contents(__DIR__."/refund.json");
        $param = sprintf($template, $touser,$templateId, $url, $first, $refundMoney, $goods, $out_trade_no,$remark);
        $this->sendTemplate($param);

    }

    #确认收货提醒
    public function sure($goods="test商品",$openid="omQYXwNAT5uC15TQqMGxajJzqo4s",$out_trade_no="")
    {
        $touser =$openid;
        $templateId=Config::get('sure');
//        $templateId="vfjUQ3F8WVhlcbArgxX7rirho2yp9CtnI9UwDZv9UnI";
        $url =$this->hostUrl."/index/order/index/param/all";
        $first = "亲，物流显示您的订单已签收，请确认！";
        $remark= "如果您已收到货，请点此消息确认收货";
        $status ="已签收";
        $template = file_get_contents(__DIR__."/refund.json");
        $param = sprintf($template, $touser,$templateId, $url, $first, $out_trade_no, $goods, $status,$remark);
        $this->sendTemplate($param);
    }

    #打款成功通知
    public function makeMoney($username='用户', $money='10',$openid='' )
    {
        $touser =$openid;
        $templateId=Config::get('make_money');
        $url =$this->hostUrl."index/index/index";
        $first = "亲，你好，本周已打款, 请确认！";
        $remark= "感谢您的使用。";
        $time = date('Y年m月d日');
        $template = file_get_contents(__DIR__."/makeMoney.json");
        $param = sprintf($template, $touser,$templateId, $url, $first,$username, $money, $time,$remark);
//        dump($param);
        $this->sendTemplate($param);
    }

    #发送
    public function sendTemplate($param)
    {
        $accessToken = $this->getAccessToken();
        $url = 'https://api.weixin.qq.com/cgi-bin/message/template/send?access_token='.$accessToken;
        $result ['status'] = 0;
        $result ['msg'] = '回复失败';
        $res = Http::post( $url, $param );
//        var_dump($res);
        if ($res ['errcode'] != 0) {
            $result ['msg'] = $res;
            $datetime = date("Y-m-d H:i:s");
        } else {
            $result ['status'] = 1;
            $result ['msg'] = '回复成功';
        }
    }

}
