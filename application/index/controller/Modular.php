<?php
	namespace app\index\controller;
	use think\controller;
	use think\Db;
	
	Class Modular
	{
		public function getModular($num=5)
		{
			$model = Db::name('modular');
			$list = $model
				->where(['status'=>1,'isdelete'=>0])
				->order('orderby DESC,create_time DESC')
				->limit($num)
				->select();
			return $list;
		}
	}
