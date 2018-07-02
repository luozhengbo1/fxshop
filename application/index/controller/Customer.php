<?php
/**
 * 会员中心控制器
 */

namespace app\index\controller;

use think\Controller;
use think\Db;

class Customer extends Controller
{
    /**
     * 收藏夹
     */
    public function collect_list()
    {
        //获取前端传过来的分页数据
        if ($this->request->isAjax()) {
            $user = session('wx_user');
            $data = $this->request->post();
            $page = $data['page'] * $data['size'] - 4;
            $size = $data['size'];
            $customer = Db::table('fy_customer')->field('id')->where('openid', $user['openid'])->find();
            $uid = $customer['id'];
            //根据customer.id=collect.uid查询用户收藏的所有商品信息（goods.id=collect.goods_id）
            $list_collect = Db::table('fy_customer_collect')
                ->alias('collect')
                ->join('fy_customer customer', "collect.uid = customer.id  and customer.id=$uid")
                ->join('fy_goods goods', "collect.goods_id = goods.id")
                ->field('collect.uid,goods.id,goods.name,goods.main_image,goods.status,goods.price')
                ->limit($page, $size)
                ->where('collect.status', '1')
                ->select();
            $this->view->assign('list_collect', $list_collect);
            return $this->view->fetch('goodscollect');
        }
    }

    /**
     * 取消收藏
     */
    public function collect_cancel()
    {
        if ($this->request->isAjax()) {
            $user = session('wx_user');
            $data = $this->request->post();
            $customer = Db::table('fy_customer')->where('openid', $user['openid'])->find();
            //取消指定用户的指定收藏内容
            Db::table('fy_customer_collect')->where('goods_id', $data['id'])->where('uid', $customer['id'])->setField('status', '0');
        }
    }

    /**
     * 签到主页面
     */
//    public function sign_main()
//    {
//        $user = session('wx_user');
//        //根据openid在customer表中查询id,nickname,score,continuity_day
//        $userData = Db::table('fy_customer')->where('openid', $user['openid'])->find();
//        $this->view->assign('userData', $userData);
//        return $this->view->fetch('mysign');
//    }

    /**
     * 签到
     */
    public function my_sign()
    {
        $user = session('wx_user');
        //根据openid在customer表中查询id,nickname,score,continuity_day
        $userData = Db::table('fy_customer')->where('openid', $user['openid'])->find();
        if ($this->request->get()) {
            $time = time();
            $today_start = strtotime(date('Y-m-d', $time) . ' 00:00:00');
            $today_end = strtotime(date('Y-m-d', $time) . ' 23:59:59');
            $res = Db::table('fy_customer_sign')
                ->where('uid', $userData['id'])
                ->where('addtime', 'between', [$today_start, $today_end])
                ->find();
            $this->assign('flag', $res ? 1 : 0);
            $this->assign('user', $userData);
            return $this->view->fetch('mysign');
        } else if ($this->request->isAjax()) {
//            签到规则
//             1、每天只能签到一次。
//             2、连续签到3天，一次性奖励2积分。
//             3、连续签到7天，一次性奖励8积分。
//             4、连续签到15天，一次性奖励20积分。
//             5、连续签到30天，一次性奖励50积分。
            $time = time();
            $today_start = strtotime(date('Y-m-d', $time) . ' 00:00:00');
            $today_end = strtotime(date('Y-m-d', $time) . ' 23:59:59');
            //查询用户今天是否已签到
            $res = Db::table('fy_customer_sign')
                ->where('uid', $userData['id'])
                ->where('addtime', 'between', [$today_start, $today_end])
                ->find();
            if ($res) {
                $this->ajaxReturn(['status' => 501, 'msg' => '今天已经签过了']);
                die;
            } else {
                $save = [
                    'addtime' => $time,
                    'uid' => $userData['id'],
                    'score' => 1,
                    'reward_score' => 0
                ];
                //判断用户是否第一次签到?continue_day=1，score+1插入customer表,addtime，uid，score=1,reward_score=0 插入sign表
                $res = Db::table('fy_customer_sign')->where('uid', $userData['id'])->select();
                if (empty($res)) {
                    //第一次签到
                    Db::table('fy_customer')->where('openid', $user['openid'])->setField('continuity_day', 1);
                    Db::table('fy_customer')->where('openid', $user['openid'])->setInc('score', 1);
                    Db::table('fy_customer_sign')->insert($save);
                    $this->ajaxReturn(['status' => 200, 'msg' => '签到成功']);
                    exit;
                } else {
                    //判断前一天是否签到
                    $beforeSign = Db::table('fy_customer_sign')->where('uid', $userData['id'])->order('addtime', 'desc')->find();//获取最新一条签到记录
                    $noSignDay1 = (strtotime(date('Y-m-d') . '23:59:59') - strtotime(date('Y-m-d', $beforeSign['addtime']) . ' 00:00:00')) / 86400;//2天
                    $noSignDay2 = (strtotime(date('Y-m-d') . '23:59:59') - strtotime(date('Y-m-d', $beforeSign['addtime']) . ' 23:59:59')) / 86400;//1天
                    //前一天未签到，continue_day重置为1，score+1更新到customer表
                    if (floor($noSignDay1) > 1 && $noSignDay2 > 1 && floor($noSignDay1) == $noSignDay2) {
                        Db::table('fy_customer')->where('openid', $user['openid'])->setField('continuity_day', 1);
                        Db::table('fy_customer')->where('openid', $user['openid'])->setInc('score', 1);
                        Db::table('fy_customer_sign')->insert($save);
                        $this->ajaxReturn(['status' => 201, 'msg' => '签到成功']);
                    } else {
                        //判断今天签到后是否满足奖励条件
                        $score = 0;
                        switch ($userData['continuity_day']) {
                            case '2':
                                $score = 2;
                                break;
                            case '6':
                                $score = 8;
                                break;
                            case '14':
                                $score = 20;
                                break;
                            case '29':
                                $score = 50;
                                break;
                        }
                        //满足奖励条件：continue_day+1，score+1+reward_score更新到customer表，score=1,reward_score=相应的奖励积分插入到customer_sign表
                        if ($score) {
                            Db::table('fy_customer')->where('openid', $user['openid'])->setInc('score', $score + 1);
                            Db::table('fy_customer')->where('openid', $user['openid'])->setInc('continuity_day', 1);
                            $save = [
                                'addtime' => $time,
                                'uid' => $userData['id'],
                                'score' => 1,
                                'reward_score' => $score
                            ];
                            Db::table('fy_customer_sign')->insert($save);
                        } else {
                            //是否已达到最大连续签到天数？continue_day重置为1，score+1更新到customer表
                            if ($userData['continue_day'] = 30) {
                                Db::table('fy_customer')->where('openid', $user['openid'])->setField('continuity_day', 1);
                                Db::table('fy_customer')->where('openid', $user['openid'])->setInc('score', 1);
                                Db::table('fy_customer_sign')->insert($save);
                            } else {
                                Db::table('fy_customer')->where('openid', $user['openid'])->setInc('score', 1);
                                Db::table('fy_customer')->where('openid', $user['openid'])->setInc('continuity_day', 1);
                                Db::table('fy_customer_sign')->insert($save);
                            }
                        }
                        $this->ajaxReturn(['status' => 202, 'msg' => '签到成功']);
                    }
                }
            }
        }
    }
}