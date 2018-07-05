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
    public function index($page = "1", $size = "10")
    {
        $this->assign('titleName', "地址列表");
        if ($this->request->isAjax()) {
            $data = $this->request->post();
            $id = $data['id'];
            //若前端传递了参数id，则将该条地址设为默认地址
            if ($id) {
                $data = Db::table('fy_customer_address')->where('id', $id)->find();
                if ($data['status'] == 0) {
                    return ajax_return('', '该地址已经是默认地址', 202);
                } else {
                    Db::table('fy_customer_address')->where('id', $id)->setField('status', 1);
                    return ajax_return('', '设置默认地址成功', 200);
                }
            } else {
                //根据openid查id
                $user = session('wx_user');
                $user_data = Db::table('fy_customer')
                    ->field('id')
                    ->where('openid', $user['openid'])
                    ->find();
                //根据uid=id查询所有地址
                $address_list = Db::table('fy_customer_address')
                    ->where('uid', $user_data['id'])
                    ->page($page, $size)
                    ->select();
                $this->view->assign('address_list', $address_list);
                return ajax_return($address_list, 'ok', '200');
            }
        } else {
            return $this->view->fetch();
        }
    }

    /**
     * 新增、编辑收货地址
     */
    public function edit()
    {
        $this->assign('titleName', "地址修改");
        if ($this->request->isAjax()) {
            $data = $this->request->post();
            $id = $data['id'];
            //若前端通过ajax传递了参数id，则进行编辑操作
            if ($id) {
                $time = time();
                $data = [
                    'name' => $data['name'],
                    'mobile' => $data['mobile'],
                    'address' => $data['address'],
                    'street' => $data['street'],
                    'updatetime' => $time
                ];
                Db::table('fy_customer_address')->where('id', $id)->update($data);
                return ajax_return('', '保存成功', 200);
            } else {
                //若前端没有传递参数id，则进行新增操作
                $user = session('wx_user');
                //根据openid查id
                $user_data = Db::table('fy_customer')
                    ->field('id')
                    ->where('openid', $user['openid'])
                    ->find();
                $uid = $user_data['id'];
                $time = time();
                $data = [
                    'uid' => $user_data['id'],
                    'name' => $data['name'],
                    'mobile' => $data['mobile'],
                    'address' => $data['address'],
                    'street' => $data['street'],
                    'addtime' => $time,
                    'updatetime' => $time,
                    'status' => 0
                ];
                Db::table('fy_customer_address')->insert($data);
                return ajax_return('', '新增成功', 200);
            }
        } else {
            //若前端没有ajax请求，则获取前端的地址id
            $id = $this->request->param('id');
            //若id不存在，则标题为地址添加
            if (!$id) {
                $this->assign('titleName', "地址添加");
            }
            //若id存在，则查找该条地址数据，并渲染到模板
            $addressData = Db::table("fy_customer_address")->where('id', $id)->find();
            $this->view->assign("addressData", $addressData);
            return $this->view->fetch();
        }
    }

    /**
     * 删除单个收货地址
     */
    public function delete()
    {
        if ($this->request->isAjax()) {
            $data = $this->request->post();
            $id = $data['id'];
            if (!$id) {
                return $this->error('缺少参数id');
            }
            Db::table('fy_customer_address')->delete($id);
            return ajax_return('', '删除成功', 200);
        }
    }
}