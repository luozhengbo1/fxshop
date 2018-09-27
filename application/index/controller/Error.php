<?php
/**
 * Created by PhpStorm.
 * User: luozhengbo
 * Date: 2018/8/27
 * Time: 10:47
 */


namespace app\index\controller;
use think\Controller;

Class Error extends Controller
{
    public function index()
    {
        return $this->page();
    }
    public function page()
    {
        return $this->view->fetch('error/page');
    }

    #空操作
    public function _empty()
    {
        return $this->page();
    }
}