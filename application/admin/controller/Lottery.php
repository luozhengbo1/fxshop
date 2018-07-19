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
    }

    public function add()
    {
        if($this->request->isPost()){
            $data = $this->request->post();
            $validate = \think\Loader::validate('Lottery');
            if(!$validate->check($data)){
			    return $validate->getError();
            }
          /*  if($data['type']==1){#抵用券
                 if( empty($data['voucher_money']) || empty( $data['voucher_real_money']) ){
                        return ajax_return_adv_error('抵用券设置不合法');
                 }
            }
            if($data['type']==2){#优惠券
                if( empty($data['coupon_money']) || empty( $data['coupon_real_money']) ){
                    return ajax_return_adv_error('优惠券设置不合法');
                }
            }
            if($data['type']==3){#优惠券
                if( empty($data['cash_coupon_real_money'])  ){
                    return ajax_return_adv_error('代金券设置不合法');
                }
            }*/
//            dump($data);die;

            /*if($data['type']==4){#优惠券
                if( empty($data['score_money']) || empty($data['score_real_money']) ){
                    return ajax_return_adv_error('积分券设置不合法');
                }
            }
            if($data['type']==5){#优惠券
                if( empty($data['coupon_money']) || empty( $data['coupon_real_money']) ){
                    return ajax_return_adv_error('生日券设置不合法');
                }
            }*/
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
            if( $data['expire_end_date'] <= $data['expire_start_date']){
                return ajax_return_adv_error('开始时间必须小于结束时间');
            }
            $model = new \app\common\model\Lottery;
            if($data['goods_id']){
                $goods = Db::name('goods')->field('id,name')->find();
                $data['goods_name'] = $goods['name'];
            }
            unset($data['id']);
            #剩余量
            $data['surplus_number']=$data['number'];

            $res = $model->insert($data);
            if($res){
                return ajax_return_adv('添加成功');
            }else{
                return ajax_return_adv_error('添加失败');
            }
        }else{
            $goods = Db::name('goods')->field('id,name')->where(['isdelete'=>0,'status'=>1])->select();
            $this->view->assign('goodsList',$goods);

            return $this->view->fetch(isset($this->template) ? $this->template : 'edit');
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
           /* if($data['type']==1){#抵用券
                if( empty($data['voucher_money']) || empty( $data['voucher_real_money']) ){
                    return ajax_return_adv_error('抵用券设置不合法');
                }
            }
            if($data['type']==2){#优惠券
                if( empty($data['coupon_money']) || empty( $data['coupon_real_money']) ){
                    return ajax_return_adv_error('优惠券设置不合法');
                }
            }
            if($data['type']==3){#优惠券
                if( empty($data['cash_coupon_real_money'])  ){
                    return ajax_return_adv_error('代金券设置不合法');
                }
            }
            if($data['type']==4){#优惠券
                if( empty($data['score_money']) || empty($data['score_real_money']) ){
                    return ajax_return_adv_error('积分券设置不合法');
                }
            }
            if($data['type']==5){#优惠券
                if( empty($data['coupon_money']) || empty( $data['coupon_real_money']) ){
                    return ajax_return_adv_error('生日券设置不合法');
                }
            }*/
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
            $id = $data['id'];
            $data['surplus_number']= $data['number'];
            $goods = Db::name('goods')->field('name')->where(['id'=>$data['goods_id']])->find();
            $data['goods_name'] =$goods['name'];
            unset($data['id']);
            $res = $this->getModel()->where(['id'=>$id])->update($data);
            if($res){
                return ajax_return_adv('修改成功');
            }else{
                return ajax_return_adv_error('修改失败');
            }
        }else{
            $id = $this->request->param('id');
            if(!$id){
                return  $this->error('缺少参数id');
            }
            $list = $this->getModel()->where(['id'=>$id])->find();
            if($list['status']!=0){
                return  '已经发行不可更改';
//                return ajax_return_error("已经发行不可更改");
            }
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
                return ajax_return('修改成功','修改成功','200');
            }else{
                return ajax_return('修改失败','修改失败','500');
            }
        }
    }

}
