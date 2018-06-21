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

        //按出生日期时间段搜索
        if ($this->request->param("startBirthday") && $this->request->param("endBirthday")) {
            $map['birthday'] = ["between", [$this->request->param("startBirthday"), $this->request->param("endBirthday")]];
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
            $header = ['用户名', '昵称', '性别', '生日', '手机号', '邮箱', '头像', '微信ID', '登录IP', '创建时间'];
            $data = \think\Db::name("customer")->field("username,nickname,sex,birthday,mobile,email,headimgurl,openid,login_ip,create_time")->order("id desc")->select();
            if ($error = \Excel::export($header, $data, "会员信息表.xls", '2007')) {
                throw new Exception($error);
            }else{
                return ajax_return_adv('表格已导出！');
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

}
