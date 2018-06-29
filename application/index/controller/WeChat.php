<?php 	

namespace Index\Controller;

use Think\Controller;
use think\Config;
use think\Session;
use think\Db;

class WeChatController extends Controller
{
    private $appId;
    private $appSecret;
    private $authBack;

    public function __construct(){
        header("content-type:text/html;charset=utf-8");
        parent::__construct();
        $this->appId = Config::get('app_id');
        $this->appSecret = Config::get('app_secret');
        $serverUrl ="http://{$_SERVER['SERVER_NAME']}/index.php";
        $this->authBack = urlencode("{$serverUrl}/WeChat/sessionWxUser");

    }
    # 网页授权只能配置一个白名单，将获取code的请求放到授权域名下。
    # https://github.com/DarkToLight/GetWeixinCode
    public function wxLogin()
    {
        $state = $this->request->param('state');
        $authUrl = "http://vip.fyxtw.com/get-weixin-code.html";
        $this->redirect("{$authUrl}?appid={$this->appId}&scope=snsapi_userinfo&state={$state}&redirect_uri={$this->authBack}");
    }
    # 获取微信用户信息，存放在session中
    public function sessionWxUser()
    {
        $code = $this->request->param('code');
        $url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid={$this->appId}&secret={$this->appSecret}&code={$code}&grant_type=authorization_code";
        $accessInfo = json_decode(file_get_contents($url), true);
        $url = "https://api.weixin.qq.com/sns/userinfo?access_token={$accessInfo['access_token']}&openid={$accessInfo['openid']}&lang=zh_CN";
        $userInfo = json_decode(file_get_contents($url), true);
        # 如果不存在用户就写入
        $customer = Db::name("customer");
        if (!$user = $customer->where(['openid' => $userInfo['openid']])->find()) {
            $userInfo['create_time'] = strtotime(date("Y-m-d H:i:s"));
            $customer->add($userInfo);
        }else {
            # 更新登录时间
            $up['update_time'] = strtotime(date("Y-m-d H:i:s"));
            $up['login_ip'] = get_client_ip();
            $customer->where(array('openid'=>$userInfo['openid']))->save($up);
        }
        Session::set('wx_user', $userInfo);
        # 从哪里来回哪里去
        $this->redirect(urldecode($this->request->param('state')));
    }
}

