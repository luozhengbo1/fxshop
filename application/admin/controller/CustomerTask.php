<?php

namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path'), EXT);

use app\admin\Controller;

class CustomerTask extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

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

