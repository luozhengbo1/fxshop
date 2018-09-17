<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;
use \think\Config;
use \think\Loader;
use \think\Db;

class FxSet extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    /**
     * 默认恢复操作
     */
    public function resume()
    {
       $fxSetList = Db::name('fx_set')->select();
        Db::name('fx_set')->where(['id'=>['<>',$this->request->param('id')],'status'=>1])->update(['status'=>0]);
        Db::name('fx_set')->where(['id'=>$this->request->param('id')])->update(['status'=>1]);
        return ajax_return('','操作成功','200','');
    }
}
