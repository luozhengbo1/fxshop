<?php
namespace app\index\controller;
use think\Controller;
use think\Db;

Class Notice extends Controller
{
    #获取所哟普的公告信息
    public  function  getNotice()
    {
        $model = Db::name('notice');
        $list = $model
            ->where(['status'=>'1','isdelete'=>'0'])
            ->order('orderby DESC, create_time desc')
            ->select();
        return ajax_return($list,'ok','200');
    }
}