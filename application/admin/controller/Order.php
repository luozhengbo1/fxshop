<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;
use think\Db;

class Order extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    protected function filter(&$map)
    {
        if ($this->request->param("order_id")) {
            $map['order_id'] = ["like", "%" . $this->request->param("order_id") . "%"];
        }
        if ($this->request->param("order_status")) {
            $map['order_status'] = $this->request->param("order_status");
        }
    }

    public function  index()
    {
        $model = $this->getModel();

        // 列表过滤器，生成查询Map对象
        $map = $this->search($model, [$this->fieldIsDelete => $this::$isdelete]);

        // 特殊过滤器，后缀是方法名的
        $actionFilter = 'filter' . $this->request->action();
        if (method_exists($this, $actionFilter)) {
            $this->$actionFilter($map);
        }
        // 自定义过滤器
        if (method_exists($this, 'filter')) {
            $this->filter($map);
        }
//        $userList = Db::name('admin_user')->where(['isdelete'=>0])->select();
//        dump($userList);die;
        $this->datalist($model, $map);
//        echo    $model->getLastSql(); die;
        return $this->  view->fetch();
    }
}
