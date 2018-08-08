<?php

namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path'), EXT);

use app\admin\Controller;
use think\Db;
use think\Exception;

class Customer extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    //按条件查询数据
    protected function filter(&$map)
    {
        //按用户名搜索
        if ($this->request->param("username")) {
            $map['username'] = ["like", "%" . $this->request->param("username") . "%"];
        }

        //按性别搜索
        if ($this->request->param("sex")) {
            $map['sex'] = ["like", $this->request->param("sex")];
        }

        //按会员等级搜索
        if ($this->request->param("grade")) {
            $id = $this->request->param("grade");
            $grade = Db::table('fy_customer_grade')->where('id', $id)->find();
            $map['experience'] = ['between', [$grade['experience_start'], $grade['experience_end']]];
        }

        //按创建时间段搜索
        if ($this->request->param("startCreate_time") && $this->request->param("endCreate_time")) {
            $start = $this->request->param("startCreate_time");
            $end = $this->request->param("endCreate_time");
            $starttime = strtotime($start);
            $endtime = strtotime($end);
            $map['create_time'] = ["between", [$starttime, $endtime]];
        }

        //按手机号搜索
        if ($this->request->param("mobile")) {
            $map['mobile'] = ["like", "%" . $this->request->param("mobile") . "%"];
        }
    }

    /**
     * 会员信息一键导出
     */
    public function excel()
    {
        if ($this->request->isPost()) {
            $header = ['用户名', '昵称', '性别', '生日', '手机号', '邮箱', '积分', '连续签到天数',
                '经验值', '头像', '微信ID', '登录IP', '国家', '省份', '城市', '创建时间', '等级'];
            $data = \think\Db::name("customer")->field("username,nickname,sex,birthday,mobile,email,
            score,continuity_day,experience,headimgurl,openid,login_ip,country,province,city,create_time")
                ->order("id desc")->select();

            //处理等级数据、性别、时间数据
            $grade_list = Db::table('fy_customer_grade')->field('name,experience_start,experience_end')->where(['isdelete' => 0])->select();
            foreach ($data as &$v) {
                foreach ($grade_list as $grade_val) {
                    if ($v['experience'] >= $grade_val['experience_start'] && $v['experience'] <= $grade_val['experience_end']) {
                        $v['grade'] = $grade_val['name'];
                    }
                }
                if ($v['sex'] == 1) {
                    $v['sex'] = '男';
                } elseif ($v['sex'] == 2) {
                    $v['sex'] = '女';
                }
                $v['create_time'] = date('Y-m-d H:i:s', $v['create_time']);
            }
            if ($error = \Excel::export($header, $data, "会员信息表", '2007')) {
                throw new Exception($error);
            }
        }
    }

    /**
     * 会员信息详情
     */
    public function detail()
    {
        $controller = $this->request->controller();
        // 编辑
        $id = $this->request->param('id');
        if (!$id) {
            throw new HttpException(404, "缺少参数ID");
        }
        $vo = $this->getModel($controller)->find($id);
        if (!$vo) {
            throw new HttpException(404, '该记录不存在');
        }
        $address = Db::name('customer_address')->where(['uid' => $id, 'status' => 1])->find();
        $this->view->assign("vo", $vo);
        $this->view->assign("address", $address);
        return $this->view->fetch();

    }

    public function bindMerchant()
    {
        $controller = $this->request->controller();
        // 编辑
        $id = $this->request->param('id');
        if (!$id) {
            throw new HttpException(404, "缺少参数ID");
        }
        $vo = $this->getModel($controller)->find($id);
        if (!$vo) {
            throw new HttpException(404, '该记录不存在');
        }
        if ($this->request->isPost()) {
            $data = $this->request->post();
            //绑定商户
            $res = Db::table('fy_admin_user')->where('id', $data['merchant'])->update(['openid' => $vo['openid']]);
            if ($res) {
                return ajax_return('', '绑定商户成功', 200);
            } else {
                throw new Exception($res);
            }
        } else {
            $merchant_list = $this->getModel($controller)->alias('c')->field('c.*,au.openid merchant_openid')->join('fy_admin_user au', 'au.openid=c.openid')->find($id);
            $this->view->assign("merchant_name", $merchant_list);
            $this->view->assign("vo", $vo);
            return $this->view->fetch('bindMerchant');
        }
    }
}
