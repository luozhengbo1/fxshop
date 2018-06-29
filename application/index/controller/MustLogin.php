<?php 
	namespace app\index\Controller;
	use Org\Util\Wehcat;
	
	Class MustLogin extends CrudController
	{
		
		public function __construct()
		{
			parent::__construct();
			$userInfo = session('wx_user');
			if( empty($userInfo['openid']) ){
				redirect(url('Wechat/wxLogin',['sate'=>myUrl()]));
			}

		}
	}
