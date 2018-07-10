<?php

namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path'), EXT);

use app\admin\Controller;

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
            $map['grade_id'] = $this->request->param("grade");
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
                '经验值', '等级', '头像', '微信ID', '登录IP', '国家', '省份', '城市', '创建时间'];
            $data = \think\Db::name("customer")->field("username,nickname,sex,birthday,mobile,email,
            score,continuity_day,experience,grade,headimgurl,openid,login_ip,countty,province,city,create_time")
                ->order("id desc")->select();
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

        $this->view->assign("vo", $vo);

        return $this->view->fetch();

    }

    /**
     * 首页
     * @return mixed
     */
    public function index()
    {
        //点击清空按钮后将传递空的查询条件值到$map
        if ($_GET) {
            $model = $this->getModel();
            // 列表过滤器，生成查询Map对象
            $map = $this->search($model, [$this->fieldIsDelete => $this::$isdelete]);

            // 特殊过滤器，后缀是方法名的
            $actionFilter = 'filter' . $this->request->action();
            if (method_exists($this, $actionFilter)) {
                $this->$actionFilter($map);
            }
            // 自定义过滤器
            if (method_exists($this, 'filter')) {
                $this->filter($map);
            }

            $customer_data = $model->where('isdelete', '0')->select();
            //根据当前时间与会员创建时间的时间差是否为偶数年清零积分
            $now_time = time();
            for ($i = 0; $i < count($customer_data); $i++) {
                $create_time = $customer_data[$i]['create_time'];
                $time_difference = ($now_time - strtotime($create_time)) / (60 * 60 * 24 * 365);
                $result = $time_difference % 2;
                //判断创建时间是否为过去的某一天
                if ($time_difference >= 0) {
                    //判断时间差是否为偶数
                    if (!$result) {
                        $model->update(['score' => 0], ['id' => $customer_data[$i]['id']]);
                    }
                }
            }

            //  根据经验值自动更新grade
            $gradeList = Model('CustomerGrade')->field('id ,name,experience_start,experience_end')->order('id ')->where('isdelete', 0)->select();
            //循环对比每个会员的经验值是否在等级经验值区间内
            for ($i = 0; $i < count($customer_data); $i++) {
                $count = 0;
                $customer_item = $customer_data[$i];
                for ($j = 0; $j < count($gradeList); $j++) {
                    $grade_item = $gradeList[$j];
                    if ($customer_item['experience'] >= $grade_item['experience_start'] && $customer_item['experience'] <= $grade_item['experience_end']) {
                        //若在区间内插入grade_id
                        $model->update([
                            'grade_id' => $grade_item['id']
                        ], ['id' => $customer_item['id']]);
                        $gradelist[$i] = [
                            'name' => $grade_item['name']
                        ];
                    } else {
                        $count += 1;
                    }
                }
                //若不在区间内的次数等于gradeList的长度，表示该会员的经验值不在已有经验值区间中
                if ($count == count($gradeList)) {
                    $model->update([
                        'grade_id' => 0
                    ], ['id' => $customer_item['id']]);
                }
            }
            $this->datalist($model, $map);
            $this->view->assign('gradelist', $gradeList);
            return $this->view->fetch();
        } else {
            //初始化列表数据
            $model = $this->getModel();
            // 列表过滤器，生成查询Map对象
            $map = $this->search($model, [$this->fieldIsDelete => $this::$isdelete]);

            // 特殊过滤器，后缀是方法名的
            $actionFilter = 'filter' . $this->request->action();
            if (method_exists($this, $actionFilter)) {
                $this->$actionFilter($map);
            }
            // 自定义过滤器
            if (method_exists($this, 'filter')) {
                $this->filter($map);
            }

            $customer_data = $model->where('isdelete', '0')->select();
            //根据当前时间与会员创建时间的时间差是否为偶数年清零积分
            $now_time = time();
            for ($i = 0; $i < count($customer_data); $i++) {
                $create_time = $customer_data[$i]['create_time'];
                $time_difference = ($now_time - strtotime($create_time)) / (60 * 60 * 24 * 365);
                $result = $time_difference % 2;
                //判断创建时间是否为过去的某一天
                if ($time_difference >= 0) {
                    //判断时间差是否为偶数
                    if (!$result) {
                        $model->update(['score' => 0], ['id' => $customer_data[$i]['id']]);
                    }
                }
            }
        }

        //  根据经验值自动更新grade
        $gradeList = Model('CustomerGrade')->field('id ,name,experience_start,experience_end')->order('id ')->where('isdelete', 0)->select();
        //循环对比每个会员的经验值是否在等级经验值区间内
        for ($i = 0; $i < count($customer_data); $i++) {
            $count = 0;
            $customer_item = $customer_data[$i];
            for ($j = 0; $j < count($gradeList); $j++) {
                $grade_item = $gradeList[$j];
                if ($customer_item['experience'] >= $grade_item['experience_start'] && $customer_item['experience'] <= $grade_item['experience_end']) {
                    //若在区间内插入grade_id
                    $model->update([
                        'grade_id' => $grade_item['id']
                    ], ['id' => $customer_item['id']]);
                    $gradelist[$i] = [
                        'name' => $grade_item['name']
                    ];
                } else {
                    $count += 1;
                }
            }
            //若不在区间内的次数等于gradeList的长度，表示该会员的经验值不在已有经验值区间中
            if ($count == count($gradeList)) {
                $model->update([
                    'grade_id' => 0
                ], ['id' => $customer_item['id']]);
            }
        }
        $this->datalist($model, $map);
        $this->view->assign('gradelist', $gradeList);
        return $this->view->fetch();
    }
}
