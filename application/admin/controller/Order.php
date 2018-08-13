<?php

namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path'), EXT);

use app\admin\Controller;
use app\common\behavior\OrderMessage;
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
        #0未支付1已支付2待评价，3待回复，6全部退款，7取消订单，8订单完成
        if ($this->request->param("order_status")) {
            $orderStatus = $this->request->param("order_status");
            if ($orderStatus == 99) {#未支付
                $map['fy_order.pay_status'] = 0;
                $map['fy_order.order_status'] = 0;
            }
            if ($orderStatus == 1) {#待发货
                $map['fy_order.pay_status'] = 1;
                $map['fy_order_goods.is_send'] = 0;
            }
            if ($orderStatus == 2) {#待收货
                $map['fy_order.pay_status'] = 1;
                $map['fy_order_goods.is_send'] = 1;
            }
            if ($orderStatus == 3) {#待退款
                $map['fy_order.pay_status'] = 1;
                $map['fy_order_goods.is_return'] = 1;
            }
            if ($orderStatus == 4) {#待评价
                $map['fy_order.pay_status'] = 1;
                $map['fy_order_goods.is_send'] = 2;
            }
            if ($orderStatus == 5) {#取消订单
                $map['fy_order.order_status'] = 7;
            }
            if ($orderStatus == 6) {#完成订单
                $map['fy_order.order_status'] = 8;
            }
        }
        #
        if ($this->request->param("user_id")) {
            $map['fy_order.user_id'] = $this->request->param("user_id");
        }
        if ($this->request->param("customer_name")) {
            $map['fy_order.customer_name'] = ["like", "%" . $this->request->param("customer_name") . "%"];
        }
        if ($this->request->param("create_time_start") || $this->request->param("create_time_end")) {
            $map['fy_order.create_time'] = [
                'between',
                [
                    strtotime($this->request->param("create_time_start")),
                    strtotime($this->request->param("create_time_end"))
                ]
            ];
        }


    }

    public function index()
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
        if ($_SESSION['think']['auth_id'] != 1) {
            $map['fy_order.user_id'] = $_SESSION['think']['auth_id'];
        }
        $map['fy_order.isdelete'] = 0;
//        dump($map);die;

        $userList = Db::name('admin_user')->where(['isdelete' => 0, 'id' => ['>', 1]])->select();
        $orderList = Db::name('order')
            ->field('fy_order.id,fy_order.buy_list,fy_order.address_id,fy_order.pay_status,fy_order.address_detail,
            fy_order.order_id,fy_order.order_status,fy_order.total_price,fy_order.customer_name,fy_order.customer_name,fy_order.create_time,fy_order.pay_time,
           fy_order_goods.after_sale_is, fy_order_goods.user_id,fy_order_goods.is_send, fy_order_goods.is_send,fy_order_goods.is_return')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id', 'left')
            ->order('fy_order.create_time desc')
            ->where($map)
            ->group('fy_order.order_id')
            ->paginate(5);
//        dump($orderList);
        // 获取分页显示
//        $page = $orderList->render();
        $this->view->assign('userList', $userList);
        $this->view->assign('list', $orderList);
//        $this->view->assign('page', $page);
        $this->view->assign('count', count($orderList));
//        dump($orderList);die;
        return $this->view->fetch();
    }

    /**
     * 回收站
     * @return mixed
     */
    public function recycleBin()
    {
//        $this::$isdelete= 1;
        $map['fy_order.isdelete'] = 1;
        $userList = Db::name('admin_user')->where(['isdelete' => 0, 'id' => ['>', 1]])->select();
        $orderList = Db::name('order')
            ->field('fy_order.id,fy_order.buy_list,fy_order.address_id,fy_order.pay_status,
            fy_order.order_id,fy_order.order_status,fy_order.total_price,fy_order.customer_name,fy_order.customer_name,fy_order.create_time,fy_order.pay_time,
            fy_order_goods.after_sale_is,fy_order_goods.user_id,fy_order_goods.is_send, fy_order_goods.is_send,fy_order_goods.is_return')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id', 'left')
            ->order('fy_order.create_time desc')
            ->where($map)
            ->group('fy_order.order_id')
            ->paginate(5);
//        dump($orderList);die;
        $this->view->assign('userList', $userList);
        $this->view->assign('list', $orderList);
        $this->view->assign('count', Db::name('order')->where($map)->count());
        return $this->view->fetch('indexrecyclebin');
    }


    public function orderDetail()
    {
        $id = $this->request->param('id');
//        dump($id);
        if (!$id) {
            return $this->error('缺少参数订单id');
        }
        $orderDetail = Db::name('order')
            ->field(' fy_order.id,fy_order.pay_status,
            fy_order.order_id,fy_order.order_status,fy_order.total_price,fy_order.customer_name,fy_order.customer_name,fy_order.create_time,fy_order.pay_time,
            fy_order_goods.*, fy_goods_attribute.store,fy_goods_attribute.price')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id', 'left')
            ->join('fy_goods_attribute', 'fy_order_goods.sku_id=fy_goods_attribute.id', 'left')
            ->where(['fy_order.id' => $id])
            ->select();
//        dump($id);
//        dump($orderDetail);die;
        $address = Db::name('customer_address')
            ->where(['id' => $orderDetail[0]['address_id']])
            ->find();

        foreach ($orderDetail as $k => $v) {
            $orderDetail[$k]['goods_detail'] = json_decode($orderDetail[$k]['goods_detail'], true);
        }
        $this->view->assign('address', $address);
        $this->view->assign('orderDetail', $orderDetail);
        return $this->view->fetch('orderdetail');
    }

    #添加物流信息
    public function addPost()
    {
        if ($this->request->isAjax()) {
            $data = $this->request->post();
            if (!$data['id']) {
                return ajax_return_error('缺少参数id');
            }
            $orderGoods = Db::name('order_goods')->where(['id' => $data['id']])->find();
//            dump($orderGoods);
            if ($orderGoods['is_return'] == 1 || $orderGoods['is_return'] == 2) {
                return ajax_return_error('退款单不能发货');
            }
            #付款成功通知
            include_once APP_PATH . "/index/controller/sendMsg/SDK/WeiXin.php";
            $orderGoods = Db::name('order_goods')->where(['id' => $data['id']])->find();
            $orderGoods['goods_detail'] = json_decode($orderGoods['goods_detail'], true);
            $address = Db::name('customer_address')->where(['id' => $orderGoods['address_id']])->find();
            $addressStr = $address['name'] . "   " . $address['mobile'] . "    " . $address['address'] . $address['street'];
            $wx = new \WeiXin();
            $wx->sendGoods($orderGoods['goods_detail']['name'], $orderGoods['openid'], $orderGoods['order_id'], $data['logistics_name'], $data['logistics_number'], $addressStr);
            $res = Db::name('order_goods')
                ->where(['id' => $data['id']])
                ->update([
                    'is_send' => 1,
                    'logistics_name' => $data['logistics_name'],
                    'logistics_number' => $data['logistics_number'],
                    'send_time' => time(),
                ]);
            if ($res) {
                #确认物流，提醒买家
                $order_message = new OrderMessage();
                $user_data = Db::table('fy_customer')->where('openid', $orderGoods['openid'])->find();
                $user_info = ['uid' => $user_data['id'], 'openid' => $user_data['openid']];

                $goods_data = '';
                $goods_data = $goods_data . '' . $orderGoods['goods_detail']['name'] . ' ' . $orderGoods['sku_val'] . '×' . $orderGoods['goods_num'];
                $goods_info = ['goods_data' => $goods_data];

                $order_data = Db::name('order_goods')->where(['id' => $data['id']])->find();
                $order_info = [
                    'order_id' => $order_data['order_id'],
                    'send_time' => $order_data['send_time'],
                    'logistics_name' => $order_data['logistics_name'],
                    'logistics_number' => $order_data['logistics_number'],
                    'address' => $addressStr
                ];

                $order_message->payMessage('deliver_success', $user_info, $goods_info, $order_info);
                return ajax_return('', '操作成功', '200');
            } else {
                return ajax_return('', '操作失败', '500');
            }
        }
    }

    public function editTotalPrice()
    {
        if ($this->request->isAjax()) {
            $data = $this->request->post();
            if (!$data['order_id']) {
                return ajax_return_error('缺少订单id');
            }
            if ($data['totalPrice'] < 0) {
                return ajax_return_error('订单总金额不能小于0');
            }
            $order = $this->getModel()->where(['order_id' => $data['order_id']])->find();
            if (!$order) {
                return ajax_return_error('参数异常');
            }
            include_once APP_PATH . "/index/controller/WxPaySDK/WxPay.Api.php";
            include_once APP_PATH . "/index/controller/WxPaySDK/WxPay.JsApiPay.php";
            include_once APP_PATH . "/index/controller/WxPaySDK/log.php";
            include_once APP_PATH . "/index/controller/WxPaySDK/WxPay.Config.php";
            $wxConfig = new \WxPayConfig();
            $orderId =$wxConfig->GetMerchantId().date("YmdHis");
            $res = $this->getModel()
                ->where(['order_id' => $data['order_id']])
                ->update(['total_price' => $data['totalPrice'], 'js_api_parameters' => '', 'prepay_id' => '', 'order_id' => $orderId, 'create_time' => time()]);#时间修改
            $res1 = Db::name('order_goods')->where(['order_id' => $data['order_id']])->update(['order_id' => $orderId]);
            if ($res && $res1) {
                return ajax_return_adv('修改成功', 'parent', '200');
            } else {
                return ajax_return('', '修改失败', '200');
            }

        }
    }

    #售后处理
    public function afterSaleHandle()
    {
        if ($this->request->isAjax()) {
            $data = $this->request->post();
            if (!$data['ogid'] || !$data['id'] || !$data['after_sale_type']) {
                return ajax_return('', '缺少参数');
            }
            $orderGoods = Db::name('order_goods')->where(['id' => $data['ogid']])->find();
            $orderGoods['goods_detail'] = json_decode($orderGoods['goods_detail'], true);
//            dump($data);die;

            if(!$orderGoods['after_handle_is']){ #未处理，进行处理
                Db::name('order_goods')->where(['id' => $data['ogid']])->update(['after_handle_is' => 1,'after_sale_is'=>2]);
                Db::name('after_sale_following')->where(['id' => $data['id']])
                    ->update(['shop_wuliu_address' => $data['shop_wuliu_address']
                        , 'handle_yes_no_time' => time()
                        , 'handle_time' => time()
                        , 'after_status' => 8
                        , 'yes_or_no' => 1]);#同意
                if ($data['after_sale_type'] == 3) {#退款
                    #通过退款，将该商品订单改为退款 状态，
                    #计算退款金额  将退款金额计算在订单表中， 修改字段is_return 为1 ，
                    #扣去奖券金额   #未使用优惠券直接退款商品价格 如果不包邮直接商品价格，
//                    if ($orderGoods['goods_detail']['settlement_type'] == 1) {
//                        $goodsAttribute = Db::name('goods_attribute')->field('price')->where(['id' => $orderGoods['sku_id']])->find();
//                        $returnMoney = $orderGoods['goods_num'] * $goodsAttribute['price'];
//                        #如果商品包邮，退款时减去邮费
//                        if ($orderGoods['goods_detail']['free_type'] == 0) {
//                            $returnMoney -= $orderGoods['goods_num'] * $orderGoods['goods_detail']['postage'];
//                        }
//                        if ($returnMoney < 0) $returnMoney = 0.01;
//                      $returnMoney = $goodsAttribute['price'];
//                        $res1 = Db::name('order_goods')->where([
//                            'order_id' => $data['order_id'],
//                            'id' => $data['id'],
//                        ])->update(['is_return' => 1, 'return_price' => $goodsAttribute['price'], 'is_send' => 7, 'after_sale_is' => 1]); # 待退款  3退款中 7退款中/退货退款
//                        $ordertmp = Db::name('order')->where([
//                            'order_id' => $orderGoods['order_id']])->find();
//                        #退款价
//                        $order = Db::name('order')->where('order_id', $orderGoods['order_id'])->find();
//                        $update = [];
//                        $update = ['return_price_all' => $goodsAttribute['price'] + $ordertmp['return_price_all']];
//                        $res = Db::name('order')
//                            ->where('order_id', $data['order_id'])->update($update);
//
//                        #总退款加上0未支付1已支付2待评价，3待回复，5部分退款，6全部退款，7取消订单，8订单完成
//                    }
                }
            } else {
                return ajax_return('', '已经处理过了', '200');
            }

            return ajax_return('', '处理成功', '200');
        }
    }

    #拒绝售后
    public function refuseAfterSale()
    {
        if ($this->request->isAjax()) {
            $data = $this->request->post();
            if (!$data['ogid'] || !$data['id'] || !$data['after_sale_type']) {
                return ajax_return('', '缺少参数');
            }
//            dump($data);die;
            $orderGoods = Db::name('order_goods')->where(['id' => $data['ogid']])->find();
            $orderGoods['goods_detail'] = json_decode($orderGoods['goods_detail'], true);
            if ($data['after_sale_type'] == 3) {#拒绝退款
                $goodsAttribute = Db::name('goods_attribute')->field('price')->where(['id' => $orderGoods['sku_id']])->find();
                $returnMoney = $orderGoods['goods_num'] * $goodsAttribute['price'];
                #如果商品包邮，退款时减去邮费
                if ($orderGoods['goods_detail']['free_type'] == 0) {
                    $returnMoney -= $orderGoods['goods_num'] * $orderGoods['goods_detail']['postage'];
                }
                if ($returnMoney < 0) $returnMoney = 0.01;
                $returnMoney = $goodsAttribute['price'];
                $res1 = Db::name('order_goods')->where([
                    'order_id' => $orderGoods['order_id'],
                    'id' => $data['id'],
                ])->update(['is_return' => 0, 'return_price' => 0, 'is_send' => 6]); # 0   6 完成 0 未提交
                $ordertmp = Db::name('order')->where([
                    'order_id' => $orderGoods['order_id']])->find();
                #退款价
                $order = Db::name('order')->where('order_id', $orderGoods['order_id'])->find();
                $update = [];
                $update = ['return_price_all' => $ordertmp['return_price_all'] - $goodsAttribute['price']];#减去退款价
                $res = Db::name('order')
                    ->where('order_id', $orderGoods['order_id'])->update($update);
                #总退款加上0未支付1已支付2待评价，3待回复，5部分退款，6全部退款，7取消订单，8订单完成
            } else {#维修和换货拒绝之后状态修改为完成
                $res1 = Db::name('order_goods')->where([
                    'order_id' => $orderGoods['order_id'],
                    'id' => $data['id'],
                ])->update(['is_send' => 6]);
            }
            if(!$orderGoods['after_handle_is']){ #未处理，进行处理
                Db::name('order_goods')->where(['id' => $data['ogid']])->update(['after_handle_is' => 1,'after_sale_is'=>'2']);#售后完成
                Db::name('after_sale_following')
                    ->where(['id' => $data['id']])
                    ->update(['refused_reason' => $data['refused_reason'],
                        'handle_yes_no_time' => time()
                        , 'handle_time' => time()
                        , 'yes_or_no' => 2
                        , 'after_status' => 2]);#不同意
            } else {

                return ajax_return('', '已经处理过了', '200');
            }
            return ajax_return('', '处理成功', '200');
        }

    }

    #商户确认收货
    public function shopSure()
    {
        if ($this->request->isAjax()) {
            $data = $this->request->post();
            if (!$data['ogid'] || !$data['id'] || !$data['after_sale_type']) {
                return ajax_return('', '缺少参数');
            }
            $orderGoods = Db::name('order_goods')->where(['id' => $data['ogid']])->find();
            $update = [];
            if ($data['after_sale_type'] == 1) {#换货 2 维修
                $update['after_status'] = 5;
            } else if ($data['after_sale_type'] == 2) { #
                #维修中
                $update['after_status'] = 4;
            }
            $update['handle_time'] = time();
            $update['shop_sure_get_time'] = time();
            $update['shop_sure_get_goods'] = 1;
            Db::name('after_sale_following')
                ->where(['id' => $data['id']])
                ->update($update);#换货
            return ajax_return('', '确认收货成功', '200');

        }

    }

    #商家发货中
    public function shopsSendGoods()
    {
        if ($this->request->isAjax()) {
            $data = $this->request->post();
            if (!$data['ogid'] || !$data['id'] || !$data['after_sale_type']) {
                return ajax_return('', '缺少参数');
            }
            $orderGoods = Db::name('order_goods')->where(['id' => $data['ogid']])->find();
            Db::name('after_sale_following')
                ->where(['id' => $data['id']])
                ->update(['after_status' => 6, "send_time" => time(), 'send_wuliu_type' => $data['send_wuliu_type'], 'send_wuliu_order' => $data['send_wuliu_order']]);#商家发货时间
            return ajax_return('', '发货成功', '200');
        }

    }

    # 微信退款
    public function refund()
    {
        if ($this->request->isAjax()) {
            include_once APP_PATH . '/index/controller/WxPaySDK/WxPay.Api.php';
            $data = $this->request->post();
            $order_id = $data['order_id'];
            $result = ['code' => 400, 'msg' => ''];

            if ($order_id) {
                # 确认退款
                if ($data['flag'] == "yes") {
                    $where = array('order_id' => $order_id);
                    $order = Db::name('order')
                        ->where([
                            'order_id' => $order_id,
                            'pay_status' => 1,
//                        'order_status'=>['in',[1,2,3]]
                        ])//支付状态//支付成功，和正在处理中的订单
                        ->find();
                    #如果订单在父订单中支付，需要找到父订单用父订单id发起退款
                    $orderId = substr($order_id, '0', strlen($order_id) - 4);
                    $orderAll = Db::name('order_all')->where(['order_id' => $orderId, 'status' => 1])->find();
                    if (empty($orderAll)) {
                        $orderId = $order_id;
                    } else {
                        $order['total_price'] = $orderAll['total_price'];
                    }
                    $orderGoods = Db::name('order_goods')->where(['id' => $data['id']])->find();
                    $orderGoods['goods_detail'] = json_decode($orderGoods['goods_detail'], true);
                    if ($orderGoods['is_return'] != 1) {
                        return ajax_return_error('没有退款单');
                    }
                    if ($orderGoods['real_pay_price'] <= 0) {
                        return ajax_return_error('退款金额不能小于0');
                    }
                    include_once APP_PATH . '/index/controller/WxPaySDK/WxPay.Config.php';
                    $wxConfig = new \WxPayConfig();
                    $merchid = $wxConfig->GetMerchantId();
                    if (!$order) {
                        $result['code'] = 401;
                        $result['msg'] = '没有退款订单';
                        file_put_contents("wx_refund_error.log", print_r($result, true) . "\r", 8);
                        return ajax_return_error('没有退款订单');
                    }
//                    dump($orderId);die;
                    $input = new \WxPayRefund();
                    $input->SetOut_trade_no($orderId);   //自己的订单号
                    //$input->SetTransaction_id($order['transaction_id']);  //微信官方生成的订单流水号，在支付成功中有返回
                    $input->SetOut_refund_no(uniqid() . time());   //退款单号
                    $input->SetTotal_fee($order['total_price'] * 100);   //订单标价金额，单位为分
                    $input->SetRefund_fee($orderGoods['real_pay_price'] * 100);  //退款总金额，订单总金额，单位为分，只能为整数
                    $input->SetOp_user_id($merchid);
                    $res = \WxPayApi::refund($wxConfig, $input);
                    //退款操作

                    if ($res['return_code'] == 'SUCCESS' && $res['result_code'] == "SUCCESS") {
                        file_put_contents("wx_refund_success.log", print_r($res, true) . "\r", 8);
                        //修改订单状态 将订单总金额减少退款金额
                        $orderData = Db::name('order')->field('total_price,buy_list')->where(['order_id' => $order_id])->find();
                        $decPrice = $orderData['total_price'] - $orderGoods['real_pay_price'];#减去订单总价
                        if ($decPrice < 0) $decPrice = 0;
                        $updateRes = Db::name('order')->where(['order_id' => $order_id])->update(['total_price' => $decPrice]);
                        Db::name('order_goods')->where(['id' => $data['id']])->update(['is_return' => 2, 'is_send' => 4]);#已退款，退货完成
                        $result['code'] = 200;
                        $result['msg'] = '退款成功';
                        #退款加上库存
                        $goodsAttribute = Db::name('goods_attribute')->where(['id' => $orderGoods['sku_id']])->find();
                        $storeRes = Db::name('goods_attribute')->where(['id' => $orderGoods['sku_id']])->update(['store' => $orderGoods['goods_num'] + $goodsAttribute['store']]);
//                    #退款通知
                        include_once APP_PATH . "/index/controller/sendMsg/SDK/WeiXin.php";
                        $wx = new \WeiXin();
                        $wx->refund($orderGoods['goods_detail']['name'], $orderGoods['openid'], $orderGoods['order_id'], $orderGoods['return_price']);
                        #交易记录 退款
                        $user = Db::name('customer')->where(['openid' => $orderGoods['openid']])->find();
                        $wx_pay_refund_log_insert = [];
                        $wx_pay_refund_log_insert['openid'] = $orderGoods['openid'];
                        $wx_pay_refund_log_insert['username'] = $user['nickname'];
                        $wx_pay_refund_log_insert['create_time'] = time();
                        $wx_pay_refund_log_insert['money'] = -$orderGoods['return_price'];
                        $wx_pay_refund_log_insert['type'] = 2;#退款
                        $wx_pay_refund_log_insert['order_id'] = $orderGoods['order_id'];
                        Db::name('wx_pay_refund_log')->insert($wx_pay_refund_log_insert);
                        //退款通知发送到商城
                        $order_message = new OrderMessage();
//                        dump($orderData);
                        $user_info = ['uid' => $user['id'], 'openid' => $user['openid']];
                        $buy_list = json_decode($orderData['buy_list'], true);
//                        dump($buy_list);die;
                        $goods_data = '';
                        foreach ($buy_list as $buy_item) {
                            $goods_data .= $buy_item['goods_name'] . ' ' . $buy_item['sku_val'] . '×' . $buy_item['num'] . '<br/>';
                        }
                        $goods_info = ['goods_data' => $goods_data];
                        $order_info = ['refund_price' => $orderGoods['return_price'], 'refund_num' => $orderGoods['order_id']];
                        $order_message->payMessage('refund_success', $user_info, $goods_info, $order_info);

                        return ajax_return('', '退款成功');
                    } else {
                        file_put_contents("wx_refund_error.log", print_r($res, true) . "\r", 8);
                        $result['code'] = 402;
                        $result['msg'] = $res['err_code_des'];
                        return ajax_return('', $res['err_code_des']);
                    }
                } else {#拒绝退款
                    $orderGoods = Db::name('order_goods')->where(['order_id' => $order_id])->find();
                    $is_send = ($orderGoods['logistics_name'] && $orderGoods['logistics_number']) ? 1 : 0;
                    $update = ['is_return' => 3, 'is_send' => $is_send];
                    Db::name('order_goods')->where(['order_id' => $order_id])->update($update);
                    #将订单中退款的总价减少。return_all
                    $order = Db::name('order')->where(['order_id' => $order_id])->find();
                    $decsPrice = $order['return_price_all'] - $orderGoods['return_price'];
                    $decsPrice = ($decsPrice < 0) ? $decsPrice : '0';
                    $res = Db::name('order')->where(['order_id' => $order_id])->update(['return_price_all' => $decsPrice]);
                    return ajax_return('', '拒绝退款成功', '200');
                }

            } else {
                $result['code'] = 404;
                $result['msg'] = '订单id不能为空';
//                file_put_contents("wx_refund_error.log",json_encode($result."\r"), 8);
                return ajax_return('', '订单id不能为空');
            }
        }

    }
    #退钱
    public function  refund1()
    {
        include_once APP_PATH . '/index/controller/WxPaySDK/WxPay.Config.php';
        $wxConfig = new \WxPayConfig();
        $merchid = $wxConfig->GetMerchantId();
        $orderId = "144121740220180813163551";
        $input = new \WxPayRefund();
        $input->SetOut_trade_no($orderId);   //自己的订单号
        //$input->SetTransaction_id($order['transaction_id']);  //微信官方生成的订单流水号，在支付成功中有返回
        $input->SetOut_refund_no(uniqid() . time());   //退款单号
        $input->SetTotal_fee($order['total_price'] * 100);   //订单标价金额，单位为分
        $input->SetRefund_fee($orderGoods['real_pay_price'] * 100);  //退款总金额，订单总金额，单位为分，只能为整数
        $input->SetOp_user_id($merchid);
        $res = \WxPayApi::refund($wxConfig, $input);

    }


}
