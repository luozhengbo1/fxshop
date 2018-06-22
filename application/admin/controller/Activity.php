<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;

class Activity extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    protected function filter(&$map)
    {
        if ($this->request->param("name")) {
            $map['name'] = ["like", "%" . $this->request->param("name") . "%"];
        }
        if ($this->request->param("start_date")) {
            $map['start_date'] = ["like", "%" . $this->request->param("start_date") . "%"];
        }
        if ($this->request->param("end_date")) {
            $map['end_date'] = ["like", "%" . $this->request->param("end_date") . "%"];
        }
    }
}
