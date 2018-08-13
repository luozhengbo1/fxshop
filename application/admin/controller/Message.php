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
            //检测特殊消息类型是否唯一
            $where=['type' => $data['type'], 'isdelete' => 0];
            $msg=$this->validateMsgType($where,$data['type']);

            if(!empty($msg)){
                return ajax_return_error($msg,200);
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
            //检测特殊消息类型是否唯一
            $where=['id' => ['not in', $data['id']], 'type' => $data['type'], 'isdelete' => 0];
            $msg=$this->validateMsgType($where,$data['type']);
            if(!empty($msg)){
                return ajax_return_error($msg,200);
            }
            // 验证
            if (class_exists($validateClass = \think\Loader::parseClass(\think\Config::get('app.validate_path'), 'validate', $controller))) {
                $validate = new $validateClass();
                if (!$validate->check($data)) {
                    return ajax_return_adv_error($validate->getError());
                }
            }

            // 更新数据
            if (
                class_exists($modelClass = \think\Loader::parseClass(\think\Config::get('app.model_path'), 'model', $this->parseCamelCase($controller)))
                || class_exists($modelClass = \think\Loader::parseClass(\think\Config::get('app.model_path'), 'model', $controller))
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

    /**
     * 验证特殊消息类型是否唯一
     * @param $where  查询条件
     * @param $type   消息类型
     */
    protected function validateMsgType($where,$type){
        $message_res = Model('Message')->where($where)->select();
        $msg='';
        if ($message_res) {
            if ($type == 1) {
                $msg='积分清零提醒消息模板只能有一个';
            } else if ($type == 2) {
                $msg='积分清零消息模板只能有一个';
            } else if ($type == 3) {
                $msg='生日消息模板只能有一个';
            }
        }
        return $msg;
    }

    /**
     * 消息发送
     */
    public function sendUser()
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
