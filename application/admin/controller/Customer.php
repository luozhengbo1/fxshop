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
            $header = ['用户名', '昵称', '性别', '生日', '手机号', '邮箱', '积分', '等级', '头像', '微信ID', '登录IP', '创建时间'];
            $data = \think\Db::name("customer")->field("username,nickname,sex,birthday,mobile,email,score,grade,headimgurl,openid,login_ip,create_time")->order("id desc")->select();
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

            //  根据积分自动更新grade
            $score = $model->where('isdelete', '0')->select();
            $gradeList = Model('CustomerGrade')->field('id ,name,score_start,score_end')->order('id ')->where('isdelete', 0)->select();
            for ($i = 0; $i < count($score); $i++) {
                $count = 0;
                $scoreitem = $score[$i];
                for ($j = 0; $j < count($gradeList); $j++) {
                    $gradeitem = $gradeList[$j];
                    if ($scoreitem['score'] > $gradeitem['score_start'] && $scoreitem['score'] < $gradeitem['score_end']) {
                        //插入grade_id
                        $model->update([
                            'grade_id' => $gradeitem['id']
                        ], ['id' => $scoreitem['id']]);
                        $gradelist[$i] = [
                            'name' => $gradeitem['name']
                        ];
                    } else {
                        $count += 1;
                    }
                }
                if ($count == count($gradeList)) {
                    $model->update([
                        'grade_id' => 0
                    ], ['id' => $scoreitem['id']]);
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

            //  根据积分自动更新grade
            $score = $model->where('isdelete', '0')->select();
            $gradeList = Model('CustomerGrade')->field('id ,name,score_start,score_end')->order('id ')->where('isdelete', 0)->select();
            for ($i = 0; $i < count($score); $i++) {
                $count = 0;
                $scoreitem = $score[$i];
                for ($j = 0; $j < count($gradeList); $j++) {
                    $gradeitem = $gradeList[$j];
                    if ($scoreitem['score'] > $gradeitem['score_start'] && $scoreitem['score'] < $gradeitem['score_end']) {
                        //插入grade_id
                        $model->update([
                            'grade_id' => $gradeitem['id']
                        ], ['id' => $scoreitem['id']]);
                        $gradelist[$i] = [
                            'name' => $gradeitem['name']
                        ];
                    } else {
                        $count += 1;
                    }
                }
                if ($count == count($gradeList)) {
                    $model->update([
                        'grade_id' => 0
                    ], ['id' => $scoreitem['id']]);
                }
            }
            $this->datalist($model, $map);
            $this->view->assign('gradelist', $gradeList);
            return $this->view->fetch();
        }
    }

}
