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
            $map['fy_order.order_id'] = ["like", "%" . $this->request->param("order_id") . "%"];
        }
        if ($this->request->param("order_status")) {
            $map['fy_order.order_status'] = $this->request->param("order_status");
        }
        #
        if ($this->request->param("user_id")) {
            $map['fy_order.user_id'] = $this->request->param("user_id");
        }
        if ($this->request->param("create_time_start") || $this->request->param("create_time_end") ) {
            $map['fy_order.create_time'] = [
                'between',
                [
                    strtotime($this->request->param("create_time_start")),
                    strtotime($this->request->param("create_time_end"))
                ]
            ];
        }

    }

    public function  index()
    {
        $model = $this->getModel();

        // 列表过滤器，生成查询Map对象
        #表单搜获
//        $map = $this->search($model, [$this->fieldIsDelete => $this::$isdelete]);

        // 特殊过滤器，后缀是方法名的
        #search 搜索
        $actionFilter = 'filter' . $this->request->action();
        if (method_exists($this, $actionFilter)) {
            $this->$actionFilter($map);
        }
        // 自定义过滤器
        if (method_exists($this, 'filter')) {
            $this->filter($map);
        }
        $userList = Db::name('admin_user')->where(['isdelete'=>0,'id'=>['>',1]])->select();
        $orderList = Db::name('order')
            ->join( 'fy_order_goods','fy_order_goods.order_id=fy_order.order_id','left')
            ->order('fy_order.create_time desc')
            ->where($map)
            ->group('fy_order.order_id')
            ->paginate(20);
//       dump($orderList);
//        foreach ($orderList as $k=>$v){
//            $orderList[$k]['goods_detail'] = json_decode($v['buy'],true);
//        }
        $this->view->assign ('userList',$userList);
        $this->view->assign('list',$orderList);
        return $this->  view->fetch();
    }

    public function orderDetail()
    {
        
    }

}
