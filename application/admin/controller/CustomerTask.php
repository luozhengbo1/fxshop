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
        // 编辑
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

        return $this->view->fetch();

    }

    public function gettime()
    {
        $time1 = '2018-06-28 10:00:05';
        $strtime1 = strtotime($time1);
        dump($strtime1);
        $time2 = '2018-06-23 17:54:05';
        $strtime2 = strtotime($time2);
        dump($strtime2);
        $time3 = '2018-06-24 15:04:35';
        $strtime3 = strtotime($time3);
        dump($strtime3);
    }
}

