<?php
	namespace app\index\controller;
	use think\Controller;
	use think\Db;
	use think\Cache;
	use think\Session;
	
	Class Car extends Controller
	{
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
            $carList =    Db::name('car')
                ->where([
                    'openid'=>$this->userInfo['openid'],
                    'update_time'=>['<',$time],
                    'status'=>1,
                ] )
                ->select();
            if($carList){
                return ajax_return($carList,'ok','200');
            }else{
                return ajax_return($carList,'no','400');
            }

        }
        #未完成待续
        public function  addCar()
        {
            if($this->request->isAjax()){
                $data = $this->request->post();
                if(!$data['goodsId']){
                    return ajax_return_error('缺少商品id');
                }
            }
           $carData = Db::name('car')
                ->where([
                    'goods_id'=>$data['goodsId'],
                    'openid'=>$this->userInfo['openid'],
                    'sku_id'=>$data['skuId']
                    ])
                ->find();
            $time =time();
            if($carData){
                $res = Db::name('car')
                    ->where([
                        'goods_id'=>$data['goodsId'],
                        'openid'=>$this->userInfo['openid'],
                        'sku_id'=>$data['skuId']
                    ])->update(['goods_num'=>'goods_num'+$data['num'],'update_time'=>$time]);
            }else{
                $res = Db::name('car')
                    ->insert([
                        'goods_num'=>$data['num'],
                        'update_time'=>$time,
                        'create_time'=>$time,
                        'goods_id'=>$data['goodsId'],
                        'openid'=>$this->userInfo['openid'],
                        'sku_id'=>$data['skuId'],
                        'val'=>$data['val'],
                    ]);
            }
            if($res){
                return ajax_return('','ok','200');
            }else{
                return ajax_return('','no','500');
            }

        }

        #删除
        public function  delCar()
        {
            if($this->request->isAjax()){
                $data = $this->request->post();
                if(!$data['goodsId']){
                    return ajax_return_error('缺少商品id');
                }
            }

            $carData = Db::name('car')
                ->where(['goods_id'=>$data['goodsId'],'openid'=>$this->userInfo['openid'],'sku_id'=>$data['skuId']])
                ->find();
            if($carData['goods_num']==1 ){##减到商品没有就删除
                $res = $this->model
                    ->where(['goods_id'=>$data['goodsId'],'openid'=>$this->userInfo['openid'],'sku_id'=>$data['skuId']])
                    ->delete();
            }else{
                $res = $this->model
                    ->where(['goods_id'=>$data['goodsId'],'openid'=>$this->userInfo['openid'],'sku_id'=>$data['skuId']])
                    ->setDec('   goods_num',$data['num']);
            }
            if($res){
                return ajax_return('','ok','200');
            }else{
                return ajax_return('','no','400');
            }
        }



	}
