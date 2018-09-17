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

        //待处理事项
        $count_need_pay = Db::name('order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.order_status' => 0, 'fy_order.pay_status' => 0])->count();
        $this->view->assign('count_need_pay', $count_need_pay);

        $count_need_deliver = Db::name('order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.order_status' => 1, 'fy_order.pay_status' => 1, 'fy_order_goods.is_send' => 0])
            ->count();
        $this->view->assign('count_need_deliver', $count_need_deliver);

        $count_need_refund = Db::name('order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.order_status' => ['in', 5, 6], 'fy_order.pay_status' => 1])
            ->count();
        $this->view->assign('count_need_refund', $count_need_refund);

        $admin_data = Db::name('admin_user')->where('id', UID)->find();
        $count_need_drawcash=$admin_data['balance'];
        $this->view->assign('count_need_drawcash', $count_need_drawcash);

        //指标展示
        $count_visitor = Db::name('customer_login_log')
            ->field(['date_format(login_time,"%Y-%m-%d")' => 'days', 'count(id)' => 'count'])
            ->group('days')
            ->select();
        $count_finish = Db::name('order')
            ->field(['FROM_UNIXTIME(create_time,"%Y-%m-%d")' => 'days', 'count(id)' => 'count'])
            ->where('order_status', 8)
            ->group('days')
            ->select();
        $count_pay = Db::name('order')
            ->field(['FROM_UNIXTIME(create_time,"%Y-%m-%d")' => 'days', 'count(id)' => 'count'])
            ->where('pay_status', 1)
            ->group('days')
            ->select();
        $count_pay_money = Db::name('wx_pay_refund_log')
            ->field(['FROM_UNIXTIME(create_time,"%Y-%m-%d")' => 'days', 'sum(money)' => 'money'])
            ->where('isdelete', 0)
            ->group('days')
            ->select();
        foreach ($count_visitor as $k => $v) {
            $count_visitor[$k] = [strtotime($v['days']) * 1000, $v['count']];
        }
        foreach ($count_finish as $k => $v) {
            $count_finish[$k] = [strtotime($v['days']) * 1000, $v['count']];
        }
        foreach ($count_pay as $k => $v) {
            $count_pay[$k] = [strtotime($v['days']) * 1000, $v['count']];
        }
        foreach ($count_pay_money as $k => $v) {
            $count_pay_money[$k] = [strtotime($v['days']) * 1000, floatval($v['money'])];//注意将money转为float类型
        }
        $count_visitor = json_encode($count_visitor);
        $this->view->assign('count_visitor', $count_visitor);
        $count_finish = json_encode($count_finish);
        $this->view->assign('count_finish', $count_finish);
        $count_pay = json_encode($count_pay);
        $this->view->assign('count_pay', $count_pay);
        $count_pay_money = json_encode($count_pay_money);
        $this->view->assign('count_pay_money', $count_pay_money);

        //查询公告
        $notice_list = Model('Notice')->where(['status' => 1, 'isdelete' => 0])->select();
        $this->view->assign("notice_list", $notice_list);
        return $this->view->fetch();
    }

    /**
     * 清除缓存
     */
    public function clear() {
        if ($this->delete_dir_file(CACHE_PATH) || $this->delete_dir_file(TEMP_PATH)) {
           return ajax_return_adv('清除缓存成功');
        } else {
            return ajax_return_adv_error('清除缓存失败');
        }
    }
    /**
     * 循环删除目录和文件
     * @param string $dir_name
     * @return bool
     */
    public function delete_dir_file($dir_name) {
        $result = false;
        if(is_dir($dir_name)){
            if ($handle = opendir($dir_name)) {
                while (false !== ($item = readdir($handle))) {
                    if ($item != '.' && $item != '..') {
                        if (is_dir($dir_name . DS . $item)) {
                            $this->delete_dir_file($dir_name . DS . $item);
                        } else {
                            unlink($dir_name . DS . $item);
                        }
                    }
                }
                closedir($handle);
                if (rmdir($dir_name)) {
                    $result = true;
                }
            }
        }
        return $result;
    }


}