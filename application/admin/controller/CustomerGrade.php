<?php

namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path'), EXT);

use app\admin\Controller;
use think\Loader;
use think\Config;

class CustomerGrade extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    /**
     * 添加
     * @return mixed
     */
    public function add()
    {
        $controller = $this->request->controller();

        if ($this->request->isAjax()) {
            // 插入
            $data = $this->request->except(['id']);
            //将CheckBox数组的值转换为字符串
            if (isset($data['all'])) {
                $alls = $data['all'];
                $all = implode('<br/>', $alls);
                $data['all'] = $all;
            }

            // 验证结束经验值是否大于起始经验值
            if ($data['experience_end'] <= $data['experience_start']) {
                return ajax_return_adv_error('结束经验值不能小于或等于起始经验值');
            }
            // 验证经验值区间是否设置正确
            $model_grade = new \app\common\model\CustomerGrade();
            $list_grade = $model_grade->where('isdelete', 0)->select();
            $length=count($list_grade);
            for ($i = 0; $i < $length; $i++) {
                $item = $list_grade[$i]->toArray();
                //起始积分和结束积分均不能在数据库中的积分区间内
                if ($data['experience_start'] >= $item['experience_start'] && $data['experience_start'] <= $item['experience_end']) {
                    return ajax_return_adv_error('起始经验值不能在已有经验值区间内，请重新填写');
                } elseif ($data['experience_end'] >= $item['experience_start'] && $data['experience_end'] <= $item['experience_end']) {
                    return ajax_return_adv_error('结束经验值不能在已有经验值区间内，请重新填写');
                } elseif ($data['experience_start'] < $item['experience_start'] && $data['experience_end'] > $item['experience_end']) {
                    return ajax_return_adv_error('包含已有的经验值区间，请重新填写');
                }
            }

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
            //将CheckBox数组的值转换为字符串
            if (isset($data['all'])) {
                $alls = $data['all'];
                $all = implode('<br/>', $alls);
                $data['all'] = $all;
            }
            // 验证
            if ($data['experience_end'] <= $data['experience_start']) {
                return ajax_return_adv_error('结束经验值不能小于或等于起始经验值');
            }

            $model_grade = new \app\common\model\CustomerGrade();
            $list_grade = $model_grade->where('isdelete', 0)->select();
            $length = count($list_grade);
            for ($i = 0; $i < $length; $i++) {
                $item = $list_grade[$i]->toArray();
                //从数据库中取得的本条数据不参与区间验证，防止将取得的数据的结束积分修改为更小失败
                if ($data['id'] != $item['id']) {
                    if ($data['experience_start'] >= $item['experience_start'] && $data['experience_start'] <= $item['experience_end']) {
                        return ajax_return_adv_error('起始经验值不能在已有经验值区间内，请重新填写');
                    } elseif ($data['experience_end'] >= $item['experience_start'] && $data['experience_end'] <= $item['experience_end']) {
                        return ajax_return_adv_error('结束经验值不能在已有经验值区间内，请重新填写');
                    } elseif ($data['experience_start'] < $item['experience_start'] && $data['experience_end'] > $item['experience_end']) {
                        return ajax_return_adv_error('包含已有的经验值区间，请重新填写');
                    }
                }
            }

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
