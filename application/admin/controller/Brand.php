<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;
use think\Db;
use app\common\model\brand as b;

class Brand extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];
    protected $uid ;

    public function __construct()
    {
    	parent::__construct();
    	$this->uid= $_SESSION['think']['auth_id'];
    }
    protected function filter(&$map)
    {
        if ($this->request->param("name")) {
            $map['name'] = ["like", "%" . $this->request->param("name") . "%"];
        }
    }
    public function index()
    {
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
         $model = new b();
        if($this->uid==1){
            $list = $model->alias('b')->field('b.*,fy_admin_user.account,fy_admin_user.realname')->join('fy_admin_user',' b.user_id=fy_admin_user.id','left')->order('b.user_id desc,b.create_time desc')->paginate(10);
        }else{
            #查出属于自己的 并排序
            $list =$model->where('user_id='.$this->uid)->order('create_time desc')->paginate(10);
          
        }
        $this->view->assign('list',$list);
        return $this->view->fetch();
    }

    public function add()
    {
    	 $controller = $this->request->controller();

        if ( $this->request->isPost() ) {
            // 插入
            $data = $this->request->except(['id']);
            // 验证
           if( empty($data['name']) ) {
  				return ajax_return_adv_error('品牌名不能为空');
           }
           $res = Db::name('brand')
           		->where(['name'=>$data['name'],'user_id'=>$this->uid])
           		->find();
           if($res){
           		return ajax_return_adv_error('品牌名已经存在');
			}
			if($this->uid!=1){
				$data['user_id'] = $this->uid;
			}
			if(empty($data['user_id']) ){
           		return ajax_return_adv_error('所属商户不能为空');
			}
            // 写入数据
            if (
                class_exists($modelClass = \think\Loader::parseClass(\think\Config::get('app.model_path'), 'model', $this->parseCamelCase($controller)))
                || class_exists($modelClass = \think\Loader::parseClass(\think\Config::get('app.model_path'), 'model', $controller))
            ) {
                //使用模型写入，可以在模型中定义更高级的操作
                $model = new $modelClass();
                $ret = $model->isUpdate(false)->save($data);
            } else {
                // 简单的直接使用db写入
                Db::startTrans();
                try {
                    $model = Db::name($this->parseTable($controller));
                    $ret = $model->insert($data);
                    // 提交事务
                    Db::commit();
                } catch (\Exception $e) {
                    // 回滚事务
                    Db::rollback();

                    return ajax_return_adv_error($e->getMessage());
                }
            }
            return  ajax_return_adv('添加成功');
        } else {
            // 添加 
            if($this->uid==1){
            	$this->view->assign('userList',Db::name('admin_user')->field('account,id,realname')->where('id>1')->select());
      		}
            return $this->view->fetch(isset($this->template) ? $this->template : 'edit');
        }
    }


}
