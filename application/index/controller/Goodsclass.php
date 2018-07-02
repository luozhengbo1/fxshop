<?php
	namespace app\index\controller;
	use think\Controller;
	use think\Db;
	use think\Cache;
	
	Class GoodsClass extends Controller
	{
        protected $model;
		#获取热销商品和其他显示的商品
        public function __construct()
        {
            parent::__construct();
            $this->model = Db::name('goods_class');
        }
        #查询出所有的一级分类分类
        public  function  getGoodsClass()
        {
            $goodsClass = $this->model->where(['pid'=>0])->select();
            if($goodsClass){
                return ajax_return($goodsClass,'ok','200');
            }
            return ajax_return($goodsClass,'no','500');
        }

        #获该分类或者子分类下的所有商品
        public function  getGoodsClassGoods($goodsClassId)
        {
            if(!$goodsClassId){
                return ajax_return_error('缺少参数分类id');
            }
            #查询所有的子分类
            $goodsClassAllChild = getAllChildcateIds($goodsClassId);
            $goodsList = Db::name('goods')->where(['goods_class_id'=>['in',$goodsClassAllChild],'status'=>1,'isdelete'=>'0'])->select();
            return ajax_return($goodsList,'ok','200');
        }

	}
