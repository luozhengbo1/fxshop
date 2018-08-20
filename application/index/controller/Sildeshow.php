<?php
namespace app\index\controller;
use think\Db;
class SildeShow
{

    public function getSildeShow($num='6')
    {
        $list = Db::name('silde_show')
            ->field('id,pic,name,orderby,create_time,update_time,status,url,isdelete')
            -> where(['status'=>1,'isdelete'=>'0'])
            ->order('orderby DESC,create_time desc')
            ->limit($num)
            ->select();
        return $list;
    }

}

