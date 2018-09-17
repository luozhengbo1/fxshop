<?php
namespace app\index\controller;
use think\Controller;
use think\Db;
use think\Cache;

Class Notice extends Mustlogin
{

    #获取所哟普的公告信息
    public  function  getNotice($page="1",$size="10")
    {
        $list = Db::name('notice')
            ->field('id,title,create_time,update_time')
            ->where(['status'=>'1','isdelete'=>'0'])
            ->order('orderby DESC, create_time desc')
            ->page($page,$size)
            ->select();
        if(empty($list)){
            return ajax_return('','no','500');
        }else{
            foreach ($list as $k=>$v){
                $list[$k]['create_time'] = date('Y-m-d H:i:s',$v['create_time']);
                $list[$k]['update_time'] = date('Y-m-d H:i:s',$v['update_time']);
            }
            return ajax_return($list,'ok','200');
        }
    }
    #列表
    public function index()
    {
        $this->assign('titleName', "商城公告");
        return  $this->view->fetch();

    }
    #详情
    public function detail()
    {
        $this->assign('titleName', "公告详情");
        $id = $this->request->param('id');
        if(!$id){
            return $this->error('缺少参数id');
        }
        $notice = Cache::get('notice'.$id);
        if(!$notice){
            $notice =  Db::name('notice')
                ->field('id,title,create_time,update_time,desc,detail,status,orderby,isdelete')
                ->where(['id'=>$id,'status'=>1,'isdelete'=>'0'])
                ->find();
            if( !empty($notice) ){
                $notice['create_time'] = date('Y-m-d H:i:s',$notice['create_time']);
                $notice['update_time'] = date('Y-m-d H:i:s',$notice['update_time']);
            }
            Cache::set('notice'.$id,$notice,2*60*60);
        }
        $this->view->assign('notice',$notice);
        return $this->view->fetch();
    }


}