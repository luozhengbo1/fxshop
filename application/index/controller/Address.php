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
            $user = session('wx_user');
            //根据openid查id
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
        } else {
            return $this->view->fetch();
        }
    }

    /**
     * 新增收货地址
     */
    public function add()
    {
        $this->assign('titleName', "地址添加");
        if ($this->request->isAjax()) {
            $user = session('wx_user');
            $data = $this->request->post();
            //根据openid查id
            $user_data = Db::table('fy_customer')
                ->field('id')
                ->where('openid', $user['openid'])
                ->find();
            $uid = $user_data['id'];
            $time = time();
            $data = [
                'uid' => $uid,
                'name' => $data['name'],
                'mobile' => $data['mobile'],
                'address' => $data['address'],
                'street' => $data['street'],
                'addtime' => $time,
                'updatetime' => $time,
                'status' => 0
            ];
            Db::table('fy_customer_address')->insert($data);
        }else{
            return $this->view->fetch();
        }

    }

    /**
     * 编辑收货地址
     */
    public function edit()
    {
        $this->assign('titleName', "地址修改");

        if ($this->request->isAjax()) {
            $data = $this->request->post();
            $id = $data['id'];
            if($id){//修改

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
            }else{//添加

                $user = session('wx_user');
                //根据openid查id
                $user_data = Db::table('fy_customer')
                    ->field('id')
                    ->where('openid', $user['openid'])
                    ->find();
                $uid = $user_data['id'];
                $time = time();
                $data = [
                    'uid' => $uid,
                    'name' => $data['name'],
                    'mobile' => $data['mobile'],
                    'address' => $data['address'],
                    'street' => $data['street'],
                    'addtime' => $time,
                    'updatetime' => $time,
                    'status' => 0
                ];
                Db::table('fy_customer_address')->insert($data);
                return ajax_return('', '保存成功', 200);
            }

        } else {
            $id = $this->request->param('id');
            if(!$id){
                $this->assign('titleName', "地址添加");
            }
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
            Db::table('fy_customer_address')->delete($id);
            return ajax_return('', '删除成功', 200);
        }
    }
}