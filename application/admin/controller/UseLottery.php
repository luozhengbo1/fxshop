<?php

namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path'), EXT);

use app\admin\Controller;
use \think\Db;

class UseLottery extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    protected function filter(&$map)
    {
        if ($this->request->param("user_name")) {
            $map['u_l.username'] = ["like", "%" . $this->request->param("user_name") . "%"];
        }

        if ($_SESSION['think']['auth_id'] == 1) {
            if ($this->request->param("shop_id")) {
                $user_id = $this->request->param("shop_id");
                //查找商家名下的所有扫码人员
                $user = Db::name('admin_user_customer')
                    ->alias('ad_u_c')
                    ->field('c.openid')
                    ->join('fy_customer c', 'c.id=ad_u_c.customer_id')
                    ->where(['ad_u_c.user_id'=>$user_id])
                    ->select();
                if($user){
                    //处理查询条件
                    foreach ($user as &$v) {
                        $map['shop_openid'][] = $v['openid'];
                    }
                    $str=implode(",",$map['shop_openid']);
                    $map['shop_openid']=["in",$str];
                }else{
                    $map['shop_openid']=0;
                }
            }
        }

        if ($this->request->param("lottery_id")) {
            $map['lottery_id'] = $this->request->param("lottery_id");
        }

        if ($_SESSION['think']['auth_id'] != 1) {
            $map['shop_openid'] = empty($_SESSION['userInfo']['shop_openid']) ? '' : $_SESSION['userInfo']['shop_openid'];
        }
    }

    #前置操作
    public function beforeIndex()
    {
        $user = Db::name('admin_user')->select();
        $lottery = Db::name('lottery')->where(['isdelete' => 0, 'status' => 1, 'type' => 3])->select();
        $this->view->assign('adminUser', $user);
        $this->view->assign('lottery', $lottery);
    }

    public function beforeRecyclebin()
    {
        $this->beforeIndex();
    }
    /**
     * 首页
     * @return mixed
     */
    public function index()
    {
        // 自定义过滤器
        if (method_exists($this, 'filter')) {
            $this->filter($map);
        }
        $list = $this->getModel()->alias('u_l')
            ->field('u_l.*,ad_u.account,ad_u.realname')
            ->join('fy_customer c', 'u_l.shop_openid=c.openid')
            ->join('fy_admin_user_customer ad_u_c', 'c.id=ad_u_c.customer_id')
            ->join('fy_admin_user ad_u','ad_u_c.user_id=ad_u.id')
            ->where($map)
            ->where('u_l.isdelete',0)
            ->paginate(10);
        $page = $list->render();
        $count=count($list);
        // 模板变量赋值
        $this->view->assign('page', $page);
        $this->view->assign('count', $count);
        $this->view->assign('list', $list);
        return $this->view->fetch();

    }
}
