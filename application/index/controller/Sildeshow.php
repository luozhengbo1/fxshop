<?php
namespace app\index\controller;
use think\Db;
class SildeShow
{

    public function getSildeShow($num='6')
    {
        $model = Db::name('silde_show');
        $list = $model
            -> where(['status'=>1,'isdelete'=>'0'])
            ->order('orderby DESC,create_time desc')
            ->limit($num)
            ->select();
        return json($list);
    }

}

