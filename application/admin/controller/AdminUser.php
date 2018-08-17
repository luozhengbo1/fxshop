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
// 用户控制器
//-------------------------

namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path'), EXT);

use app\admin\Controller;
use think\Config;
use think\Db;
use think\Exception;
use think\Loader;

class AdminUser extends Controller
{
    use \app\admin\traits\controller\Controller;

//    protected static $blacklist = ['delete', 'clear', 'deleteforever', 'recyclebin', 'recycle'];

    protected function filter(&$map)
    {
        //不查询管理员
        $map['id'] = ["gt", 1];

        if ($this->request->param('realname')) {
            $map['realname'] = ["like", "%" . $this->request->param('realname') . "%"];
        }
        if ($this->request->param('account')) {
            $map['account'] = ["like", "%" . $this->request->param('account') . "%"];
        }
        if ($this->request->param('email')) {
            $map['email'] = ["like", "%" . $this->request->param('email') . "%"];
        }
        if ($this->request->param('mobile')) {
            $map['mobile'] = ["like", "%" . $this->request->param('mobile') . "%"];
        }
    }

    /**
     * 用户列表
     */
    public function user()
    {
        $user_id = $this->request->param('id/d');
        if ($this->request->isPost()) {
            if (!$user_id) {
                throw new Exception("缺少必要参数");
            }
            $db_user_customer=Db::name('admin_user_customer');
            //删除之前的角色绑定
            $db_user_customer->where('user_id',$user_id)->delete();
            //绑定新的角色
            $data=$this->request->post();
            if(isset($data['customer_id']) && !empty($data['customer_id']) && is_array($data['customer_id'])){
                $insert_all=[];
                foreach ($data['customer_id'] as $v) {
                    $insert_all[]=['user_id'=>$user_id,'customer_id'=>intval($v)];
                }
                $db_user_customer->insertAll($insert_all);
            }
            return ajax_return_adv('分配成功','');
        } else {
            if (!$user_id) {
                throw new Exception("缺少必要参数");
            }
            // 读取未被其他商户绑定的用户列表
            $list=Db::name("admin_user_customer")->field('customer_id')->where("user_id", 'not in',$user_id)->select();
            foreach ($list as $k=>$v) {
                $list[$k]=$v['customer_id'];
            }
            $list_customer_id=implode(',',$list);
            $list_customer = Db::name("customer")->field('id,nickname,username')->where('id','not in',$list_customer_id)->select();
            // 已授权用户
            $list_user_customer = Db::name("admin_user_customer")->where("user_id", $user_id)->select();
            $checks = filter_value($list_user_customer, "customer_id", true);

            $this->view->assign('list', $list_customer);
            $this->view->assign('checks', $checks);

            return $this->view->fetch();
        }
    }

    /**
     * 修改密码
     */
    public function password()
    {
        $id = $this->request->param('id/d');
        if ($this->request->isPost()) {
            //禁止修改管理员的密码，管理员id为1
            if ($id < 2) {
                return ajax_return_adv_error("缺少必要参数");
            }

            $password = $this->request->post('password');
            if (!$password) {
                return ajax_return_adv_error("密码不能为空");
            }
            if (false === Loader::model('AdminUser')->updatePassword($id, $password)) {
                return ajax_return_adv_error("密码修改失败");
            }
            return ajax_return_adv("密码已修改为{$password}", '');
        } else {
            // 禁止修改管理员的密码，管理员 id 为 1
            if ($id < 2) {
                throw new Exception("缺少必要参数");
            }

            return $this->view->fetch();
        }
    }

    /**
     * 禁用限制
     */
    protected function beforeForbid()
    {
        // 禁止禁用 Admin 模块,权限设置节点
        $this->filterId(1, '该用户不能被禁用', '=');
    }

    /**
     * 默认禁用操作
     */
    public function forbid()
    {
        //禁用的同时下架该商户名下所有商品
        $user_id = $this->request->param('id');
        Db::name('goods g')->join('fy_admin_user au', 'au.id=g.user_id')->where('au.id', $user_id)->update(['g.status' => 0]);
        return $this->updateField($this->fieldStatus, 0, "禁用成功");
    }


    /**
     * 默认恢复操作
     */
    public function resume()
    {
        //恢复的同时上架该商户名下所有商品
        $user_id = $this->request->param('id');
        Db::name('goods g')->join('fy_admin_user au', 'au.id=g.user_id')->where('au.id', $user_id)->update(['g.status' => 1]);
        return $this->updateField($this->fieldStatus, 1, "恢复成功");
    }
}