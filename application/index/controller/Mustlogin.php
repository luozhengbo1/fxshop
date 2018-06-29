<?php 
	namespace app\index\controller;
	use Org\Util\Wehcat;
	use think\Controller;
	Class MustLogin extends Controller
	{
		
		public function __construct()
		{
			parent::__construct();
			$userInfo = session('wx_user');
			if( empty($userInfo['openid']) ){
				$this->redirect(url('Wechat/wxLogin',['sate'=>myUrl()]));
			}

		}

	}
