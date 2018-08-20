<?php
	namespace app\index\controller;
	use think\controller;
	use think\Db;
	
	Class Modular
	{
		public function getModular($num=5)
		{
			$list =  Db::name('modular')
                ->field('id,pic,title,create_time,status,orderby,update_time,url,isdelete')
				->where(['status'=>1,'isdelete'=>0])
				->order('orderby DESC,create_time DESC')
				->limit($num)
				->select();
			return $list;
		}
	}
