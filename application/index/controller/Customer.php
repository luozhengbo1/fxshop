<?php
/**
 * 会员中心控制器
 */

namespace app\index\controller;

use think\Controller;
use think\Db;

class Customer extends Mustlogin
{
    /**
     * 会员中心首页
     */
    public function customer()
    {
        //会员信息
        $user_data = $this->userInfo;
        //会员签到信息
        $beforeSign = Db::table('fy_customer_sign')->where('uid', $this->userInfo['id'])->order('addtime', 'desc')->find();//获取最新一条签到记录
        $noSignDay1 = (strtotime(date('Y-m-d') . '23:59:59') - strtotime(date('Y-m-d', $beforeSign['addtime']) . ' 00:00:00')) / 86400;//2天
        $noSignDay2 = (strtotime(date('Y-m-d') . '23:59:59') - strtotime(date('Y-m-d', $beforeSign['addtime']) . ' 23:59:59')) / 86400;//1天
        //前一天未签到，continue_day重置为0,将最新数据渲染到页面
        if (floor($noSignDay1) > 1 && $noSignDay2 > 1 && floor($noSignDay1) == $noSignDay2) {
            Db::table('fy_customer')->where('openid', $this->userInfo['openid'])->update(['continuity_day' => 0]);
            $user_sign_data = Db::table('fy_customer')->where('openid', $this->userInfo['openid'])->find();
            $this->assign('userdata', $user_sign_data);
        } else {
            $this->assign('userdata', $this->userInfo);
        }
        //会员收藏数量
        $count_collect = Db::table('fy_customer_collect')
            ->join('fy_goods', 'fy_goods.id=fy_customer_collect.goods_id')
            ->where('fy_customer_collect.uid', $user_data['id'])
            ->where('fy_customer_collect.status', 1)->count();
        $this->assign('count_collect', $count_collect);

        //会员卡券数量
        $count_lottery = Db::table('fy_lottery_log')->where('uid', $user_data['id'])->count();
        $this->assign('count_lottery', $count_lottery);

        //会员订单数量
        #代付款
        $count_pay = Db::table('fy_order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.openid' => $this->userInfo['openid'], 'fy_order.order_status' => 0, 'fy_order.pay_status' => 0])->count();
        #待发货
        $count_deliver = Db::table('fy_order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.openid' => $this->userInfo['openid'], 'fy_order.order_status' => 1, 'fy_order.pay_status' => 1, 'fy_order_goods.is_send' => 0])
            ->count();
        #待收货
        $count_take_delivery = Db::table('fy_order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.openid' => $this->userInfo['openid'], 'fy_order.pay_status' => 1, 'fy_order_goods.is_send' => 1])
            ->count();
        #退货退款
        $count_refund = Db::table('fy_order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.openid' => $this->userInfo['openid'], 'fy_order_goods.is_return' => 1, 'fy_order.pay_status' => 1])
            ->count();
        #待评价
        $count_evaluate = Db::table('fy_order')
            ->join('fy_order_goods', 'fy_order_goods.order_id=fy_order.order_id')
            ->where(['fy_order.openid' => $this->userInfo['openid'], 'fy_order.order_status' => 1, 'fy_order.pay_status' => 1, 'fy_order_goods.is_send' => 2])
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
        if ($this->request->isAjax()) {
            //查询用户id
            $uid = $this->userInfo['id'];
            //根据customer.id=collect.uid查询用户收藏的所有商品信息（goods.id=collect.goods_id）
            $list_collect = Db::table('fy_customer_collect')
                ->alias('collect')
                ->join('fy_customer customer', "collect.uid = customer.id  and customer.id=$uid")
                ->join('fy_goods goods', "collect.goods_id = goods.id")
                ->page($page, $size)
                ->where('collect.status', '1')
                ->select();
            //判断用户收藏列表是否为空
            return ajax_return($list_collect, 'OK', 200);
        } else {
            $this->assign('titleName', '收藏夹');
            return $this->view->fetch('goodsCollect');
        }
    }

    /**
     * 取消收藏
     */
    public function collect_cancel($id)
    {
        if ($this->request->isAjax()) {
            $uid = $this->userInfo['id'];
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
            $uid = $this->userInfo['id'];
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
                    $msg = '取消收藏';
                } else if ($collect['status'] == 0) {
                    //未收藏的     添加收藏
                    $data = [
                        'status' => 1,
                        'addtime' => $time
                    ];
                    $msg = '收藏成功';
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
                return ajax_return($data, '收藏成功', 200);
            }

        }
    }

    public function collect_detail($goods_id)
    {
        $uid = $this->userInfo['id'];
        $collect = Db::table('fy_customer_collect')->where(['uid' => $uid, 'goods_id' => $goods_id])->find();
        return ajax_return($collect, '', 200);
    }

    /**
     * 签到
     */
    public function my_sign()
    {
        //根据openid在customer表中查询id,nickname,score,continuity_day
        if ($this->request->isAjax()) {
            $time = time();
            $today_start = strtotime(date('Y-m-d', $time) . ' 00:00:00');
            $today_end = strtotime(date('Y-m-d', $time) . ' 23:59:59');
            //查询用户今天是否已签到
            $res = Db::table('fy_customer_sign')
                ->where('uid', $this->userInfo['id'])
                ->where('addtime', 'between', [$today_start, $today_end])
                ->find();
            if ($res) {
                return ajax_return('', '今天已经签过了', 204);
                die;
            } else {
                $save = [
                    'addtime' => $time,
                    'uid' => $this->userInfo['id'],
                    'score' => 2,
                    'reward_score' => 0
                ];
                //判断用户是否第一次签到?continue_day=1，score+1插入customer表,addtime，uid，score=1,reward_score=0 插入sign表
                $res = Db::table('fy_customer_sign')->where('uid', $this->userInfo['id'])->select();
                if (empty($res)) {
                    //第一次签到
                    Db::table('fy_customer')->where('openid', $this->userInfo['openid'])->setField('continuity_day', 1);
                    Db::table('fy_customer')->where('openid', $this->userInfo['openid'])->setInc('score', 2);
                    Db::table('fy_customer_sign')->insert($save);
//                    //新增日志记录
                    $sign_id = Db::table('fy_customer_sign')->field('id')->where('uid', $this->userInfo['id'])->where('addtime', $time)->find();
                    Db::table('fy_score_log')->insert([
                        'uid' => $this->userInfo['id'],
                        'openid' => $this->userInfo['openid'],
                        'source_id' => $sign_id['id'],
                        'source' => 2,
                        'score' => 2,
                        'time' => $time
                    ]);
                    return ajax_return('', "签到成功", 200);
                    exit;
                } else {
                    //判断前一天是否签到
                    $beforeSign = Db::table('fy_customer_sign')->where('uid', $this->userInfo['id'])->order('addtime', 'desc')->find();//获取最新一条签到记录
                    $noSignDay1 = (strtotime(date('Y-m-d') . '23:59:59') - strtotime(date('Y-m-d', $beforeSign['addtime']) . ' 00:00:00')) / 86400;//2天
                    $noSignDay2 = (strtotime(date('Y-m-d') . '23:59:59') - strtotime(date('Y-m-d', $beforeSign['addtime']) . ' 23:59:59')) / 86400;//1天
                    //前一天未签到，continue_day重置为1，score+1更新到customer表
                    if (floor($noSignDay1) > 1 && $noSignDay2 > 1 && floor($noSignDay1) == $noSignDay2) {
                        Db::table('fy_customer')->where('openid', $this->userInfo['openid'])->setField('continuity_day', 1);
                        Db::table('fy_customer')->where('openid', $this->userInfo['openid'])->setInc('score', 2);
                        Db::table('fy_customer_sign')->insert($save);
                        //新增日志记录
                        $sign_id = Db::table('fy_customer_sign')->field('id')->where('uid', $this->userInfo['id'])->where('addtime', $time)->find();
                        Db::table('fy_score_log')->insert([
                            'uid' => $this->userInfo['id'],
                            'openid' => $this->userInfo['openid'],
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
                        switch ($this->userInfo['continuity_day']) {
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
                            Db::table('fy_customer')->where('openid', $this->userInfo['openid'])->setInc('score', $score + 2);
                            Db::table('fy_customer')->where('openid', $this->userInfo['openid'])->setInc('continuity_day', 1);
                            $newSave = [
                                'addtime' => $time,
                                'uid' => $this->userInfo['id'],
                                'score' => 2,
                                'reward_score' => $score
                            ];
                            Db::table('fy_customer_sign')->insert($newSave);
                            //新增日志记录
                            $sign_id = Db::table('fy_customer_sign')->field('id')->where('uid', $this->userInfo['id'])->where('addtime', $time)->find();
                            Db::table('fy_score_log')->insert([
                                'uid' => $this->userInfo['id'],
                                'openid' => $this->userInfo['openid'],
                                'source_id' => $sign_id['id'],
                                'source' => 2,
                                'score' => 2 + $score,
                                'time' => $time
                            ]);
                        } else {
                            //是否已达到最大连续签到天数？continue_day重置为1
                            if ($this->userInfo['continuity_day'] == 15) {
                                Db::table('fy_customer')->where('openid', $this->userInfo['openid'])->setField('continuity_day', 1);
                            } else {
                                Db::table('fy_customer')->where('openid', $this->userInfo['openid'])->setInc('continuity_day', 1);
                            }
                            Db::table('fy_customer')->where('openid', $this->userInfo['openid'])->setInc('score', 2);
                            Db::table('fy_customer_sign')->insert($save);
                            //新增日志记录
                            $sign_id = Db::table('fy_customer_sign')->field('id')->where('uid', $this->userInfo['id'])->where('addtime', $time)->find();
                            Db::table('fy_score_log')->insert([
                                'uid' => $this->userInfo['id'],
                                'openid' => $this->userInfo['openid'],
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
            //判断今天是否签到
            $time = time();
            $today_start = strtotime(date('Y-m-d', $time) . ' 00:00:00');
            $today_end = strtotime(date('Y-m-d', $time) . ' 23:59:59');
            $res = Db::table('fy_customer_sign')
                ->where('uid', $this->userInfo['id'])
                ->where('addtime', 'between', [$today_start, $today_end])
                ->find();
            $this->assign('flag', $res ? 1 : 0);

            //判断前一天是否签到
            $beforeSign = Db::table('fy_customer_sign')->where('uid', $this->userInfo['id'])->order('addtime', 'desc')->find();//获取最新一条签到记录
            $noSignDay1 = (strtotime(date('Y-m-d') . '23:59:59') - strtotime(date('Y-m-d', $beforeSign['addtime']) . ' 00:00:00')) / 86400;//2天
            $noSignDay2 = (strtotime(date('Y-m-d') . '23:59:59') - strtotime(date('Y-m-d', $beforeSign['addtime']) . ' 23:59:59')) / 86400;//1天
            //前一天未签到，continue_day重置为1，score+1更新到customer表
            if (floor($noSignDay1) > 1 && $noSignDay2 > 1 && floor($noSignDay1) == $noSignDay2) {
                $this->userInfo['continuity_day'] = 0;
            }
            $this->assign('user', $this->userInfo);
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
        $userData = Db::table('fy_customer')->where('openid', $this->userInfo['openid'])->find();
        $userAddress = Db::table('fy_customer_address')->where(
            ['uid' => $userData['id'], 'status' => 1]
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
            $uid = $this->userInfo['id'];
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
                return ajax_return('', '没有参与过活动', 200);
            }
        } else {
            $this->assign('titleName', "我的活动中心");
            return $this->view->fetch("myActivity");
        }
    }

    /**
     * 我的钱包
     */
    public function mywallet($page = '1', $size = '4')
    {
        //到交易记录表中查询交易记录
        if ($this->request->isAjax()) {
            $pay_record = Db::table('fy_wx_pay_refund_log')
                ->where(['isdelete' => 0, 'openid' => $this->userInfo['openid']])
                ->order('create_time', 'desc')
                ->page($page, $size)
                ->select();
           /* foreach ($pay_record as $k => $v) {
                $pay_record[$k]['day'] = date('d', $v['create_time']);
                $pay_record[$k]['month'] = date('m月', $v['create_time']);
                $pay_record[$k]['end_time'] = date("Y年m月", $v['create_time']);
            }
            //按时间对数据分组：时间为键值
            $res = array();
            foreach ($pay_record as $key => $val) {
                $res[$val['end_time']][] = $val;
            }
            //将分组情况赋给一个空数组以便返回
            $i = 0;
            $all_pay_record = array();
            foreach ($res as $item) {
                $all_pay_record[$i] = $item;
                //获取分组的时间
                $j = 0;
                $all_pay_record[$i]['record_month'] = $item[$j]['end_time'];
                //将money转为float类型并存入数组
                for ($t = 0; $t < count($item); $t++) {
                    $money[$t] = number_format(floatval($item[$t]['money']), '2');
                }
                //计算总计金额
                $total_money = 0;
                for ($y = 0; $y < count($item); $y++) {
                    $total_money = $total_money + $money[$y];
                }
                $all_pay_record[$i]['record_money'] = $total_money;
                //下一次计算的判断值自增
                if ($i < count($res)) {
                    $i++;
                }
            }*/
            return ajax_return($pay_record, 'OK', 200);
        } else {
            $user_data = Db::table('fy_customer')->where('openid', $this->userInfo['openid'])->find();
            $this->assign('user_data', $user_data);
            $this->assign('titleName', "我的钱包");
            return $this->view->fetch("myWallet");
        }
    }

    public function getTotalMoney($month,$year){
        $start_date=$year.'-'.$month;
        $start_date =strtotime($start_date);
        $end_date=$year.'-'.($month+1);
        $end_date =strtotime($end_date);
        $total_money = Db::table('fy_wx_pay_refund_log')
            ->field('sum(money) totalMoney')
            ->where(['isdelete' => 0, 'openid' => $this->userInfo['openid'],'create_time'=>['between',[$start_date,$end_date]]])
            ->select();
       // dump($total_money);
//        dump(date('Y-m-d H:i:s',$start_date));
//        dump($end_date);
//        dump(date('Y-m-d H:i:s',$end_date));
//        dump(date('Y-m-d H:i:s',$end_date));

        return ajax_return($total_money,'',200);
    }
    /**
     * 会员权益中心
     */
    public function memberrights($page = '1', $size = '20')
    {
        //会员信息：等级、加入时间、现有经验值、下一等级名称、下一等级起始经验值、达到下一等级所需经验值
        $user_data = Db::table('fy_customer')
            ->alias('c')
            ->join('fy_customer_grade g', 'g.experience_start <= c.experience and g.experience_end >= c.experience')
            ->where('openid', $this->userInfo['openid'])
            ->find();

        if ($this->request->isAjax()) {
            //处理权益数据字段all
            $all_str = htmlspecialchars_decode($user_data['all']);
            $user_data['all'] = explode('<br/>', $all_str);
            //权益列表
            $rights_list = Db::table('fy_customer_right')->where(['status' => 1, 'isdelete' => 0])->page($page, $size)->select();
            $user_rights = array();
            foreach ($user_data['all'] as $all_datum) {
                foreach ($rights_list as $item) {
                    if ($all_datum == $item['id']) {
                        $user_rights[] = $item;
                    }
                }
            }
            return ajax_return($user_rights, 'OK', 200);
        } else {
            $this->assign('user_data', $user_data);
            $this->assign('titleName', "会员权益");
            return $this->view->fetch("memberBenefits");
        }
    }

    /**
     * 会员等级规则
     */
    public function memberrule($type)
    {
        $user_data = Db::table('fy_customer')
            ->alias('c')
            ->join('fy_customer_grade g', 'g.experience_start <= c.experience and g.experience_end >= c.experience')
            ->where('openid', $this->userInfo['openid'])
            ->find();
        $user_data['create_time'] = date('Y年m月d日', $user_data['create_time']);
        $grade_data = Db::table('fy_customer_grade')->where(['experience_start' => ['>', $user_data['experience']]])->find();
        if ($user_data['experience'] < $grade_data['experience_start']) {
            $user_data['next_grade_experience'] = $grade_data['experience_start'];
            $user_data['next_grade_name'] = $grade_data['name'];
            $user_data['how_many_exp'] = $grade_data['experience_start'] - $user_data['experience'];
        }
        //会员等级规则/权益说明/升级攻略
        $grade_res = Db::table('fy_customer_grade_desc')->where(['status' => 1, 'isdelete' => 0, 'type' => $type])->find();
        $this->assign('grade_res', $grade_res);
        $this->assign('user_data', $user_data);
        if ($type == 1) {
            $this->assign('titleName', "会员等级规则");
        } else if ($type == 2) {
            $this->assign('titleName', "会员升级攻略");
        }
        return $this->view->fetch("memberRule");

    }

    /**
     * 用户信息查询
     */
    public function userinfo()
    {
        $this->assign('titleName', "完善用户信息");
        $userData = Db::table('fy_customer')->where('openid', $this->userInfo['openid'])->find();
        $userAddress = Db::table('fy_customer_address')->where(
            ['uid' => $userData['id'], 'status' => 1]
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
    public function userInfoEdit()
    {
        $this->assign('titleName', "修改信息");
        $userData = Db::table('fy_customer')->where('openid', $this->userInfo['openid'])->find();
        $oldUser = $userData;
        $userAddress = Db::table('fy_customer_address')->where(
            ['uid' => $userData['id'], 'status' => 1]
        )->find();
        if ($this->request->isAjax()) {
            $nickname = $this->request->param('nickname');
            $mobile = $this->request->param('mobile');
            $email = $this->request->param('email');
            if (!empty($nickname)) $userData['nickname'] = $nickname;
            if (!empty($mobile)) $userData['mobile'] = $mobile;
            if (!empty($email)) $userData['email'] = $email;
            if (empty($nickname) && empty($mobile) && empty($email)) return ajax_return('', '修改数据不能为空', 200);

            //如果用户信息都已经完善了，奖励100积分  $oldUser中信息没有完善   $userData中数据完善了，说明数据第一次完善 奖励100积分
            $oldUserStatus = empty($oldUser['nickname']) || empty($oldUser['mobile']) || empty($oldUser['email']) || empty($userAddress['id']);// true未完善
            $userDataStatus = !empty($userData['nickname']) && !empty($userData['mobile']) && !empty($userData['email']) && !empty($userAddress['id']);//true 已完善
            //dump($oldUserStatus);
            //dump($userDataStatus);
            $msg = '修改成功';
            $time = time();
            if ($oldUserStatus && $userDataStatus) {
                $userData['score'] += 100;
                $msg = '信息已完善,恭喜获得100积分';
                Db::table('fy_score_log')->insert([
                    'uid' => $userData['id'],
                    'openid' => $userData['openid'],
                    'source' => 11,
                    'score' => 100,
                    'time' => $time
                ]);
            }
            Db::table('fy_customer')->where('openid', $this->userInfo['openid'])->update($userData);
            return ajax_return('', $msg, 200);
        } else {
            $this->assign('userData', $userData);
            $this->assign('userAddress', $userAddress);
            return $this->view->fetch("userInfoEdit");
        }
    }

    /**
     * 赚积分
     */
    public function getscore($page = '1', $size = '10')
    {


        //会员信息：等级、加入时间、现有经验值、下一等级名称、下一等级起始经验值、达到下一等级所需经验值
        $user_data = Db::table('fy_customer')
            ->alias('c')
            ->join('fy_customer_grade g', 'g.experience_start <= c.experience and g.experience_end >= c.experience')
            ->where('openid', $this->userInfo['openid'])
            ->find();
        $this->assign('user_data', $user_data);
        if ($this->request->isAjax()) {
            $time = time();
            $task_list = Db::table('fy_customer_task')->where(['status' => 1, 'isdelete' => 0, 'start_date' => ['<=', $time], 'end_date' => ['>=', $time]])->page($page, $size)->select();
            return ajax_return($task_list, 'OK', 200);
        } else {
            $this->assign('titleName', "赚积分");
            return $this->view->fetch("getScore");
        }
    }

    /**
     * 消息中心
     */
    public function message($page = '1', $size = '4')
    {
        $this->assign('titleName', "个人消息 ");
        if ($this->request->isAjax()) {
            //查出所有的msg
            $message_user_list = Db::table('fy_message_user')->where('openid',$this->userInfo['openid'])->page($page, $size)->select();
            //处理text非空、message_id非空的数据
            $text_list=array();
            $msg_ids='';
            foreach ($message_user_list as $k => $v) {
                //将订单消息赋给text_list
                if($v['text']!=null){
                    $text_list[$k]=$v;
                    $text = json_decode($v['text']);
                    $text_list[$k]['title'] = $text->title;
                    $text_list[$k]['detail'] = $text->detail;
                }
                //将消息的message_id赋给msg_ids
               if($v['message_id']!=null){
                    $msg_ids=$v['message_id'].','.$msg_ids;
               }
            }
            //联表查询message_id在msg_ids中的消息
            $message_list = Db::table('fy_message_user')
                ->alias('u')
                ->join('fy_message m', 'u.message_id=m.id')
                ->order('u.create_time', 'desc')
                ->where(['message_id'=>['in',$msg_ids],'u.openid' => $this->userInfo['openid'], 'm.status' => 1, 'm.isdelete' => 0, 'm.is_send' => 1])
                ->select();
            //将订单消息和普通消息组合，返回给前端
            $all_message_list = array_merge($message_list, $text_list);
            return ajax_return($all_message_list, 'OK', 200);
        } else {
            return $this->view->fetch();
        }
    }

    public function msg_detail($id)
    {
        $this->assign('titleName', "消息详情");
        $message = Db::table('fy_message')
            ->where([
                'id' => $id,
            ])
            ->find();
        $this->assign('message', $message);
        return $this->view->fetch("msgDetail");
    }
}