<?php
/**
 * 用户地址控制器
 */

namespace app\index\controller;

use think\Controller;
use think\Db;

class Address extends Controller
{

    /**
     * 获取地址列表
     */
    public function index()
    {
        if ($this->request->isAjax()) {
            $user = session('wx_user');
            $data = $this->request->post();
            $page = $data['page'] * $data['size'] - 4;
            $size = $data['size'];
            //根据openid查id
            $user_data = Db::table('fy_customer')
                ->field('id')
                ->where('openid', $user['openid'])
                ->find();
            //根据uid=id查询所有地址
            $address_list = Db::table('fy_customer_address')
                ->where('uid', $user_data['id'])
                ->limit($page, $size)
                ->select();
            $this->view->assign('address_list', $address_list);
            return $this->view->fetch('addresslist');
        }
    }

    /**
     * 新增收货地址
     */
    public function add()
    {
        if ($this->request->isAjax()) {
            $user = session('wx_user');
            $data = $this->request->post();
            //根据openid查id
            $user_data = Db::table('fy_customer')
                ->field('id')
                ->where('openid', $user['openid'])
                ->find();
            $time = time();
            $data = [
                'uid' => $user_data['id'],
                'name' => $data['name'],
                'mobile' => $data['mobile'],
                'address' => $data['address'],
                'street' => $data['street'],
                'addtime' => $time,
                'updatetime' => $time
            ];
            Db::table('fy_customer_address')->insert($data);
        }

    }

    /**
     * 编辑收货地址
     */
    public function edit()
    {
        if ($this->request->isAjax()) {
            $data = $this->request->post();
            $time = time();
            $data = [
                'name' => $data['name'],
                'mobile' => $data['mobile'],
                'address' => $data['address'],
                'street' => $data['street'],
                'updatetime' => $time
            ];
            Db::table('fy_customer_address')->where('id', $data['id'])->update($data);
        }
    }

    /**
     * 删除单个收货地址
     */
    public function delete()
    {
        if ($this->request->isAjax()) {
            $data = $this->request->post();
            Db::table('fy_customer_address')->delete($data['id']);
        }
    }
}