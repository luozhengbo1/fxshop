<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

load_trait('controller/Jump');  // 引入traits\controller\Jump
use app\admin\Controller;
use think\Db;

class Lottery extends Controller
{
    use \app\admin\traits\controller\Controller;
    use \traits\controller\Jump;
    // 方法黑名单
    protected static $blacklist = [];

    protected function filter(&$map)
    {
        if ($this->request->param("name")) {
            $map['name'] = ["like", "%" . $this->request->param("name") . "%"];
        }
        if ($this->request->param("type")) {
            $map['type'] = $this->request->param("type");
        }
        if ($_SESSION['think']['auth_id']!=1) {
            $map['user_id'] = $_SESSION['think']['auth_id'];
        }
    }
    #商户
    public function  beforeAdd()
    {
        $goods = Db::name('goods')->field('id,name')->where(['isdelete'=>0,'status'=>1,'user_id'=>$_SESSION['think']['auth_id']])->select();
        $this->view->assign('goodsList',$goods);
        $userList = Db::name('admin_user')->where(['isdelete'=>0,'status'=>1,'id'=>['>',1]])->select();
        $this->view->assign('userList',$userList);
    }
    public function beforeEdit()
    {
        $this->beforeAdd();
    }

    public function add()
    {
        if($this->request->isPost()){
            $data = $this->request->post();
            $validate = \think\Loader::validate('Lottery');
            if(!$validate->check($data)){
			    return $validate->getError();
            }
            $data = $this->request->post();
            if($data['expire_type']!=1){
                if( !empty($data['grant_start_date']) ){
                    $data['grant_start_date']=strtotime($data['grant_start_date']);
                }
                if( !empty($data['grant_end_date']) ){
                    $data['grant_end_date']=strtotime($data['grant_end_date']);
                }
                if( ($data['grant_end_date']) < ($data['grant_start_date']) ){
                    return ajax_return_adv_error('开始时间必须小于结束时间');
                }
                if( $data['expire_start_date'] ){
                    $data['expire_start_date']=strtotime($data['expire_start_date']);
                }else{
                    return ajax_return_adv_error('开始时间必须');
                }
                if( $data['expire_end_date'] ){
                    $data['expire_end_date']=strtotime($data['expire_end_date']);
                }else{
                    return ajax_return_adv_error('结束时间必须');
                }
                if($data['expire_end_date'] <=  $data['expire_start_date']){
                    return ajax_return_adv_error('有效结束时间必须大于开始时间');
                }
            }
            if(!intval($data['type']) ){
                return ajax_return_adv_error('请选择优惠券类型');
            }else{
                if(intval($data['type'])!= 3){#非代金券都要选择goods_id
                    if( empty($data['goods_id']) ){
                        return ajax_return_adv_error('请选择关联商品');
                    }
                }
            }

            $model = new \app\common\model\Lottery;
            if($data['goods_id']){
                $goods = Db::name('goods')->field('id,name')->where('id',$data['goods_id'])->find();
                $data['goods_name'] = $goods['name'];
            }

            $data['user_id']= isset($data['user_id'])?$data['user_id']:$_SESSION['think']['auth_id'];
//            dump($data);die;
            unset($data['id']);
            #剩余量
            if( !empty($data['pic']) ){
                $data['pic']= json_encode($data['pic']);
            }
            $data['surplus_number']=$data['number'];
            $res = $model->insert($data);
            if($res){
                return ajax_return_adv('添加成功');
            }else{
                return ajax_return_adv_error('添加失败');
            }
        }else{
            return $this->view->fetch(isset($this->template) ? $this->template : 'edit');
        }

    }

    #获取指定用户的商品
    public function getUserGoods()
    {
        if($this->request->isAjax()){
            $data=$this->request->post();
            if(!$data['user_id']){
                $data['user_id']=$_SESSION['think']['auth_id'];
            }
            $goods = Db::name('goods')->where(['user_id'=>$data['user_id']])->select();
            return ajax_return($goods,'ok','200');
        }

    }
    public function edit()
    {
        if($this->request->isPost()){
            $data = $this->request->post();
            $validate = \think\Loader::validate('Lottery');
            if(!$validate->check($data)){
                return $validate->getError();
            }
            $data = $this->request->post();
            if($data['expire_type']!=1){
                if( !empty($data['grant_start_date']) ){
                    $data['grant_start_date']=strtotime($data['grant_start_date']);
                }
                if( !empty($data['grant_end_date']) ){
                    $data['grant_end_date']=strtotime($data['grant_end_date']);
                }
                if( ($data['grant_end_date']) < ($data['grant_start_date']) ){
                    return ajax_return_adv_error('开始时间必须小于结束时间');
                }
                if( $data['expire_start_date'] ){
                    $data['expire_start_date']=strtotime($data['expire_start_date']);
                }else{
                    return ajax_return_adv_error('开始时间必须');
                }
                if( $data['expire_end_date'] ){
                    $data['expire_end_date']=strtotime($data['expire_end_date']);
                }else{
                    return ajax_return_adv_error('结束时间必须');
                }
                if($data['expire_end_date'] <=  $data['expire_start_date']){
                    return ajax_return_adv_error('有效结束时间必须大于开始时间');
                }
            }
            if(!intval($data['type']) ){
                return ajax_return_adv_error('请选择优惠券类型');
            }else{
                if(intval($data['type'])!= 3){#非代金券都要选择goods_id
                    if( empty($data['goods_id']) ){
                        return ajax_return_adv_error('请选择关联商品');
                    }
                }
            }
            if( !empty($data['pic']) ){
                $data['pic']= json_encode($data['pic']);
            }
            $id = $data['id'];
            $data['user_id']= isset($data['user_id'])?$data['user_id']:$_SESSION['think']['auth_id'];
            $data['surplus_number']= $data['number'];
            $goods = Db::name('goods')->field('name')->where(['id'=>$data['goods_id']])->find();
            $data['goods_name'] =$goods['name'];
            if(  !empty($data['pic']) ){
                $data['pic'] = json_encode($data['pic']);
            }
            unset($data['id']);
            $res = $this->getModel()->where(['id'=>$id])->update($data);
            if($res){
                return ajax_return_adv('操作成功');
            }else{
                return ajax_return_adv_error('操作失败');
            }
        }else{
            $id = $this->request->param('id');
            if(!$id){
                return  $this->error('缺少参数id');
            }
            $list = Db::name('lottery')->where(['id'=>$id])->find();
            if($list['status']!=0){
                return  '已经发行不可更改';
//                return ajax_return_error("已经发行不可更改");
            }
            $list['pic'] = json_decode($list['pic'],true);
//            dump($list);die;
            $this->view->assign('vo',$list);
            $this->view->assign('flag',1);
            $goods = Db::name('goods')->field('id,name')->where(['isdelete'=>0,'status'=>1])->select();

            $this->view->assign('goodsList',$goods);
            return $this->view->fetch(isset($this->template) ? $this->template : 'edit');
        }
    }

    /**
     * 默认删除操作
     */
    public function delete()
    {
        if($id = $this->request->param('id')){
           $data = $this->getModel()->where(['id'=>$id])->find();
           if($data['status']>=1){
               return ajax_return_error('不可删除正在发行中的奖券');
           }
        }
        return $this->updateField($this->fieldIsDelete, 1, "移动到回收站成功");
    }
    public function  editStatus()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            $lottery = $this->getModel()->field('status')->where(['id'=>$data['id']])->find();
            $res = $this->getModel()->where(['id'=>$data['id']])->update(['status'=>!$lottery['status']]);
            if($res){
                return ajax_return('','操作成功','200');
            }else{
                return ajax_return('','操作失败','500');
            }
        }
    }

}
