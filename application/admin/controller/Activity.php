<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);
load_trait('controller/Jump');
use app\admin\Controller;
use think\Db;
use think\Loader;

class Activity extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];
    use \traits\controller\Jump;
    protected function filter(&$map)
    {
        if ($this->request->param("name")) {
            $map['name'] = ["like", "%" . $this->request->param("name") . "%"];
        }
        if ($this->request->param("start_date")) {
            $map['start_date'] = ["like", "%" . $this->request->param("start_date") . "%"];
        }
        if ($this->request->param("end_date")) {
            $map['end_date'] = ["like", "%" . $this->request->param("end_date") . "%"];
        }
    }
    #添加和编辑
    public function edit()
    {
        if($this->request->isPost()){
            $data = $this->request->post();
            #图片处理
            $data = picHandle($data);
            $validate = \think\Loader::validate('Activity');
            if(!$validate->check($data)){
                return $validate->getError();
            }
            if($data['start_date']>=$data['end_date']){
                return $this->error('开始时间必须小于结束时间');
            }
            $model = new \app\common\model\Activity();
            $lottery_name = Db::name('lottery')->field('name')->where(['id'=>$data['lottery_id']])->find();
            $data['lottery_name'] =  $lottery_name['name'];
            if($data['id']){#编辑操作
                $id = $data['id'];
                unset($data['id']);
                $res = $model->save($data,['id'=>$id]);
            }
            if( isset($res) ){
                return ajax_return_adv('操作成功');
            }else{
                return ajax_return_adv_error('操作失败');
            }
        }else{
            if(!$this->request->param('id')){
                return ajax_return_error('缺少参数id');
            }
            #并且在有效期之内 $time

            $time = time();
            $lotteryList = Db::name('Lottery')
                ->field('name,id')
                ->where(['isdelete'=>0])
                ->where('expire_start_date','<',$time)
                ->where('expire_end_date','>',$time)
                ->select();
            $vo = $this->getModel()->where(['id'=>$this->request->param('id')])->find();
            $this->view->assign('lotteryList',$lotteryList);
            $this->view->assign('vo', $vo);
            return $this->view->fetch('edit');
        }
    }
    public function add()
    {
        if($this->request->isPost()){
            $data = $this->request->post();
            #图片处理
            $data = picHandle($data);
            $validate = \think\Loader::validate('Activity');
            if(!$validate->check($data)){
                return $validate->getError();
            }
            if($data['start_date']>=$data['end_date']){
                return $this->error('开始时间必须小于结束时间');
            }
            $model = new \app\common\model\Activity();
            $lottery_name = Db::name('lottery')->field('name')->where(['id'=>$data['lottery_id']])->find();
            $data['lottery_name'] =  $lottery_name['name'];
            $res = $model->allowField(true)->save($data);
            if($res){
                return ajax_return_adv('操作成功');
            }else{
                return ajax_return_adv_error('操作失败');
            }
        }else{
            #并且在有效期之内 $time
            $time = time();
            $lotteryList = Db::name('Lottery')
                ->field('name,id')
                ->where(['isdelete'=>0])
                ->where('expire_start_date','<',$time)
                ->where('expire_end_date','>',$time)
                ->select();
            $this->view->assign('lotteryList',$lotteryList);
            return $this->view->fetch('edit');
        }
    }
}
