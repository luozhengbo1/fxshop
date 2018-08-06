<?php

namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path'), EXT);

use app\admin\Controller;
use think\Db;

class CustomerActivityLog extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    protected function filter(&$map)
    {
        //按活动名称搜索
        if ($this->request->param("activity_name")) {
            $map['act.name'] = ["like", "%" . $this->request->param("activity_name") . "%"];
        }
        //按用户名搜索
        if ($this->request->param("username")) {
            $map['cus.nickname'] = ["like", "%" . $this->request->param("username") . "%"];
        }
        //按参与时间段搜索
        if ($this->request->param("starttime") && $this->request->param("endtime")) {
            $start = $this->request->param("starttime");
            $end = $this->request->param("endtime");
            $starttime = strtotime($start);
            $endtime = strtotime($end);
            $map['actlog.create_time'] = ["between", [$starttime, $endtime]];
            $map['actlog.update_time'] = ["between", [$starttime, $endtime]];
        }
        //按参与状态搜索
        if ($this->request->param("join_status")) {
            $map['actlog.status'] = $this->request->param("join_status");
        }
    }

    /**
     * 首页
     * @return mixed
     */
    public function index()
    {
        $model = $this->getModel();

        // 列表过滤器，生成查询Map对象
        $map = $this->search($model, [$this->fieldIsDelete => $this::$isdelete]);

        // 自定义过滤器
        if (method_exists($this, 'filter')) {
            $this->filter($map);
        }
        $list = $this->getModel()
            ->alias('actlog')
            ->field('actlog.*,cus.nickname,act.name activity_name')
            ->join('fy_activity act', 'actlog.activity_id = act.id')
            ->join('fy_customer cus', 'actlog.uid = cus.id')
            ->where($map)
            ->paginate(10);
        $page = $list->render();
        // 模板变量赋值
        $this->view->assign('page', $page);
        $this->view->assign('list', $list);
        return $this->view->fetch();
    }
}
