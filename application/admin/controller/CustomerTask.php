<?php

namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path'), EXT);

use app\admin\Controller;
use app\common\model\TaskAchievement;

class CustomerTask extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    /**
     * 会员信息详情
     */
    public function detail()
    {
        $controller = $this->request->controller();
        // 查询单个任务的参与情况
        $id = $this->request->param('id');
        $model_task = new TaskAchievement();
        $list_task_achive = $model_task->alias('task')
            ->where('task_id', $id)
            ->join('fy_customer customer', 'task.uid=customer.id and customer.isdelete=0')
            ->select();
        if (!$id) {
            throw new HttpException(404, "缺少参数ID");
        }
        $vo = $this->getModel($controller)->find($id);
        if (!$vo) {
            throw new HttpException(404, '该记录不存在');
        }

        $this->view->assign("task", $list_task_achive);
        return $this->view->fetch('detail',['id'=>$id]);

    }

    /**
     * 会员参与任务信息一键导出
     */
    public function excel()
    {
        if ($this->request->isPost()) {
            $id = $_POST['id'];
            $header = ['用户ID', '任务ID', '参与时间','完成状态', '获得奖励积分', '创建时间', '更新时间'];
            $data = \think\Db::name("task_achievement")
                ->field("uid,task_id,time,status,reward_score,create_time,update_time")
                ->where('task_id',$id)
                ->order("id desc")->select();
            if ($error = \Excel::export($header, $data, "会员参与任务明细表", '2007')) {
                throw new Exception($error);
            }
        }
    }
}

