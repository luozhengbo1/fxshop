<?php
/**
 * tpAdmin [a web admin based ThinkPHP5]
 *
 * @author yuan1994 <tianpian0805@gmail.com>
 * @link http://tpadmin.yuan1994.com/
 * @copyright 2016 yuan1994 all rights reserved.
 * @license http://www.apache.org/licenses/LICENSE-2.0
 */

//------------------------
// 管理后台首页
//-------------------------

namespace app\admin\controller;

use app\admin\Controller;
use think\Loader;
use think\Model;
use think\Session;
use think\Db;

class Index extends Controller
{

    public function index()
    {
        // 读取数据库模块列表生成菜单项
        $nodes = Loader::model('AdminNode', 'logic')->getMenu();

        // 节点转为树
        $tree_node = list_to_tree($nodes);

        // 显示菜单项
        $menu = [];
        $groups_id = [];
        foreach ($tree_node as $module) {
            if ($module['pid'] == 0 && strtoupper($module['name']) == strtoupper($this->request->module())) {
                if (isset($module['_child'])) {
                    foreach ($module['_child'] as $controller) {
                        $group_id = $controller['group_id'];
                        array_push($groups_id, $group_id);
                        $menu[$group_id][] = $controller;
                    }
                }
            }
        }

        // 获取授权节点分组信息
        $groups_id = array_unique($groups_id);
        if (!$groups_id) {
            exception("没有权限");
        }
        $groups = Db::name("AdminGroup")->where(['id' => ['in', $groups_id], 'status' => "1"])->order("sort asc,id asc")->field('id,name,icon')->select();

        $this->view->assign('groups', $groups);
        $this->view->assign('menu', $menu);

        return $this->view->fetch();
    }

    /**
     * 欢迎页
     * @return mixed
     */
    public function welcome()
    {
        // 查询 ip 地址和登录地点
//        if (Session::get('last_login_time')) {
//            $last_login_ip = Session::get('last_login_ip');
//            $last_login_loc = \Ip::find($last_login_ip);
//
//            $this->view->assign("last_login_ip", $last_login_ip);
//            $this->view->assign("last_login_loc", implode(" ", $last_login_loc));
//
//        }
//        $current_login_ip = $this->request->ip();
//        $current_login_loc = \Ip::find($current_login_ip);
//
//        $this->view->assign("current_login_ip", $current_login_ip);
//        $this->view->assign("current_login_loc", implode(" ", $current_login_loc));
//
//        // 查询个人信息
//        $info = Db::name("AdminUser")->where("id", UID)->find();
//        $this->view->assign("info", $info);
//
//        return $this->view->fetch();
        //查询订单
        $count_pay = Db::table('fy_order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.order_status' => 0, 'fy_order.pay_status' => 0])->count();
        $this->view->assign('count_pay', $count_pay);

        $count_deliver = Db::table('fy_order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.order_status' => 1, 'fy_order.pay_status' => 1, 'fy_order_goods.is_send' => 0])
            ->count();
        $this->view->assign('count_deliver', $count_deliver);

        $count_refund = Db::table('fy_order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.order_status' => ['in', 5, 6], 'fy_order.pay_status' => 1])
            ->count();
        $this->view->assign('count_refund', $count_refund);

        $date = new \DateTime();
        $date->modify('this week');
        $first_day_of_week = $date->format('Y-m-d');
        $date->modify('this week +6 days');
        $end_day_of_week = $date->format('Y-m-d');
        $first_day_time = strtotime($first_day_of_week);
        $end_day_time = strtotime($end_day_of_week);
        //查询一周内访问人数
        $count_visitor = Model('LoginLog')->where('login_time', 'between', [$first_day_of_week, $end_day_of_week])->count('login_time');
        $this->view->assign('count_visitor', $count_visitor);

        //查询一周内成交客户
        $count_accomplish = Db::table('fy_order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['order_status' => 8, 'create_time' => ['between', [$first_day_time, $end_day_time]]])
            ->count('order_status');
        $this->view->assign('count_accomplish', $count_accomplish);

        //查询一周内支付的订单
        $count_pay_accomplish = Db::table('fy_order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['order_status' => 1, 'pay_status' => 1, 'create_time' => ['between', [$first_day_time, $end_day_time]]])
            ->count('order_status');
        $this->view->assign('count_pay_accomplish', $count_pay_accomplish);

        //查询公告
        $notice_list = Model('Notice')->where(['status' => 1, 'isdelete' => 0])->select();
        $this->view->assign("notice_list", $notice_list);
        return $this->view->fetch();
    }
}