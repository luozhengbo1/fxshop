<?php

namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path'), EXT);

use app\admin\Controller;
use think\Config;
use think\Db;
use think\Loader;
use think\Request;

class CustomerGradeDesc extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    /**
     * 添加
     */
    public function add()
    {
        $controller = $this->request->controller();
        if ($this->request->isAjax()) {
            // 插入
            $data = $this->request->except(['id']);
            //根据类型检测出是否有会员等级规则、会员升级攻略、会员权益说明
            $grade_desc_res = Model('CustomerGradeDesc')->where(['type' => $data['type'], 'isdelete' => 0])->select();
            if ($grade_desc_res) {
                if ($data['type'] == 1) {
                    return ajax_return_error('会员等级规则模板只能有一个', '200');
                } else if ($data['type'] == 2) {
                    return ajax_return_error('会员升级攻略模板只能有一个', '200');
                } else if ($data['type'] == 3) {
                    return ajax_return_error('会员权益说明模板只能有一个', '200');
                }
            }
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
            $grade_list = Model('CustomerGradeDesc')->where('isdelete', 0)->select();
            foreach ($grade_list as $item) {
                $item = $item->toArray();
                //不与本身做对比，避免出现编辑不成功
                if ($data['id'] != $item['id']) {
                    $grade_desc_res = Model('CustomerGradeDesc')->where(['id' => ['not in', $data['id']], 'type' => $data['type'], 'isdelete' => 0])->select();
                    if ($grade_desc_res) {
                        //若修改的类型在数据库中存在，提示错误信息
                        if ($grade_desc_res) {
                            if ($data['type'] == $item['type']) {
                                return ajax_return_error('会员等级规则模板只能有一个！', 200);
                            } elseif ($data['type'] == 2) {
                                return ajax_return_error('会员升级攻略模板只能有一个！', 200);
                            } elseif ($data['type'] == 3) {
                                return ajax_return_error('会员权益说明模板只能有一个！', 200);
                            }
                        }
                    }
                }
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
}
