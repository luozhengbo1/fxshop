<?php

namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path'), EXT);

use app\admin\Controller;
use think\Db;

class Message extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    protected $beforeActionList = [
        'beforeEdit' => ['only' => 'edit'],
        'beforeAdd' => ['only' => 'add'],

    ];

    protected function filter(&$map)
    {
        if ($this->request->param("title")) {
            $map['title'] = ["like", "%" . $this->request->param("title") . "%"];
        }
    }

    public function beforeEdit()
    {
        $this->view->assign('lottery', $this->getLottery());
    }

    public function beforeAdd()
    {
        $this->view->assign('lottery', $this->getLottery());
    }

    public function getLottery()
    {
        $time = time();#在有效期内的优惠券
        $lottery = Db::name('lottery')
            ->where(['status' => 1, 'isdelete' => 0, 'expire_start_date' => ['<', $time], 'expire_end_date' => ['>', $time]])
            ->select();
        return $lottery;
    }

    /**
     * 添加
     */
    public function add()
    {
        $controller = $this->request->controller();

        if ($this->request->isAjax()) {
            // 插入
            $data = $this->request->except(['id']);
            //根据类型检测出是否有积分清零提醒、积分清零、生日消息
            $message_res = Model('Message')->where(['type' => $data['type'], 'isdelete' => 0])->select();
            if ($message_res) {
                if ($data['type'] == 1) {
                    return ajax_return_error('积分清零提醒消息模板只能有一个', '200');
                } else if ($data['type'] == 2) {
                    return ajax_return_error('积分清零消息模板只能有一个', '200');
                } else if ($data['type'] == 3) {
                    return ajax_return_error('生日消息模板只能有一个', '200');
                }
            }

            // 验证
            if (class_exists($validateClass = \think\Loader::parseClass(\think\Config::get('app.validate_path'), 'validate', $controller))) {
                $validate = new $validateClass();
                if (!$validate->check($data)) {
                    return ajax_return_adv_error($validate->getError());
                }
            }


            // 写入数据
            if (
                class_exists($modelClass = \think\Loader::parseClass(\think\Config::get('app.model_path'), 'model', $this->parseCamelCase($controller)))
                || class_exists($modelClass = \think\Loader::parseClass(\think\Config::get('app.model_path'), 'model', $controller))
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
            //根据类型检测出是否有积分清零提醒、积分清零、生日消息
            $message_list = Model('Message')->where('isdelete', 0)->select();
            foreach ($message_list as $item) {
                $item = $item->toArray();
                //不与本身做对比，避免出现编辑不成功
                if ($data['id'] != $item['id']) {
                    $message_res = Model('Message')->where(['id' => ['not in', $data['id']], 'type' => $data['type'], 'isdelete' => 0])->select();
                    if ($message_res) {
                        if ($data['type'] == 1) {
                            return ajax_return_error('积分清零提醒消息模板只能有一个', '200');
                        } else if ($data['type'] == 2) {
                            return ajax_return_error('积分清零消息模板只能有一个', '200');
                        } else if ($data['type'] == 3) {
                            return ajax_return_error('生日消息模板只能有一个', '200');
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

    public
    function sendUser()
    {
        if ($this->request->isAjax()) {
            $data = $this->request->post();
            if (!$data['id']) {
            }
            $check = Db::name('message')->where(['id' => $data['id']])->find();
            if ($check['status'] == 0) {
                return json(['msg' => '该消息已经被禁用，不可发送', 'code' => 401]);
            }
            $userList = Db::name('customer')->select();
            $arr = [];
            $time = time();
            foreach ($userList as $k => $v) {
                $arr[$k]['uid'] = $v['id'];
                $arr[$k]['openid'] = $v['openid'];
                $arr[$k]['message_id'] = $data['id'];
                $arr[$k]['create_time'] = $time;
            }
            $res = Db::name('message_user')->insertAll($arr);
            Db::name('message')->where(['id' => $data['id']])->update(['is_send' => 1]);
            if ($res) {
                return json(['msg' => '操作成功', 'code' => 200]);
            } else {
                return json(['msg' => '操作失败', 'code' => 500]);
            }
        }
    }
}
