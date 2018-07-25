<?php
/**
 * 会员中心控制器
 */

namespace app\index\controller;

use think\Controller;
use think\Db;

class Customer extends Mustlogin

{
    protected function getUid()
    {
        $user_session = session('wx_user');
        $user_data = Db::table('fy_customer')->where('openid', $user_session['openid'])->find();
        return $user_data['id'];
    }

    /**
     * 会员中心首页
     */
    public function customer()
    {
        //会员信息
        $user_session = session('wx_user');
        $user_data = Db::table('fy_customer')->where('openid', $user_session['openid'])->find();
        $this->assign('userdata', $user_data);

        //会员收藏数量
        $count_collect = Db::table('fy_customer_collect')
            ->where('uid', $user_data['id'])
            ->where('status', 1)->count();
        $this->assign('count_collect', $count_collect);

        //会员卡券数量
        $count_lottery = Db::table('fy_lottery_log')->where('uid', $user_data['id'])->count();
        $this->assign('count_lottery', $count_lottery);

        //会员订单数量
        #代付款
        $count_pay = Db::table('fy_order')
            ->join('fy_order_goods','fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.openid'=> $user_session['openid'], 'fy_order.order_status'=>0,'fy_order.pay_status'=>0])->count();
        #待发货
        $count_deliver = Db::table('fy_order')
            ->join('fy_order_goods','fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.openid'=> $user_session['openid'],'fy_order.order_status'=>1,'fy_order.pay_status'=>1,'fy_order_goods.is_send'=>0])
            ->count();
        #待收货
        $count_take_delivery = Db::table('fy_order')
            ->join('fy_order_goods','fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.openid'=> $user_session['openid'],'fy_order.order_status'=>1,'fy_order.pay_status'=>1,'fy_order_goods.is_send'=>1])
            ->count();
        #退货退款
        $count_refund = Db::table('fy_order')
            ->join('fy_order_goods','fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.openid'=> $user_session['openid'],'fy_order.order_status'=>['in',4],'fy_order.pay_status'=>1])
            ->count();
        $count_evaluate = Db::table('fy_order')
            ->join('fy_order_goods','fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.openid'=> $user_session['openid'],'fy_order.order_status'=>1,'fy_order.pay_status'=>1,'fy_order_goods.is_send'=>2])
            ->count();
        $this->assign('count_pay', $count_pay);
        $this->assign('count_deliver', $count_deliver);
        $this->assign('count_take_delivery', $count_take_delivery);
        $this->assign('count_refund', $count_refund);
        $this->assign('count_evaluate', $count_evaluate);
        $this->view->assign('param', $param = $this->request->param('param'));
        $this->assign('titleName', "会员中心");
        return $this->view->fetch();
    }

    /**
     * 收藏夹列表
     */
    public function collect_list($page = '1', $size = '10')
    {
        $this->assign('titleName', '收藏夹');
        if ($this->request->isAjax()) {
            //查询用户id
            $uid = $this->getUid();
            //根据customer.id=collect.uid查询用户收藏的所有商品信息（goods.id=collect.goods_id）
            $list_collect = Db::table('fy_customer_collect')
                ->alias('collect')
                ->join('fy_customer customer', "collect.uid = customer.id  and customer.id=$uid")
                ->join('fy_goods goods', "collect.goods_id = goods.id")
                ->field('collect.uid,goods.id,goods.name,goods.main_image,goods.status,goods.basic_price')
                ->page($page, $size)
                ->where('collect.status', '1')
                ->select();
            //判断用户收藏列表是否为空
            if ($list_collect) {
                $this->view->assign('list_collect', $list_collect);
                return ajax_return($list_collect, 'OK', 200);
            } else {
                return ajax_return('', '您还没有收藏商品哦', 203);
            }
        } else {
            return $this->view->fetch('goodsCollect');
        }
    }

    /**
     * 取消收藏
     */
    public function collect_cancel($id)
    {
        if ($this->request->isAjax()) {
            $uid = $this->getUid();
            $data = $this->request->post();
            $goods_id = $id;
            if (!$goods_id) {
                return $this->error('缺少参数id');
            }
            //取消指定用户的指定收藏内容
            Db::table('fy_customer_collect')->where('uid', $uid)->where('goods_id', $goods_id)->setField('status', '0');
            return ajax_return('', '取消收藏成功', 200);
        }
    }

    /**
     * 添加收藏
     */
    public function collect_update()
    {
        if ($this->request->isAjax()) {
            $data = $this->request->post();
            $uid = $this->getUid();
            //若前端通过ajax传递了参数id，则进行编辑操作
            $collect = Db::table('fy_customer_collect')
                ->where(['uid' => $uid, 'goods_id' => $data['goods_id']])
                ->find();
            //  dump($collect);
            $time = time();
            if (!empty($collect)) {
                //更新操作
                if ($collect['status'] == 1) {
                    //已经收藏的     取消收藏
                    $data = [
                        'status' => 0,
                        'addtime' => $time
                    ];
                    $msg = '已取消收藏该商品';
                } else if ($collect['status'] == 0) {
                    //未收藏的     添加收藏
                    $data = [
                        'status' => 1,
                        'addtime' => $time
                    ];
                    $msg = '已收藏该商品';
                }
                Db::table('fy_customer_collect')->where('id', $collect['id'])->update($data);
                return ajax_return($data, $msg, 200);

            } else {
                //保存操作
                $data = [
                    'status' => 1,
                    'uid' => $uid,
                    'goods_id' => $data['goods_id'],
                    'addtime' => $time
                ];
                Db::table('fy_customer_collect')->insert($data);
                //dump('添加');
                return ajax_return($data, '已收藏该商品', 200);
            }

        }
    }

    public function collect_detail($goods_id)
    {
        $uid = $this->getUid();
        $collect = Db::table('fy_customer_collect')->where(['uid' => $uid, 'goods_id' => $goods_id])->find();
        return ajax_return($collect, '', 200);
    }

    /**
     * 签到
     */
    public function my_sign()
    {
        //根据openid在customer表中查询id,nickname,score,continuity_day
        $user = session('wx_user');
        $userData = Db::table('fy_customer')->where('openid', $user['openid'])->find();
        if ($this->request->isAjax()) {
            $time = time();
            $today_start = strtotime(date('Y-m-d', $time) . ' 00:00:00');
            $today_end = strtotime(date('Y-m-d', $time) . ' 23:59:59');
            //查询用户今天是否已签到
            $res = Db::table('fy_customer_sign')
                ->where('uid', $userData['id'])
                ->where('addtime', 'between', [$today_start, $today_end])
                ->find();
            if ($res) {
                return ajax_return('', '今天已经签过了', 204);
                die;
            } else {
                $save = [
                    'addtime' => $time,
                    'uid' => $userData['id'],
                    'score' => 2,
                    'reward_score' => 0
                ];
                //判断用户是否第一次签到?continue_day=1，score+1插入customer表,addtime，uid，score=1,reward_score=0 插入sign表
                $res = Db::table('fy_customer_sign')->where('uid', $userData['id'])->select();
                if (empty($res)) {
                    //第一次签到
                    Db::table('fy_customer')->where('openid', $user['openid'])->setField('continuity_day', 1);
                    Db::table('fy_customer')->where('openid', $user['openid'])->setInc('score', 2);
                    Db::table('fy_customer_sign')->insert($save);
//                    //新增日志记录
                    $sign_id = Db::table('fy_customer_sign')->field('id')->where('uid', $userData['id'])->where('addtime', $time)->find();
                    Db::table('fy_score_log')->insert([
                        'uid' => $userData['id'],
                        'openid' => $user['openid'],
                        'source_id' => $sign_id['id'],
                        'source' => 2,
                        'score' => 2,
                        'time' => $time
                    ]);
                    return ajax_return('', "签到成功", 200);
                    exit;
                } else {
                    //判断前一天是否签到
                    $beforeSign = Db::table('fy_customer_sign')->where('uid', $userData['id'])->order('addtime', 'desc')->find();//获取最新一条签到记录
                    $noSignDay1 = (strtotime(date('Y-m-d') . '23:59:59') - strtotime(date('Y-m-d', $beforeSign['addtime']) . ' 00:00:00')) / 86400;//2天
                    $noSignDay2 = (strtotime(date('Y-m-d') . '23:59:59') - strtotime(date('Y-m-d', $beforeSign['addtime']) . ' 23:59:59')) / 86400;//1天
                    //前一天未签到，continue_day重置为1，score+1更新到customer表
                    if (floor($noSignDay1) > 1 && $noSignDay2 > 1 && floor($noSignDay1) == $noSignDay2) {
                        Db::table('fy_customer')->where('openid', $user['openid'])->setField('continuity_day', 1);
                        Db::table('fy_customer')->where('openid', $user['openid'])->setInc('score', 2);
                        Db::table('fy_customer_sign')->insert($save);
                        //新增日志记录
                        $sign_id = Db::table('fy_customer_sign')->field('id')->where('uid', $userData['id'])->where('addtime', $time)->find();
                        Db::table('fy_score_log')->insert([
                            'uid' => $userData['id'],
                            'openid' => $user['openid'],
                            'source_id' => $sign_id['id'],
                            'source' => 2,
                            'score' => 2,
                            'time' => $time
                        ]);
                        return ajax_return('', '签到成功', 200);
                    } else {
                        /**
                         * 签到规则
                         * 连续签到3天，一次性奖励5积分。
                         * 连续签到7天，一次性奖励15积分。
                         * 连续签到15天，一次性奖励30积分。
                         * */
                        $score = 0;
                        //判断今天签到后是否满足奖励条件
                        switch ($userData['continuity_day']) {
                            case '2':
                                $score = 5;
                                break;
                            case '6':
                                $score = 15;
                                break;
                            case '14':
                                $score = 30;
                                break;
                        }
                        //满足奖励条件：continue_day+1，score+1+reward_score更新到customer表，score=1,reward_score=相应的奖励积分插入到customer_sign表
                        if ($score) {
                            Db::table('fy_customer')->where('openid', $user['openid'])->setInc('score', $score + 2);
                            Db::table('fy_customer')->where('openid', $user['openid'])->setInc('continuity_day', 1);
                            $newSave = [
                                'addtime' => $time,
                                'uid' => $userData['id'],
                                'score' => 2,
                                'reward_score' => $score
                            ];
                            Db::table('fy_customer_sign')->insert($newSave);
                            //新增日志记录
                            $sign_id = Db::table('fy_customer_sign')->field('id')->where('uid', $userData['id'])->where('addtime', $time)->find();
                            Db::table('fy_score_log')->insert([
                                'uid' => $userData['id'],
                                'openid' => $user['openid'],
                                'source_id' => $sign_id['id'],
                                'source' => 2,
                                'score' => 2 + $score,
                                'time' => $time
                            ]);
                        } else {
                            //是否已达到最大连续签到天数？continue_day重置为1
                            if ($userData['continuity_day'] == 15) {
                                Db::table('fy_customer')->where('openid', $user['openid'])->setField('continuity_day', 1);
                            } else {
                                Db::table('fy_customer')->where('openid', $user['openid'])->setInc('continuity_day', 1);
                            }
                            Db::table('fy_customer')->where('openid', $user['openid'])->setInc('score', 2);
                            Db::table('fy_customer_sign')->insert($save);
                            //新增日志记录
                            $sign_id = Db::table('fy_customer_sign')->field('id')->where('uid', $userData['id'])->where('addtime', $time)->find();
                            Db::table('fy_score_log')->insert([
                                'uid' => $userData['id'],
                                'openid' => $user['openid'],
                                'source_id' => $sign_id['id'],
                                'source' => 2,
                                'score' => 2,
                                'time' => $time
                            ]);
                        }
                        return ajax_return('', '签到成功', 200);
                    }
                }
            }
        } else {
            $time = time();
            $today_start = strtotime(date('Y-m-d', $time) . ' 00:00:00');
            $today_end = strtotime(date('Y-m-d', $time) . ' 23:59:59');
            $res = Db::table('fy_customer_sign')
                ->where('uid', $userData['id'])
                ->where('addtime', 'between', [$today_start, $today_end])
                ->find();
            $this->assign('flag', $res ? 1 : 0);
            $this->assign('user', $userData);
            $this->assign('titleName', '签到');
            return $this->view->fetch('mysign');
        }
    }

    /**
     * 设置
     */
    public function myset()
    {
        $this->assign('titleName', "设置");
        $user = session('wx_user');
        $userData = Db::table('fy_customer')->where('openid', $user['openid'])->find();
        $userAddress = Db::table('fy_customer_address')->where(
            [ 'uid'=>$userData['id'],'status'=>1]
        )->find();
        //dump($userAddress);
        $this->assign('userData', $userData);
        $this->assign('userAddress', $userAddress);
        return $this->view->fetch();
    }

    /**
     * 活动中心
     */
    public function myactivity($page = '1', $size = '4')
    {
        if ($this->request->isAjax()) {
            $uid = $this->getUid();
            $activity_list = Db::table('fy_customer_activity_log')
                ->alias('log')
                ->join('fy_activity activity', 'log.activity_id=activity.id')
                ->field('log.*,activity.main_pic,activity.start_date,activity.end_date,activity.url')
                ->where('uid', $uid)
                ->page($page, $size)
                ->order('activity.end_date', 'desc')
                ->select();
            if ($activity_list) {
                return ajax_return($activity_list, 'OK', 200);
            } else {
                return ajax_return('123', '没有参与过活动', 204);
            }
        } else {
            $this->assign('titleName', "我的活动中心");
            return $this->view->fetch("myActivity");
        }
    }

    /**
     * 我的钱包
     */
    public function mywallet($page='1',$size='4')
    {
        $user_session = session('wx_user');
        $user_data = Db::table('fy_customer')->where('openid', $user_session['openid'])->find();
        $this->assign('user_data',$user_data);
        //到交易记录表中查询交易记录
//        if($this->request->isAjax()){
//
//
//        }
        $this->assign('titleName', "我的钱包");
        return $this->view->fetch("myWallet");
    }

    /**
     * 会员权益
     */
    public function memberbenefits(){
        $this->assign('titleName', "会员权益");
        if ($this->request->isAjax()) {

        }else{
            return $this->view->fetch("memberBenefits");
        }

    }

    /**
     * 会员权益规则
     */
    public function memberrule(){
        $this->assign('titleName', "会员权益规则");
        return $this->view->fetch("memberRule");
    }

    /**
     * 会员权益
     */
    public function userinfo(){
        $this->assign('titleName', "完善用户信息");
        $user = session('wx_user');
        $userData = Db::table('fy_customer')->where('openid', $user['openid'])->find();
        $userAddress = Db::table('fy_customer_address')->where(
            [ 'uid'=>$userData['id'],'status'=>1]
        )->find();
        //dump($userAddress);
        $this->assign('userData', $userData);
        $this->assign('userAddress', $userAddress);
        //dump($userData);
        return $this->view->fetch("userInfo");
    }
    /**
     * 用户信息修改
     */
    public function userInfoEdit(){
        $this->assign('titleName', "修改信息");
        $user = session('wx_user');
        $userData = Db::table('fy_customer')->where('openid', $user['openid'])->find();
        $oldUser = $userData;
        $userAddress = Db::table('fy_customer_address')->where(
            [ 'uid'=>$userData['id'],'status'=>1]
        )->find();
        if ($this->request->isAjax()) {
            $nickname = $this->request->param('nickname');
            $mobile = $this->request->param('mobile');
            $email = $this->request->param('email');
            if(!empty($nickname)) $userData['nickname'] = $nickname;
            if(!empty($mobile)) $userData['mobile'] = $mobile;
            if(!empty($email)) $userData['email'] = $email;
            if(empty($nickname) && empty($mobile) && empty($email)) return ajax_return('', '修改数据不能为空', 200);

            //如果用户信息都已经完善了，奖励100积分  $oldUser中信息没有完善   $userData中数据完善了，说明数据第一次完善 奖励100积分
            $oldUserStatus = empty($oldUser['nickname']) || empty($oldUser['mobile']) || empty($oldUser['email'])|| empty($userAddress['id']);// true未完善
            $userDataStatus =  !empty($userData['nickname']) && !empty($userData['mobile']) && !empty($userData['email']) && !empty($userAddress['id']);//true 已完善
            //dump($oldUserStatus);
            //dump($userDataStatus);
            $msg ='修改成功';
            $time = time();
            if($oldUserStatus && $userDataStatus){
                $userData['score'] +=100;
                $msg ='信息已完善,恭喜获得100积分';
                Db::table('fy_score_log')->insert([
                    'uid' => $userData['id'],
                    'openid' => $userData['openid'],
                    'source' => 11,
                    'score' => 100,
                    'time' => $time
                ]);
            }
            Db::table('fy_customer')->where('openid', $user['openid'])->update($userData);
            return ajax_return('', $msg, 200);
        } else {

            //dump($userAddress);
            $this->assign('userData', $userData);
            $this->assign('userAddress', $userAddress);
            //dump($userData);
            return $this->view->fetch("userInfoEdit");
        }
    }

    /**
     * 赚积分
     */
    public function getscore(){
        $this->assign('titleName', "赚积分");
        return $this->view->fetch("getScore");
    }

    /**
     * 消息中心
     */
    public function message($page = '1', $size = '4')
    {
        $this->assign('titleName', "个人消息 ");
        if ($this->request->isAjax()) {
            $user_session = session('wx_user');
            $message_list = Db::table('fy_message_user')
                ->alias('u')
                ->join('fy_message m', 'u.message_id=m.id')
                ->order('u.create_time','desc')
                ->where(['u.openid' => $user_session['openid'], 'm.status' => 1, 'm.isdelete' => 0, 'm.is_send' => 1])
                ->page($page, $size)
                ->select();
            return ajax_return($message_list, 'OK', 200);
        } else {
            return $this->view->fetch();
        }
    }
}