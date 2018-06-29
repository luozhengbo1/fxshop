<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
class SildeShow extends Controller
{
    public function getSildeShow()
    {
        $model = Db::name('silde_show');
        $list = $model
            -> where(['status'=>1,'isdelete'=>'0'])
            ->order('orderby DESC,create_time desc')
            ->limit(6)
            ->select();
        return json($list);
    }

}

