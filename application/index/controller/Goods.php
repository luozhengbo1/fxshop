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
        #获取商品的
        public function  getGoodsHotOrOther($page,$size,$show_area='3')
        {
            if($show_area="all"){
                $goodsList =$this->model->select();
            }else{
                $goodsList = $this->model
                    ->where(['show_area'=>$show_area,'status'=>1,'isdelete'=>'0'])#2表示获取上市的商品
                      ->page($page,$size)
                    ->select();
            }
            if(!empty($goodsList)) {
                return ajax_return('','no','500');
            }else{
                return ajax_return($goodsList,'ok','200');
            }


        }
        #获取这个商品的详情
        public function detail($id)
        {
            $this->assign('titleName', "商品搜索");
            if(!$id){
                return ajax_return_error('缺少商品id','500');
            }
            $goods = $this->model->where(['id'=>$id])->find();
            $skuData =  Db::name('goods_attribute')
                ->where(['goods_id'=>$id])
                ->select();
            $proprety_name =  Db::name('goods_proprety_name')
                ->where(['goods_id'=>$id])
                ->select();
            $proprety_name_val =  Db::name('goods_proprety_name')->alias('n')
                ->field('n.id as pro_id,n.name,fy_goods_proprety_val.value,fy_goods_proprety_val.id')
                ->join('fy_goods_proprety_val','fy_goods_proprety_val.propre_name_id=n.id')
                ->where(['n.goods_id'=>$id])
                ->select();
            #查询该商品是否有优惠券或者通用的优惠券
            $lottery = Db::name('lottery')->where(['goods_id'=>$id,'isdelete'=>0,'status'=>1])->find();
            return $this->view->fetch();
        }

        #商品搜索
        public function goodsSearch()
        {
            $name = $this->request->param('name');
            $page = $this->request->param('page');
            $size = $this->request->param('size');
            $goodsList = Db::name('goods')
                ->where(['name'=>"%$name%"])
                ->page('1','10')
                ->select();
            if( empty($goodsList) ){
                return ajax_return_error('什么也没有搜到','400','');
            }else{
                return ajax_return($goodsList,'ok','200');
            }
//            echo  Db::name('goods')->getLastSql();
//            dump($goodsList);die;
        }

	}
