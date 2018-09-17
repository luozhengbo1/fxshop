<?php

namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path'), EXT);

use app\admin\Controller;
use app\common\model\TaskLog;
use think\Db;

class CustomerTask extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];
    /**
     * 会员任务参与详情
     */
    public function detail()
    {
        $controller = $this->request->controller();
        // 查询单个任务的参与情况
        $id = $this->request->param('id');
        if (!$id) {
            throw new HttpException(404, "缺少参数ID");
        }
        $vo = $this->getModel($controller)->find($id);
        if (!$vo) {
            throw new HttpException(404, '该记录不存在');
        }
        $model_task = new TaskLog();
        $list_task_log = $model_task->alias('task')
            ->where('task_id', $id)
            ->join('fy_customer customer', 'task.uid=customer.id and customer.isdelete=0')
            ->paginate(10);
        $page = $list_task_log->render();
        // 模板变量赋值
        $this->view->assign('page', $page);
        $this->view->assign("task", $list_task_log);
        return $this->view->fetch('detail', ['id' => $id]);

    }

    /**
     * 会员参与任务信息一键导出
     */
    public function excel()
    {
        if ($this->request->isPost()) {
            $header = ['用户名', '任务名称', '参与时间', '完成状态', '获得奖励积分', '创建时间', '更新时间'];
            $data = \think\Db::name("customer_task_log")
                ->field("uid,task_id,time,status,reward_score,create_time,update_time")
                ->where('task_id', $_POST['id'])
                ->order("id desc")->select();
            //处理任务参与详情中的用户名、任务名称、时间、状态数据
            $user_list = Db::name('customer')->field('id,nickname')->select();
            $task_list = Db::name('customer_task')->field('id,name')->select();
            foreach ($data as &$v) {
                foreach ($user_list as $user_v) {
                    if ($v['uid'] == $user_v['id']) {
                        $v['uid'] = $user_v['nickname'];
                    }
                }
                foreach ($task_list as $task_v) {
                    if ($v['task_id'] == $task_v['id']) {
                        $v['task_id'] = $task_v['name'];
                    }
                }
                if (!empty($v['time'])) {
                    $v['time'] = date('Y-m-d H:i:s', $v['time']);
                }
                $v['create_time'] = date('Y-m-d H:i:s', $v['create_time']);
                $v['update_time'] = date('Y-m-d H:i:s', $v['update_time']);
                if ($v['status'] == 1) {
                    $v['status'] = '完成';
                } elseif ($v['status'] == 0) {
                    $v['status'] = '未完成';
                }
            }
            if ($error = \Excel::export($header, $data, "会员参与任务明细表", '2007')) {
                throw new Exception($error);
            }
        }
    }
}

