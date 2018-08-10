<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;
use \think\Db;

class UseLottery extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];
    protected $beforeActionList = [
        'beforeIndex' =>  ['except'=>'index'],
    ];

    protected function filter(&$map)
    {
        if ($this->request->param("username")) {
            $map['fy_use_lottery.username'] = ["like", "%" . $this->request->param("username") . "%"];
        }
        if ($this->request->param("shop_openid")) {
            $map['fy_use_lottery.shop_openid'] = ["like", "%" . $this->request->param("shop_openid") . "%"];
        }
        if ($this->request->param("lottery_id")) {
            $map['fy_use_lottery.lottery_id'] = $this->request->param("lottery_id");
        }

    }
    #前置操作
    public function beforeIndex()
    {
        $user = Db::name('admin_user')->where(['openid'=>['<>','']])->select();
        #
        $lottery = Db::name('lottery')->where(['isdelete'=>0,'status'=>1,'type'=>3])->select();
        dump($lottery);die;
        $this->view->assign('adminUser',$user);
        $this->view->assign('lottery',$lottery);
    }
}
