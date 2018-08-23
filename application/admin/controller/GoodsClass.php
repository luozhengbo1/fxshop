<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;
use think\Db;
use app\common\model\GoodsClass as gc;
use think\Session;
load_trait('controller/Jump');


class GoodsClass extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];
    protected  $uid;
    use \traits\controller\Jump;
    public function __construct()
    {
        parent::__construct();
        $this->uid= $_SESSION['think']['auth_id'];
    }
    /**
     * 添加
     * @return mixed
     */
   
    public function add()
    {
        $controller = $this->request->controller();

        if ( $this->request->isPost() ) {
            // 插入
            $data = $this->request->except(['id']);
            // 验证
           if( empty($data['name']) ) {
  				$this->error('分类名不能为空');
           }
           $res = Db::name('goods_class')
           		->where(['name'=>$data['name']])
           		->find();
           if($res){
           		$this->error('分类名已经存在');
			}

            if( !empty($data['pid']) ){
               $path = Db::name('goods_class')->find(['id'=>$data['pid']]);
               $data['path']=$path['path'].$data['pid'].',';
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
            $this->success('添加成功');
        } else {
            // 添加 
            $data = getGoodsClassTree();
	        $this->view->assign('data',$data);
            return $this->view->fetch(isset($this->template) ? $this->template : 'edit');
        }
    }
       /**
     * 编辑
     * @return mixed
     */
    public function edit()
    {
        $controller = $this->request->controller();

        if ($this->request->isPost()) {
            // 更新
            $data = $this->request->post();
            if (!$data['id']) {
                return ajax_return_adv_error("缺少参数ID");
            }
           if( empty($data['name']) ) {
  				$this->error('分类名不能为空');
           }
           $res = Db::name('goods_class')->where('id<>'.$data['id'].' and name="'.$data['name'].'"')->find();
           if($res){
           		$this->error('分类名已经存在');
           }	
            // 更新数据
            if (
                class_exists($modelClass = \think\Loader::parseClass(\think\Config::get('app.model_path'), 'model', $this->parseCamelCase($controller)))
                || class_exists($modelClass = \think\Loader::parseClass(\think\Config::get('app.model_path'), 'model', $controller))
            ) {
                // 使用模型更新，可以在模型中定义更高级的操作
                $model = new $modelClass();
                $ret = $model->isUpdate(true)->save($data, ['id' => $data['id']]);
            } else {
                // 简单的直接使用db更新
                Db::startTrans();
                try {
                    $model = Db::name($this->parseTable($controller));
                    $ret = $model->where('id', $data['id'])->update($data);
                    // 提交事务
                    Db::commit();
                } catch (\Exception $e) {
                    // 回滚事务
                    Db::rollback();
                    return ajax_return_adv_error($e->getMessage());
                }
            }
           $this->success("编辑成功");
        } else {
            // 编辑
            $id = $this->request->param('id');
            if (!$id){
            	$this->error("缺少参数ID");
            }
            $vo = Db::name('goods_class')->where(['id'=>$id])->find($id);
            if (!$vo) {
               $this->error("该记录不存在");
            }
            $this->view->assign("vo", $vo);
            return $this->view->fetch();
        }
    }

    public function delete()
    {
    	$id = $this->request->param('id');
    	if (!$id) {
            return ajax_return_adv("缺少参数ID");
        }
        #如果该分类下面还有分类，请先删除子分类，如果分类下面还有商品，也不能删除分类
       	$list = Db::name('goods_class')->where('path like "%'.$id.'%"')->select();
        // dump($list);die;
       	// echo Db::name('goods_class')->getLastSql();die;
        if($list){
        	return ajax_return_adv_error('请先删除子分类');
        }
        $goods = Db::name('goods')->field('id')->where('`goods_class_id`='.$id)->find();
        if($goods){
        	return ajax_return_adv_error('请先删除分类下的商品');
        }
        $res =Db::name('goods_class')->delete(['id'=>$id]);
        if($res){
        	return ajax_return_adv('删除成功');
        }else{
        	return ajax_return_adv_error('删除失败');
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
        $model = new gc();
        $list =$model->order('concat(path,id)')->paginate(10);
        if(!empty($list)){
            foreach ($list as $k=>&$v) {
                $num = substr_count($v['path'],',');
                $list[$k]['grade'] = $num;
            }
        }
        $this->datalist($model, $map);
        $this->view->assign('list',$list);
        return $this->view->fetch();
    }

   
    
}
