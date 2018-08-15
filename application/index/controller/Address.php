<?php
/**
 * 用户地址控制器
 */

namespace app\index\controller;

use think\Controller;
use think\Db;

class Address extends Mustlogin
{

    /**
     * 获取用户id
     */
    protected function getUid()
    {
        //根据openid查id
        $user = session('wx_user');
        $user_data = Db::table('fy_customer')
            ->field('id')
            ->where('openid', $user['openid'])
            ->find();
        return $user_data['id'];
    }

    /**
     * 获取地址列表
     */
    public function index($page = "1", $size = "10")
    {
        $this->assign('titleName', "地址列表");
        if ($this->request->isAjax()) {
            $uid = $this->getUid();
            //根据uid=id查询所有地址
            $address_list = Db::table('fy_customer_address')
                ->where('uid', $uid)
                ->page($page, $size)
                ->select();
            $this->view->assign('address_list', $address_list);
            return ajax_return($address_list, 'ok', '200');
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
            $time = time();
            $save_data = [
                'name' => $data['name'],
                'mobile' => $data['mobile'],
                'address' => $data['address'],
                'street' => $data['street'],
                'updatetime' => $time
            ];
            //若前端通过ajax传递了参数id，则进行编辑操作
            if ($id) {
                Db::table('fy_customer_address')->where('id', $id)->update($save_data);
                return ajax_return('', '保存成功', 200);
            } else {
                //若前端没有传递参数id，则进行新增操作
                $uid = $this->getUid();
                $save_data['uid'] = $uid;
                $save_data['addtime'] = $time;
                $save_data['status'] = 0;
                //若新增的地址为第一条，则设为默认地址
                $useraddress = Db::name('customer_address')->where(['uid' => $uid])->find();
                if (empty($useraddress)) {
                    $save_data['status'] = 1;
                }
                //插入新增的地址
                Db::table('fy_customer_address')->insert($save_data);

                $msg = $this->getScore();
                if ($msg == "") {
                    $msg = "新增成功";
                }
                return ajax_return('', $msg, 200);
            }
        } else {
            //若只是跳转页面，则获取前端的地址id
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
            $res = Db::table('fy_customer_address')->where('id', $id)->find();
            //删除后将最新一条地址设为默认地址
            Db::table('fy_customer_address')->delete($id);
            if ($res['status'] == 1) {
                $address = Db::table('fy_customer_address')->where(['uid' => $res['uid']])->order('updatetime', 'desc')->find();
                Db::table('fy_customer_address')->where('id', $address['id'])->update(['status' => 1]);
            }
            return ajax_return('', '删除成功', 200);
        }
    }


    /**
     * 设置默认地址
     */
    public function setDefault()
    {
        if ($this->request->isAjax()) {
            $uid = $this->getUid();
            $data = $this->request->post();
            $id = $data['id'];
            if (!$id) {
                return $this->error('缺少参数id');
            }
            //若前端传递了参数id，则判断是否已为默认地址，若不是则设为默认地址
            $data = Db::table('fy_customer_address')->where('id', $id)->find();
            if ($data['status'] == 1) {
                return ajax_return('', '该地址已经是默认地址', 200);
            } else {
                $time = time();
                Db::table('fy_customer_address')->where('id', $id)->update(['status' => 1, 'updatetime' => $time]);
                Db::table('fy_customer_address')->where(['id' => ['not in', $id], 'uid' => $uid])->update(['status' => 0, 'updatetime' => $time]);


                $msg = $this->getScore();
                if ($msg == "") {
                    $msg = '设置默认地址成功';
                }
                return ajax_return('', $msg, 200);
            }
        }
    }

    public function getScore()
    {
        //如果用户信息都已经完善了，奖励100积分  $oldUser中信息没有完善   $userData中数据完善了，说明数据第一次完善 奖励100积分
        $user = session('wx_user');
        $userData = Db::table('fy_customer')->where('openid', $user['openid'])->find();
        $userDataStatus = !empty($userData['nickname']) && !empty($userData['mobile']) && !empty($userData['email']);//true 已完善
        $time = time();
        $msg = "";
        if ($userDataStatus) {
            $scoreLog = Db::table('fy_score_log')->where([
                'openid' => $user['openid'],
                'source' => 11,
            ])->find();
            // dump($scoreLog);
            // die;
            if (empty($scoreLog)) {
                $userData['score'] += 5;
                $msg = '信息已完善,恭喜获得5积分';
                Db::table('fy_score_log')->insert([
                    'uid' => $userData['id'],
                    'openid' => $userData['openid'],
                    'source' => 11,
                    'score' => 5,
                    'time' => $time
                ]);
            }
        }
        Db::table('fy_customer')->where('openid', $user['openid'])->update($userData);
        return $msg;
    }
}