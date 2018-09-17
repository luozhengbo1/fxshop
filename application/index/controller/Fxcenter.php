<?php
/**
 * Created by PhpStorm.
 * User: luozhengbo
 * Date: 2018/9/7
 * Time: 15:26
 */
namespace app\index\controller;
#手动加载
use think\Loader;
use think\Cache;
use think\Db;
Loader::import('qrcode.index',EXTEND_PATH,EXT);

Class FxCenter extends  Mustlogin
{
    /**
     * @return 主页
     */
    public function  index()
    {
        if($this->userInfo['is_member']!=1){
            $this->myqrcode();
        }
        $this->assign('titleName', "分享中心");
        #查出分享人
        $parUser = Db::name('customer')->where('id',$this->userInfo['pid'])->find();
        #统计我的客户
        $sonUserSql  = "SELECT * from  fy_customer  as a where  a.pid  in 
                          (select b.id from fy_customer b where  b.id={$this->userInfo['id']} or b.pid in 
                          (select c.id from fy_customer c  where  c.id = {$this->userInfo['id']}) )";
        $sonUser = Db::name('customer')->query($sonUserSql);
        $this->view->assign('parUser',$parUser);
        $this->view->assign('sonUser',count($sonUser));
        $this->view->assign('user',$this->userInfo);
        return $this->fetch();
    }
    #积分查询类型
    public function scoreSearchType(){
        //searchtype : 0累计积分   1未提现积分    2可提现积分   3 已提现积分
        if($this->request->isAjax()){
             $data = $this->request->post();
            $where = ['get_user_openid'=>$this->userInfo['openid']];
            switch ($data['flag']){
                case 0:
                    $where['type']=1;//
                    break;
                case 1:
                    $where['type']=1;
                    $where['is_tx']=0;
                    break;
                case 2:
                    $where['type']=1;
                    $where['is_tx']=0;
                    break;
                case 3:
                    $where['type']=2;
                    break;
            }
            $scoreList = Db::name('fx_user_log')
                ->field('fy_fx_user_log.*,fy_customer.headimgurl')
                ->join('fy_customer','fy_fx_user_log.source_user_openid=fy_customer.openid','left')
                ->where($where)
                ->page($data['page'],$data['size'])->select();
            if( !empty( $scoreList) ){
                foreach ($scoreList as &$v){
                    $v['create_time']= date('Y-m-d H:i:s',$v['create_time']);
                }
            }

            return ajax_return(($this->userInfo['fx_money']==0 && ($data['flag']==1 || $data['flag']==2) )?'':$scoreList,'操作成功',200);
        }else{
            $searchtype = $this->request->param('searchtype');
            switch ($searchtype){
                case 0:
                    $title = "累计积分";
                    break;
                case 1:
                    $title = "未提现积分";
                    break;
                case 2:
                    $title = "可提现积分";
                    break;
                case 3:
                    $title = "已提现积分";
                    break;
            }
            $this->assign('titleName', $title);
            $this->assign('flag', $searchtype);
            $this->assign('user', $this->userInfo);
            return $this->fetch("scoreSort");
        }
    }
    public function scoreSort($sorttype=1){
        $where = ['get_user_openid'=>$this->userInfo['openid']];
        switch ($sorttype){
            case 0:
                $title = "会员积分";
                break;
            case 1:
                $title = "重消积分";
                $where['type'] =1;#增加的
                $where['is_tx'] =0;
                break;
        }
        if($this->request->isAjax()){
            $scoreList = Db::name('fx_user_log')->where($where)->select();
            return ajax_return($scoreList,'操作成功',200);
        }else{
            $this->assign('titleName', $title);
            return $this->fetch("scoreSort");
        }
    }
    public function bankCard(){
        $bankList = Db::name('fx_tx_bank')->where(['openid'=>$this->userInfo['openid']])->select();

        $this->view->assign('bankList',$bankList);
        $this->assign('titleName', "我的银行卡");
        return $this->fetch("bankCard");
    }

    /**
     * 银行卡添加编辑
     */
    public function bankCardEdit(){
        if($this->request->isAjax()){
            $data= $this->request->post();
            if(!preg_match_all('/^1\d{10}$/',$data['mobile'])){
                return ajax_return('','请正确填写手机号',500);
            }
            if(!preg_match_all('/^\d+$/',$data['cart_number'])){
                return ajax_return('','请正确填写银行卡号',500);
            }
            if( !$data['bank_name'] ){
                return ajax_return('','请正确填写银行名称',500);
            }
            if( !empty($data['id']) ){#不为空修改
                $bankId = $data['id'];
                unset($data['id']);
                $data['update_time'] =date('Y-m-d H:i:s');
                $res = Db::name('fx_tx_bank')->where(['id'=>$bankId,'openid'=>$this->userInfo['openid']])->update($data);
            }else{
                unset($data['id']);
                $data['create_time'] =date('Y-m-d H:i:s');
                $data['openid'] =$this->userInfo['openid'];
                $res = Db::name('fx_tx_bank')->insert($data);
            }
            if($res){
                return ajax_return('','操作成功',200);
            }
        }else{
            $this->assign('titleName', "添加银行卡");
            $bankId = $this->request->param('bankId');
//            dump($bankId);
            if( !empty($bankId) ){
                $this->assign('titleName', "修改银行卡");
                $bankData = Db::name('fx_tx_bank')->where(['id'=>(int)$bankId,'openid'=>$this->userInfo['openid']])->find();
                $this->view->assign('bank',$bankData);
            }
            return $this->fetch("bankCardEdit");
        }

    }

    public function withdrawAffairm($bankId){
        $this->assign('titleName', "确认提现");
        $bankData = Db::name('fx_tx_bank')->where(['id'=>(int)$bankId,'openid'=>$this->userInfo['openid']])->find();
        $this->userInfo['fx_real_money'] = number_format($this->userInfo['fx_money']*(100-16.5)/100,2);
        if($this->userInfo['fx_money']>=0 && $this->userInfo['fx_money']<5000  ){
            $this->userInfo['fx_real_money']-=2;
        }
        if($this->userInfo['fx_money']>=5000 && $this->userInfo['fx_money']<10000  ){
            $this->userInfo['fx_real_money']-=5;
        }
        if($this->userInfo['fx_money']>=10000 && $this->userInfo['fx_money']<20000  ){
            $this->userInfo['fx_real_money']-=10;
        }
        if($this->userInfo['fx_money']>=20000  ){
            $this->userInfo['fx_real_money']-=50;
        }
        $this->view->assign('bank',$bankData);
        $this->view->assign('user',$this->userInfo);

        return $this->fetch("withdrawAffairm");
    }
    public function  withdrawList(){
        if( $this->request->isAjax() ){
            $data = $this->request->post();
            $page = $data['page']?$data['page']:'1';
            $size = $data['size']?$data['size']:'10';
            $where =['tx_user_openid'=>$this->userInfo['openid']];
            if($data['flag']=='1'){#待审核
                $where['status']=1;
            }else if($data['flag']=='2'){#待打款
                $where['status']=2;
            }else if($data['flag']=='3'){#已打款
                $where['status']=3;
            }else if($data['flag']=='4'){#无效
                $where['status']=4;
            }
            $txList = Db::name('fx_tx_log')
                ->where($where)
                ->page($page,$size)->order('create_time desc')
                ->select();
            return ajax_return($txList,'ok','200');
        }else{
            $this->assign('titleName', "提现明细");
            return $this->fetch("withdrawList");
        }
    }
    public function withDrawDetail($id){
        $detail = Db::name('fx_tx_log')
            ->where([
                'id'=>$id
            ])
            ->find();
        $this->assign('titleName', "提现详情");
        $this->assign('detail', $detail);
        return $this->fetch("withDrawDetail");
    }

    /**
     * 申请提现
     */
    public function txScoreAdd()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            $user = Db::name('customer')->where('openid',$this->userInfo['openid'])->find();
            if($user['fx_money'] <1 ){
                return ajax_return('','提现积分应大于100','500');
            }
            if( !$data['bankId']  ){
                return ajax_return('','请选择提现银行卡','500');
            }
            $insert =[];
            $insert['tx_real_money'] = number_format($user['fx_money']*(100-16.5)/100,2);
            if($user['fx_money']>=0 && $user['fx_money']<5000  ){
                $insert['tx_real_money']-=2;
            }
            if($user['fx_money']>=5000 && $user['fx_money']<10000  ){
                $insert['tx_real_money']-=5;
            }
            if($user['fx_money']>=10000 && $user['fx_money']<20000  ){
                $insert['tx_real_money']-=10;
            }
            if( $user['fx_money']>=20000  ){
                $insert['tx_real_money']-=50;
            }
            #提现订单
            $insert['create_time'] = date('Y-m-d H:i:s');
            Db::name('fx_tx_log')->insert($insert);
            $insId  = Db::name('fx_tx_log')->getLastInsID();
            $update['tx_order_id'] = 'TX'.time().$insId;
            $update['tx_user'] = $user['nickname'];
            $update['tx_user_id'] = $user['id'];
            $update['tx_user_openid'] = $user['openid'];
            $update['tx_money'] = $user['fx_money'];
            $update['tx_real_money'] = $insert['tx_real_money'];
            $update['status'] =1;#待审核
            $update['bank_detail'] = json_encode(Db::name('fx_tx_bank')->where('id',$data['bankId'])->find());
            $update['tx_cost'] = $user['fx_money']- $insert['tx_real_money'];
            $res = Db::name('fx_tx_log')->where('id',$insId)->update($update);
            if($res){
                #将用户积分减少 占时不记录
                Db::name('customer')->where('openid',$user['openid'])->update(['fx_money'=>0]);
                return ajax_return('','提现申请成功','200');
            }
        }

    }

    #我的二维码
    public function myqrcode()
    {
        $imgPath = Cache::get($this->userInfo['openid'].'qrcode');
        if(!$imgPath){
            $savePath=__DIR__.'/../../../public/qr';
            $logoPath=$this->userInfo['headimgurl'];
            $filename=__DIR__.'/../../../public/qr/save';
            $qr = new \qr($savePath,$logoPath,$filename);
            $localUrl = 'http://'.$_SERVER['HTTP_HOST'].':'.$_SERVER['SERVER_PORT']."/index.php/index/index/index?uid={$this->userInfo['id']}";
            $imgPath=$qr->createQR($localUrl);
//            $qr->addLogo();//调用加入logo
            Cache::set($this->userInfo['openid'].'qrcode',$imgPath);
        }
        $imgPath = substr($imgPath,strpos($imgPath,'qr')-1);
//        echo '<img src="http://blog.istiny.cc'.$imgPath.'">';
        $this->view->assign('titleName','分享二维码');
        $this->view->assign('myqrcode',$imgPath);
        $this->view->assign('userInfo',$this->userInfo);
        return $this->view->fetch("myQrcode");
    }

    /**
     * 所有积分类型统计 累计积分
     */
    public function fxScoreList()
    {
        $this->view->assign('user',$this->userInfo);
        return $this->view->fetch();
    }

    /**
     * 某一类积分来源
     */
    public function  fxScoreDetail($page=1,$size=10,$fxScoreId)
    {
        $scoreLog = Db::name('fx_user_log')
            ->where('get_user_openid',$this->userInf['openid'])
            ->page($page,$size)
            ->order('create_time desc')
            ->select();
        $this->view->assign('scoreLog',$scoreLog);
        return $this->view->fetch();
    }



    /**
     * 可积分明细
     */
    public function txScoreDetail()
    {

    }

    /**
     *体现银行绑定
     */
    public function  txBankList()
    {

    }

    /**
     * 提现申请明细
     */
    public function  txDetail()
    {

    }
    /**
     * 重消积分来源
     */
    public function  cxScore()
    {

    }

    /**
     * 提现处理显示
     */
    public  function  txHandleShow()
    {

    }
    /**
     *提现订单详情
     */
    public function  txHandleShowDetail()
    {

    }

    /**
     * 积分明细 按月份来分
     */
    public function scoreDetail()
    {

    }

    /**
     * 我的团队，展示下级和下下级
     */
    public function myTeam()
    {
        $this->assign('titleName', "我的团队");
        #查询我下属用户
        $user = Db::name('customer')->where(['openid'=>$this->userInfo['openid']])->find();
        $userArr = $this->getSonUser($user['id']);
        #查出分享人
        $parentUser = Db::name('customer')->field('nickname,headimgurl,id,openid')->where(['id'=>$user['pid']])->find();
        $this->view->assign('userArr',$userArr[0]);
        $this->view->assign('user',$user);
        $this->view->assign('parentUser',$parentUser);
        return $this->view->fetch('myTeam');
    }

    /**
     * 分销的用户
     */
    public function fxUserDetail()
    {
        $parentUser = Db::name('customer')->field('id,nickname,username,mobile')->where('id',$this->userInfo['pid'])->find();
        return $this->view->fetch('fxUserDetail',['user'=>$this->userInfo,'parentUser'=>$parentUser]);
    }

    public function getSonUser($id){
        //先查询出顶级分类，也就是父级id为0的
        if($id) $a = Db::name('customer')->field('nickname,headimgurl,id,openid')->where('id',$id)->select();
        else $a = Db::name('customer')->field('nickname,headimgurl,id,openid')->where('pid',0)->select();
        $b = [];
        $c = [];
        foreach ($a as $k => $v) {
            //定义一个空数组为二级分类的名字
            $a[$k]['child'] = [];
            //查询二级分类。条件为父id等于等级分类的id
            $b = Db::name('customer')->field('nickname,headimgurl,id,openid')->where('pid',$v['id'])->select();
            foreach ($b as $k1 => $v1) {
                //把查询出来的结果合并到定义的数组中，合并一级二级分类
                array_push($a[$k]['child'], $v1);
                //再定义一个数组为三级分类的名字
                $a[$k]['child'][$k1]['child2'] = [];
                //获取三级分类的信息
                $c = Db::name('customer')->field('nickname,headimgurl,id,openid')->where('pid',$v1['id'])->select();
                foreach ($c as $v2) {
                    //合并一级二级三级分类
                    array_push($a[$k]['child'][$k1]['child2'], $v2);
                }
            }
        }
        return $a;
    }

}