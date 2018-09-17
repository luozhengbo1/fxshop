<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;
use think\Db;
class GoodsComment extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    protected function filter(&$map)
    {
        if ($this->request->param("goodsName")) {
            $map['goods_name'] = ["like", "%" . $this->request->param("goodsName") . "%"];
        }
        if ($this->request->param("status")!='') {
            $map['status'] =$this->request->param("status")  ;
        }
        #好评
        if ($this->request->param("avg_score")!='') {
            $data=[];
//            ECHO 345;
            if($this->request->param("avg_score")==1){
                $data=[4,5];
            }
            if($this->request->param("avg_score")==2){
                $data=[2,3];
            }
            if($this->request->param("avg_score")==3){
                $data=[0,1];
            }
            $map['avg_score'] = ["between",$data];
        }
    }

    #回复评论
    public function  returnComment()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            $res = $this->getModel()->where(['id'=>$data['id']])->update(['return_content'=>$data['return_content'],'status'=>1,'return_is'=>1]);
            $goodsComment = Db::name('goodsComment')->where(['id'=>$data['id']])->find();
            if($res){
                Db::name('order_goods')->where(['id'=>$goodsComment['ogid']])->update(['is_send'=>6]);
//                #加上10积分
                Db::name('customer')->where(['openid'=>$goodsComment['openid']])->setInc('score',10);
                #加上用户积分记录
                Db::name('score_log')->insert([
                    'openid'=>$goodsComment['openid'],
                    'source_id'=>$data['id'],
                    'source'=>11,
                    'source'=>10,
                    'time'=>time(),
                ]);
            }
            return ajax_return_adv('回复成功','parent','回复成功','');
        }else{
            $vo = $this->getModel()->where(['id'=>$this->request->param("id")])->find();
            $this->view->assign('vo',$vo );
            return $this->view->fetch();
        }
    }

    //默认恢复操作
    public function resume()
    {
        $id = $this->request->param('id');
        $goodsComment = Db::name('goodsComment')->where(['id'=>$id])->find();
        $scoreLog = Db::name('score_log')->where(['source_id'=>$id, 'source'=>11,'openid'=>$goodsComment['openid']])->find();
        if(!$scoreLog){
            Db::name('customer')->where(['openid'=>$goodsComment['openid']])->setInc('score',10);
            #加上用户积分记录
            $res = Db::name('score_log')->insert([
                'openid'=>$goodsComment['openid'],
                'source_id'=>$id,
                'source'=>11,
                'score'=>10,
                'time'=>time(),
            ]);
        }
        return $this->updateField($this->fieldStatus, 1, "恢复成功");
    }

}
