<?php
	namespace app\index\controller;
	use think\Controller;
	use think\Db;
	use think\Cache;
	
	Class Goods extends Controller
	{
        protected $model;
		#获取热销商品和其他显示的商品
        public function __construct()
        {
            parent::__construct();
            $this->model = Db::name('goods');
        }
        public function  getGoodsHotOrOther($show_area='3')
        {
            $goodsList = Cache::get('goods'.$show_area);
            if($goodsList){
                return ajax_return($goodsList,'ok','200');
            }else{
                if($show_area="all"){
                    $goodsList =$this->model->select();
                }else{
                    $goodsList = $this->model
                        ->where(['show_area'=>$show_area,'status'=>1,'isdelete'=>'0'])
                        ->select();
                }
                Cache::set('goods'.$show_area,$goodsList,'3600');
                return ajax_return($goodsList,'ok','200');

            }
        }

        #获取上
        public function  getGoodsClassGoods($goodsClassId)
        {
            if(!$goodsClassId){
                return ajax_return_error('缺少参数id');
            }
            $goodsList = $this->model->where(['goods_class_id'=>$goodsClassId,'status'=>1,'isdelete'=>'0'])->select();
            return ajax_return($goodsList,'ok','200');
        }

	}
