<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;
use think\Db;
class FxTxLog extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    public  function upDownHandle()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            if($data['flag']=='up'){#通过
                $res = Db::name('fx_tx_log')->where(['id'=>$data['id']])->update(['status'=>2]);
                if($res){
                    return ajax_return('','操作成功','200');
                }
                return ajax_return('','操作失败','500');
            }

        }
    }
    public function down()
    {
        if($this->request->isPost()){
            $data = $this->request->post();
//            dump($data);
            $txData = Db::name('fx_tx_log')->where('id',$data['id'])->find();
            if($txData['status']==3 || $txData['status']==4 ){
                return ajax_return('','该订单已经打款或失效','500');
            }
            $res = Db::name('fx_tx_log')->where('id',$data['id'])->update(['status'=>4,'sh_desc'=>$data['reason']]);
            if($res){
                #将用户积分加回去
                Db::name('customer')->where(['openid'=>$txData['tx_user_openid']])->setInc('fx_money',$txData['tx_money']);
                return ajax_return('','操作成功','200');
            }
        }else{
            $txData = Db::name('fx_tx_log')->where(['id'=>$this->request->param('id')])->find();
            if($txData['status']==3 || $txData['status']==4 ){
                return '该订单已经打款或失效';
            }
            $this->view->assign('id',$this->request->param('id'));
            return $this->view->fetch();
        }

    }

    #打款操作
    public function payMoney()
    {
        #將提现记录进行 记录
        if($this->request->isAjax()){
            $data = $this->request->post();
            if(!$data['id']){
                return ajax_return('','缺少必要参数','500');
            }
            $res = Db::name('fx_tx_log')->where('id',$data['id'])->update(['status'=>3]);
            $txData = Db::name('fx_tx_log')->where('id',$data['id'])->find();
            if($res){
                #进行打款通知
                #进行记录
                $insert = [];
                $insert['create_time'] =time();
                $insert['get_user_id'] =$txData['tx_user_id'];
                $insert['get_user_openid'] =$txData['tx_user_openid'];
                $insert['get_user_name'] = $txData['tx_user'];
                $insert['source_user_id'] =$txData['tx_user_id'];
                $insert['source_user_name'] =$txData['tx_user'];
                $insert['source_user_openid'] =$txData['tx_user_openid'];
                $insert['order_id'] =$txData['tx_order_id'];
                $insert['money'] =$txData['tx_money'];
                $insert['order_id'] =$txData['tx_order_id'];
                $insert['type'] =2;#负收入
                $insert['is_tx'] =1;#已经提现
                Db::name('fx_user_log')->insert($insert);
                #添加提现金额
                Db::name('customer')
                    ->where(['openid'=>$txData['tx_user_openid']])
                    ->setInc('fx_tx_total_money',$txData['tx_money']);
                #將已经记录的来源进行标记
                Db::name('fx_user_log')
                    ->where(['get_user_openid'=>$txData['tx_user_openid'] ])
                    ->update(['is_tx'=>1]);
                include_once APP_PATH . "/index/controller/sendMsg/SDK/WeiXin.php";
                $wx = new \WeiXin();
                $wx->makeMoney($txData['tx_user'],$txData['tx_real_money'],$txData['tx_user_openid']);
                return ajax_return('','操作成功','200');
            }
        }
    }


}
