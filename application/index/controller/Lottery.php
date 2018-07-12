<?php
	namespace app\index\controller;
	use think\Controller;
	use think\Db;
	use think\Cache;
	use think\Session;

	Class Lottery extends Controller
	{
        protected $userInfo;
		#获取热销商品和其他显示的商品
        public function __construct()
        {
            parent::__construct();
            $this->userInfo = Session::get('wx_user');
            if( empty( $this->userInfo['openid']) ){
                $this->redirect( substr(url('Wechat/wxLogin',['state'=>myUrl()]),0,-5) );
            }
        }

        #取出没有结算，并且没有过期的奖券
        public function index()
        {
            $time =time();
            $lotteryList = Db::name('Lottery')
                ->where([
                    'isdelete'=>0,
                    'status'=>1,
                    'grant_start_date'=>['<',$time],
                    'grant_end_date'=>['>',$time]
                    ])
                ->select();
//            dump($lotteryList);die;
            $this->view->assign('titleName','券集市');
            $this->view->assign('lotteryList',$lotteryList);
            return $this->view->fetch('index/vouchermarket');

        }
        #未完成待续
        public function  get()
        {
            if($this->request->isAjax()){
                $data = $this->request->post();
                if(!$data['id']){
                    return ajax_return_error('缺少参数id');
                }
                $lottery = Db::name('lottery')->where(['id'=>$data['id'],'status'=>'1'])->find();
                if($lottery['number']<1){
                    return ajax_return_error('奖券已经被领取完');
                }
                if($lottery['grant_start_date']>time() || $lottery['grant_end_date']<time() ){
                    return ajax_return_error('领取时间不对');
                }
                #查询是否领取过这个奖券
                $lotteryLog = Db::name('lottery_log')->where(['openid'=>$this->userInfo['openid'],'lottery_id'=>$data['id']])->find();
                if($lotteryLog){
                    return ajax_return_error('每人只能领一张');
                }
                #将数量减少，记录领取用户
                $insert=[];
                $insert['username']=$this->userInfo['nickname'];
                $insert['addtime']=time();
                $insert['lottery_id']=$data['id'];
                $insert['status']=1;
                $insert['lottery_name']=$lottery['name'];
                $insert['is_use']=0;
                $res = Db::name('lottery')->where(['id'=>$data['id']])->update($insert);
                if($res){
                    return ajax_return('','领取成功','200');
                }else{
                    return ajax_return_error('领取失败','500');
                }
            }

        }




	}
