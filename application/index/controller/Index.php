<?php
namespace app\index\controller;

class Index
{
    public function index()
    {
    	echo 123;
        // return \think\Response::create(\think\Url::build('/admin'), 'redirect');
    }
}
