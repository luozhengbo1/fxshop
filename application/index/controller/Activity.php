<?php
namespace app\index\controller;
use think\Controller;
use think\Db;

Class Activity extends Mustlogin
{
    protected  $model;
    public function  __construct()
    {
        parent::__construct();
       // $this->model = Db::name('notice');
    }

    public function activity()
    {
        $this->assign('titleName', "活动中心");
        if($this->request->isAjax()){
            $page = $this->request->param('page');
            $size = $this->request->param('size');
            $activity = Db::name('activity')
                ->where(['isdelete'=>0,'status'=>1])
                ->order('fy_activity.end_date desc')
                ->page($page,$size)
                ->select();
            return ajax_return($activity,'','200');
        }else{
            return $this->view->fetch();
        }
    }
    #详情
    public function detail($id)
    {
        $this->assign('titleName', "活动详情");

        $activity = Db::name('activity')
            ->where(['isdelete' => 0, 'status' => 1, 'id' => $id])
            ->find();
        $this->view->assign('activity',$activity);
        return $this->view->fetch();
    }


}