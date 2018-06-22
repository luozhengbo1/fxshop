<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);
load_trait('controller/Jump');
use app\admin\Controller;
use think\Db;

class LotteryLog extends Controller
{
    use \app\admin\traits\controller\Controller;
    use \traits\controller\Jump;
    // 方法黑名单
    protected function filter(&$map)
    {
        if ($this->request->param("name")) {
            $map['lotlog.lottery_name'] = ["like", "%" . $this->request->param("name") . "%"];
        }
    }
    public function index()
    {
    	 $model = $this->getModel();

        // 列表过滤器，生成查询Map对象
        $map = $this->search($model, [$this->fieldIsDelete => $this::$isdelete]);

        // 自定义过滤器
        if (method_exists($this, 'filter')) {
            $this->filter($map);
        }
        $list = $this->getModel()
            ->alias('lotlog')
            ->field('lotlog.*,cus.username')
            ->join('fy_lottery lot','lotlog.lottery_id = lot.id')
            ->join('fy_customer cus','lotlog.uid = cus.id')
            ->where($map)
            ->paginate(20);
        $page = $list->render();
        // 模板变量赋值
        $this->view->assign('page', $page);
        $this->view->assign('list',$list);
        return $this->view->fetch();
    }
    public function detail()
    {
        $lottery_id = $this->request->param('lottery_id');
//        if(!$lottery_id){
//            return $this->error('缺少参数id');
//        }
        $model = $this->getModel();
        // 列表过滤器，生成查询Map对象
        $map = $this->search($model, [$this->fieldIsDelete => $this::$isdelete]);

        // 自定义过滤器
        if (method_exists($this, 'filter')) {
            $this->filter($map);
        }
        $map['lottery_id']=$lottery_id;
        $list = $this->getModel()
                ->alias('lotlog')
                ->field('lotlog.*,lot.name,cus.username')
                ->join('fy_lottery lot','lotlog.lottery_id = lot.id')
                ->join('fy_customer cus','lotlog.uid = cus.id')
                ->where($map)
                ->paginate(20);
        $page = $list->render();
        // 模板变量赋值
        $this->view->assign('page', $page);
        $this->view->assign('list',$list);
        return $this->view->fetch(isset($this->template)?$this->template:'index');
    }




}
