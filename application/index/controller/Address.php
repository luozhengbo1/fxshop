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
    public function list_address()
    {
        $user = session('wx-user');
        //根据openid查id
        $user_data = Db::table('fy_customer')
            ->field('id')
            ->where('openid', $user['openid'])
            ->find();
        //根据uid=id查询所有地址
        $address_list = Db::table('fy_customer_address')
            ->where('uid', $user_data['id'])
            ->select();
        $this->view->assign('address_list', $address_list);
        return $this->view->fetch('addresslist');
    }

    /**
     * 新增收货地址
     */
    public function add_address()
    {
        if ($this->request->isAjax()) {
            $user = session('wx-user');
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
            return ajax_return('', '新增成功!', 200);
        }

    }

    /**
     * 编辑收货地址
     */
    public function edit_address()
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
            return ajax_return('','更新成功！',200);
        }

    }

    /**
     * 删除单个收货地址
     */
    public function delete_address()
    {
        if ($this->request->isAjax()) {
            $data = $this->request->post();
            Db::table('fy_customer_address')->delete($data['id']);
            return ajax_return('', '删除成功!', 200);
        }
    }
}