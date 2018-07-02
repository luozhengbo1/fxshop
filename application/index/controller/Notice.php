<?php
namespace app\index\controller;
use think\Controller;
use think\Db;

Class Notice extends Mustlogin
{
    protected  $model;
    public function  __construct()
    {
        parent::__construct();
        $this->model = Db::name('notice');
    }

    #获取所哟普的公告信息
    public  function  getNotice()
    {
        $list = $this->model
            ->where(['status'=>'1','isdelete'=>'0'])
            ->order('orderby DESC, create_time desc')
            ->select();
        return ajax_return($list,'ok','200');
    }
    #列表
    public function index()
    {
        $list = $this->model
            ->where(['status'=>'1','isdelete'=>'0'])
            ->order('orderby DESC, create_time desc')
            ->select();
       $this->assign('list',$list);
        return  $this->view->fetch();

    }
    #详情
    public function detail()
    {
        $id = $this->request->param('id');
        if(!$id){
            return $this->error('缺少参数id');
        }
        $notice = $this->model->where(['id'=>$id,'status'=>1,'isdelete'=>'0'])->find();
        $this->view->assign('notice',$notice);
        return $this->view->fetch();
    }


}