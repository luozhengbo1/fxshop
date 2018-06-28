<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;
use think\Db;
class Transaction extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];
    public function  add()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            $validate = \think\Loader::validate('Transaction');
            if(!$validate->check($data)){
                return $validate->getError();
            }
            unset($data['id']);
            if($data['group_id'] ){
                $res = Db::name('transaction')->where(['group_id'=>$data['group_id']])->find();
                if( !empty($res) ){
                    return ajax_return_adv('该组已经设置');
                }
                $groupName = Db::name('admin_role')->field('name')->where(['id'=>$data['group_id']])->find();
                $data['group_name'] =$groupName['name'];
            }
            if($data['uid'] ){
                $res2 = Db::name('transaction')->where(['uid'=>$data['uid']])->find();
                if($res2){
                    return ajax_return_adv('该用户已经设置');
                }
                $userName = Db::name('admin_user')->field('account')->where(['id'=>$data['group_id']])->find();
                $data['username'] =$userName['account'];
            }

            $res3 = Db::name('transaction')->insert($data);
            if($res3){
                return ajax_return_adv('添加成功');
            }else{
                return ajax_return_adv_error('添加失败');
            }
        }else{
            #用户组
            $roleList = Db::name('admin_role')->where(['isdelete'=>0,'status'=>'1'])->select();
            $userList = Db::name('admin_user')->where(['isdelete'=>0,'status'=>'1','id'=>['>','1']])->select();
            $this->view->assign('roleList',$roleList);
            $this->view->assign('userList',$userList);
//            dump($userList);die;
            return  $this->view->fetch('add');
        }
    }
    public function  edit()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            $validate = \think\Loader::validate('Transaction');
            if(!$validate->check($data)){
                return $validate->getError();
            }
            if($data['group_id'] ){
                $res = Db::name('transaction')->where(['group_id'=>$data['group_id'],'id'=>['<>',$data['id']]])->find();
                if( !empty($res) ){
                    return ajax_return_adv('该组已经设置');
                }
                $groupName = Db::name('admin_role')->field('name')->where(['id'=>$data['group_id']])->find();
                $data['group_name'] =$groupName['name'];
            }
            if($data['uid'] ){
                $res2 = Db::name('transaction')->where(['uid'=>$data['uid'] ,'id'=>['<>',$data['id']]])->find();
                if($res2){
                    return ajax_return_adv('该用户已经设置');
                }
                $userName = Db::name('admin_user')->field('account')->where(['id'=>$data['group_id']])->find();
                $data['username'] =$userName['account'];
            }
            unset($data['id']);
            $res3 = Db::name('transaction')->where(['id'=>$data['id']])->update($data);
            if($res3){
                return ajax_return_adv('添加成功');
            }else{
                return ajax_return_adv_error('添加失败');
            }
        }else{
            $id = $this->request->param('id');
            #用户组
            $roleList = Db::name('admin_role')->where(['isdelete'=>0,'status'=>'1'])->select();
            $userList = Db::name('admin_user')->where(['isdelete'=>0,'status'=>'1','id'=>['>','1']])->select();
            $vo = Db::name('transaction')->where(['isdelete'=>0,'status'=>'1','id'=>$id])->find();
            $this->view->assign('roleList',$roleList);
            $this->view->assign('userList',$userList);
            $this->view->assign('vo',$vo);
//            dump($vo);die;
            return  $this->view->fetch('edit');
        }
    }

}
