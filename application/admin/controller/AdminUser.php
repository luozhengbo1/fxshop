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
     * 添加
     * @return mixed
     */
    public function add()
    {
        $controller = $this->request->controller();
        if ($this->request->isAjax()) {
            $data = $this->request->post();
            // 验证
            if (class_exists($validateClass = Loader::parseClass(Config::get('app.validate_path'), 'validate', $controller))) {
                $validate = new $validateClass();
                if (!$validate->check($data)) {
                    return ajax_return_adv_error($validate->getError());
                }
            }

            // 写入数据
            if (
                class_exists($modelClass = Loader::parseClass(Config::get('app.model_path'), 'model', $this->parseCamelCase($controller)))
                || class_exists($modelClass = Loader::parseClass(Config::get('app.model_path'), 'model', $controller))
            ) {
                //使用模型写入，可以在模型中定义更高级的操作
                $model = new $modelClass();
                $ret = $model->isUpdate(false)->save($data);
            } else {
                // 简单的直接使用db写入
                Db::startTrans();
                try {
                    $model = Db::name($this->parseTable($controller));
                    $ret = $model->insert($data);
                    // 提交事务
                    Db::commit();
                } catch (\Exception $e) {
                    // 回滚事务
                    Db::rollback();

                    return ajax_return_adv_error($e->getMessage());
                }
            }
            //与customer表绑定
            $res = Db::name('customer')->alias('c')->join('fy_admin_user au', 'c.openid=au.openid')->field('c.id c_id,au.id au_id')->find();
            Db::name('customer')->where('id', $res['c_id'])->update(['merchant_id' => $res['au_id']]);
            return ajax_return_adv('添加成功');
        } else {
            // 添加
            return $this->view->fetch(isset($this->template) ? $this->template : 'edit');
        }
    }

    /**
     * 编辑
     * @return mixed
     */
    public function edit()
    {
        $controller = $this->request->controller();

        if ($this->request->isAjax()) {
            // 更新
            $data = $this->request->post();
            if (!$data['id']) {
                return ajax_return_adv_error("缺少参数ID");
            }
            // 验证
            if (class_exists($validateClass = Loader::parseClass(Config::get('app.validate_path'), 'validate', $controller))) {
                $validate = new $validateClass();
                if (!$validate->check($data)) {
                    return ajax_return_adv_error($validate->getError());
                }
            }
            // 更新数据
            if (
                class_exists($modelClass = Loader::parseClass(Config::get('app.model_path'), 'model', $this->parseCamelCase($controller)))
                || class_exists($modelClass = Loader::parseClass(Config::get('app.model_path'), 'model', $controller))
            ) {
                // 使用模型更新，可以在模型中定义更高级的操作
                $model = new $modelClass();
                $ret = $model->isUpdate(true)->save($data, ['id' => $data['id']]);
            } else {
                // 简单的直接使用db更新
                Db::startTrans();
                try {
                    $model = Db::name($this->parseTable($controller));
                    $ret = $model->where('id', $data['id'])->update($data);
                    // 提交事务
                    Db::commit();
                } catch (\Exception $e) {
                    // 回滚事务
                    Db::rollback();

                    return ajax_return_adv_error($e->getMessage());
                }
            }
            //与customer表绑定
            $account = $this->request->param('account');
            $res1 = Db::name('admin_user')->field('id,openid')->where('account', $account)->find();
            $res2 = Db::name('customer')->field('id')->where('openid', $res1['openid'])->find();
            Db::name('customer')->where('id', $res2['id'])->update(['merchant_id' => $res1['id']]);
            return ajax_return_adv("编辑成功");
        } else {
            // 编辑
            $id = $this->request->param('id');
            if (!$id) {
                throw new HttpException(404, "缺少参数ID");
            }
            $vo = $this->getModel($controller)->find($id);
            if (!$vo) {
                throw new HttpException(404, '该记录不存在');
            }

            $this->view->assign("vo", $vo);

            return $this->view->fetch();
        }
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