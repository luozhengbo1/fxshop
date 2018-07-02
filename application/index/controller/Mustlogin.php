<?php 
	namespace app\index\controller;
	use Org\Util\Wehcat;
	use think\Controller;
	use think\Request;
	Class MustLogin extends Controller
	{
		public function __construct()
		{
			parent::__construct();
			$userInfo = \think\Session::get('wx_user');
			if( empty($userInfo['openid']) ){
				$this->redirect( substr(url('Wechat/wxLogin',['state'=>myUrl()]),0,-5) );
			}

		}


	}
