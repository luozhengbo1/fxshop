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
    public  function  getNotice($page="1",$size="10")
    {
        $list = $this->model
            ->where(['status'=>'1','isdelete'=>'0'])
            ->order('orderby DESC, create_time desc')
            ->page($page,$size)
            ->select();
        if(empty($list)){
            return ajax_return('','no','500');
        }else{
            foreach ($list as $k=>$v){
                $list[$k]['create_time'] = date('Y-m-d H:i:s',$v['create_time']);
                $list[$k]['update_time'] = date('Y-m-d H:i:s',$v['update_time']);
            }
            return ajax_return($list,'ok','200');
        }
    }
    #列表
    public function index()
    {
        $list = $this->model
            ->where(['status'=>'1','isdelete'=>'0'])
            ->order('orderby DESC, create_time desc')
            ->select();
        foreach ($list as $k=>$v){
            $list[$k]['create_time'] = date('Y-m-d H:i:s',$v['create_time']);
            $list[$k]['update_time'] = date('Y-m-d H:i:s',$v['update_time']);
        }
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