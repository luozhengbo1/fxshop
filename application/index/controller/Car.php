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
            if($this->request->isAjax()){
                //$time2 + 3600*24*30<time();#过期
                // $time=time()-3600*24*30;
                $page = $this->request->param('page')?$this->request->param('page'):'1';
                $size =  $this->request->param('size')?$this->request->param('size'):'10';
                $carList =    Db::name('car')->alias('c')
                    ->field('fy_goods.*,c.goods_num,c.id as carId,c.val,c.sku_id,c.goods_id,c.create_time,c.id,fy_goods_attribute.store,fy_goods_attribute.price as price1')
                    ->join('fy_goods','fy_goods.id=c.goods_id')
                    ->join('fy_goods_attribute','fy_goods_attribute.id=c.sku_id')
                    ->where([
                        'c.openid'=>$this->userInfo['openid'],
                        //  'update_time'=>['<',$time],
                        'c.status'=>1,
                    ] )
                    ->page($page,$size)
                    ->order('c.create_time desc')
                    ->select();

              //  dump($carList);
                if(!empty($carList )){
                    return ajax_return($carList,'ok','200');
                }else{
                    return ajax_return($carList,'no','400');
                }
            }else{
                $this->view->assign('titleName','购物车');
                return $this->view->fetch();
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
                return ajax_return('','添加成功','200');
            }else{
                return ajax_return('','添加失败','500');
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
