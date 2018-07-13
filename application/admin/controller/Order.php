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
        if ($this->request->param("customer_name")) {
            $map['fy_order.customer_name'] = ["like", "%" . $this->request->param("customer_name") . "%"];
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
        if($_SESSION['think']['auth_id']!=1){
            $map['fy_order.user_id'] = $_SESSION['think']['auth_id'];
        }
        $map['isdelete'] =0;
        $userList = Db::name('admin_user')->where(['isdelete'=>0,'id'=>['>',1]])->select();
        $orderList = Db::name('order')
           ->field('fy_order.id,
            fy_order.order_id,fy_order.order_status,fy_order.total_price,fy_order.customer_name,fy_order.customer_name,fy_order.create_time,fy_order.pay_time,
            fy_order_goods.*, fy_goods_attribute.store,fy_goods_attribute.price')
            ->join( 'fy_order_goods','fy_order_goods.order_id=fy_order.order_id','left')
            ->order('fy_order.create_time desc')
            ->where($map)
            ->group('fy_order.order_id')
            ->paginate(20);
        $this->view->assign ('userList',$userList);
        $this->view->assign('list',$orderList);
        return $this->  view->fetch();
    }

    public function orderDetail()
    {
        $id = $this->request->param('id');
        if(!$id){
            return $this->error('缺少参数订单id');
        }
        $orderDetail = Db::name('order')
            ->field(' fy_order.id,
            fy_order.order_id,fy_order.order_status,fy_order.total_price,fy_order.customer_name,fy_order.customer_name,fy_order.create_time,fy_order.pay_time,
            fy_order_goods.*, fy_goods_attribute.store,fy_goods_attribute.price')
            ->join('fy_order_goods','fy_order_goods.order_id=fy_order.order_id','left')
            ->join('fy_goods_attribute','fy_order_goods.sku_id=fy_goods_attribute.id','left')
            ->where(['fy_order.order_id'=>$id])
            ->select();

        $address = Db::name('customer_address')
            ->where(['id'=>$orderDetail[0]['address_id']])
            ->find();

        foreach (  $orderDetail as $k=> $v){
            $orderDetail[$k]['goods_detail'] = json_decode($orderDetail[$k]['goods_detail'],true);
        }
        $this->view->assign('address',$address);
        $this->view->assign('orderDetail',$orderDetail);
        return $this->view->fetch('orderdetail');
    }

    #添加物流信息
    public function addPost()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            if(!$data['id']){
                return ajax_return_error('缺少参数id');
            }
            $res = Db::name('order_goods')
                ->where(['id'=>$data['id']])
                ->update([
                    'logistics_name'=>$data['logistics_name'],
                    'logistics_number'=>$data['logistics_number']
                ]);
            if($res){
                #确认物流，提醒买家
                return ajax_return('','操作成功','200');
            }else{
                return ajax_return('','操作失败','500');
            }
        }
    }
    public function delete()
    {
        dump($this->request->post());die;
        return $this->updateField($this->fieldIsDelete, 1, "移动到回收站成功");
    }


    #确认发货
    public  function  sureSend()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            if(!$data['id']){
                return ajax_return_error('缺少参数id');
            }
            $order = Db::name('order') ->where(['order_id'=>$data['id']])->find();
            if($order['pay_status']!=1){
                return ajax_return_error('付款了才可以发货');
            }
            $res = Db::name('order')
                ->where(['order_id'=>$data['id']])
                ->update([
                    'order_status'=>2
                ]);
            if($res){
                #确认物流，提醒买家
                return ajax_return('','操作成功','200');
            }else{
                return ajax_return('','操作失败','500');
            }
        }

    }

}
