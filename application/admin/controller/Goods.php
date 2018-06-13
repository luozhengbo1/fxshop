<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;
use think\Db;

class Goods extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    #用户id
    protected $uid;

    public function __construct()
    {
    	parent::__construct();
    	$this->uid = $_SESSION['think']['auth_id'];
    }

    protected function filter(&$map)
    {
        if ($this->request->param("name")) {
            $map['name'] = ["like", "%" . $this->request->param("name") . "%"];
        }
    }

    public function add()
    {
    	if($this->request->isPost()){

    	}else{
    		dump(getGoodsClassTree($this->uid) );die;
    		if( !getGoodsClassTree($this->uid) ){
    			return ajax_return_adv_error('请先添加商品分类');
    		}
    		#渲染商品分类数
    		$this->view->assign('goodsClassList',getGoodsClassTree($this->uid));
    		$brandList = Db::name('brand')->where(['user_id'=>$this->uid])->select();
    		$this->view->assign('brandList',$brandList);
    		// dump($brandList);die;
    		return $this->view->fetch(isset($this->template) ? $this->template : 'edit');
    	}
    } 
}
