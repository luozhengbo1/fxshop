<?php
	namespace app\index\controller;
	use think\controller;
	use think\Db;
	
	Class Modular extends Controller
	{
		public function getModular($num=5)
		{
			$model = Db::name('modular');
			$list = $model
				->where(['status'=>1,'isdelete'=>0])
				->orderby('orderby DESC,create_time DESC')
				->limit($num)
				->select();
			return empty($list)?ajax_return($list,'no','500'):ajax_return($list,'ok','200');
		}
	}
