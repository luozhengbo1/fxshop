<?php
	namespace app\index\controller;
	use think\Controller;
	use think\Db;
	use think\Cache;
	use think\Session;
	
	Class Car extends Controller
	{
        protected $model;
        protected $userInfo;
		#获取热销商品和其他显示的商品
        public function __construct()
        {
            parent::__construct();
            $this->model = Db::name('car');
            $this->userInfo = Session::get('wx_user');
            if( empty( $this->userInfo['openid']) ){
                $this->redirect( substr(url('Wechat/wxLogin',['state'=>myUrl()]),0,-5) );
            }
        }

        #取出没有结算，并且没有过期的商品
        public function index()
        {
            $time=time()-3600*24*30;
//            $time2 + 3600*24*30<time();#过期
            $carList = $this->model
                ->where([ 'openid'=>$this->userInfo['openid'],'update_time'=>['<',$time],'status'=>1,'show_status'=>'1'] )
                ->select();
            if($carList){
                return ajax_return($carList,'ok','200');
            }else{
                return ajax_return($carList,'no','400');
            }

        }
        #未完成待续
        public function  addCar($goodsId,$skuId)
        {
            if(!$goodsId){
                return ajax_return_error('缺少商品id');
            }

            $this->model->where(['goods_id'=>$goodsId,'openid'=>$this->userInfo['openid'],'sku_id'=>$skuId])->setInc('   goods_num',1);
//            if(){}
        }

        #删除
        public function  delCar($goodsId,$skuId,$filter="")
        {
            if(!$goodsId){
                return ajax_return_error('缺少参数id');
            }
            #非真删除
            if($filter=="all"){
                $res = $this->model
                    ->where(['openid'=>$this->userInfo['openid']])
                    ->update(['show_status'=>0]);
            }else{
                $carData = $this->model
                    ->where(['goods_id'=>$goodsId,'openid'=>$this->userInfo['openid'],'sku_id'=>$skuId])
                    ->find();
                if($carData['goods_num']==1 ){##减到商品没有就删除
                    $res = $this->model
                        ->where(['goods_id'=>$goodsId,'openid'=>$this->userInfo['openid'],'sku_id'=>$skuId])
                        ->delete();
                }else{
                    $res = $this->model
                        ->where(['goods_id'=>$goodsId,'openid'=>$this->userInfo['openid'],'sku_id'=>$skuId])
                        ->setDec('   goods_num',1);
                }

            }
            if($res){
                return ajax_return('','ok','200');
            }else{
                return ajax_return('','no','400');
            }
        }



	}
