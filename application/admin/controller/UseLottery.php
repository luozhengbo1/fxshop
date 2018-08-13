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

    protected function filter(&$map)
    {
        if ($this->request->param("username")) {
            $map['username'] = ["like", "%" . $this->request->param("username") . "%"];
        }
        if($_SESSION['think']['auth_id']==1){
            if ($this->request->param("shop_openid")) {
                $map['shop_openid'] = ["like", "%" . $this->request->param("shop_openid") . "%"];
            }
        }
        if ($this->request->param("lottery_id")) {
            $map['lottery_id'] = $this->request->param("lottery_id");
        }
        if($_SESSION['think']['auth_id']!=1){
            $map['shop_openid'] =empty($_SESSION['userInfo']['shop_openid'])?'':$_SESSION['userInfo']['shop_openid'];
        }


    }
    #前置操作
    public function beforeIndex()
    {
        $user = Db::name('admin_user')->where(['openid'=>['<>','']])->select();
        $lottery = Db::name('lottery')->where(['isdelete'=>0,'status'=>1,'type'=>3])->select();
        $this->view->assign('adminUser',$user);
        $this->view->assign('lottery',$lottery);
    }
    public function beforeRecyclebin()
    {
        $this->beforeIndex();
    }

}
