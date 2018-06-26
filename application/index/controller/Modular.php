<?php
	namespace app\index\controller;
	use think\controller;
	use think\Db;
	
	Class Modular extends Controller
	{
		public function getModular()
		{
			$model = Db::name('modular');
			$list = $model
				->where(['status'=>1,'isdelete'=>0])
				->orderby('orderby DESC,create_time DESC')
				->limit(5)
				->select();
			return json($list);
		}
	}
