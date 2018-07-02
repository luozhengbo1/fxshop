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
        public function  addCar($goodsId)
        {
            if(!$goodsId){
                return ajax_return_error('缺少商品id');
            }
        }

        #删除
        public function  delCar($id,$filter="")
        {
            if(!$id){
                return ajax_return_error('缺少参数id');
            }
            #非真删除
            if($filter=="all"){
                $res = $this->model
                    ->where(['openid'=>$this->userInfo['openid']])
                    ->update(['show_status'=>0]);
            }else{
                $res = $this->model
                    ->where(['id'=>$id,'openid'=>$this->userInfo['openid']])
                    ->update(['show_status'=>0]);
            }
            if($res){
                return ajax_return('','ok','200');
            }else{
                return ajax_return('','no','400');
            }
        }







	}
