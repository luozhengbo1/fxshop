<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;
use think\Db;

class Message extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    protected $beforeActionList = [
        'beforeEdit'  =>  ['only'=>'edit'],
        'beforeAdd'  =>  ['only'=>'add'],

];
    protected function filter(&$map)
    {
        if ($this->request->param("title")) {
            $map['title'] = ["like", "%" . $this->request->param("title") . "%"];
        }
    }
    
    public function beforeEdit()
    {
        $this->view->assign('lottery',$this->getLottery());
    }
    public function beforeAdd()
    {
        $this->view->assign('lottery',$this->getLottery());
    }
    public function getLottery()
    {
        $time = time();#在有效期内的优惠券
        $lottery = Db::name('lottery')
            ->where(['status'=>1, 'isdelete'=>0,'expire_start_date'=>['<',$time],'expire_end_date'=>['>',$time] ])
            ->select();
        return $lottery;
    }

    public function sendUser()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            if(!$data['id']){
            }
            $check = Db::name('message')->where(['id'=>$data['id']])->find();
            if($check['status']==0){
                return json(['msg'=>'该消息已经被禁用，不可发送','code'=>401]);
            }
            $userList = Db::name('customer')->select();
            $arr =[];
            $time = time();
            foreach ($userList as $k=> $v){
                $arr[$k]['uid']= $v['id'];
                $arr[$k]['openid']= $v['openid'];
                $arr[$k]['message_id']=   $data['id'];
                $arr[$k]['create_time']=  $time;
            }
            $res = Db::name('message_user')->insertAll($arr);
            Db::name('message')->where(['id'=>$data['id']])->update(['is_send'=>1]);
            if($res){
                return json(['msg'=>'操作成功','code'=>200]);
            }else{
                return json(['msg'=>'操作失败','code'=>500]);
            }
        }
    }
}
