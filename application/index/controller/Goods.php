<?php
	namespace app\index\controller;
	use think\Db;
	use think\Cache;
	use think\Session;
	use think\Controller;
    use think\Request;
    use think\Config;
    Class Goods extends  Controller
//	Class Goods extends  Mustlogin
	{
	    protected $userInfo;
	    public function __construct()
        {
            parent::__construct();
            $sessionUserInfo = \think\Session::get('wx_user');
            $this->userInfo = Db::name('customer')->where(['openid'=>$sessionUserInfo['openid']])->find();
            $this->view->assign('param', $this->request->param('param'));
            //会员收藏数量
            $car = Db::table('fy_car')
                ->where([
                    'openid'=>$this->userInfo['openid'],
                    'status'=> 1
                ])
                ->select();
            $carNum=0;
            foreach ($car as $k=>$v){
                $carNum +=$v['goods_num'];
            }
            if($carNum>999) $carNum=$carNum+'+';
            $time = time();
            $this->view->assign('currentTime',  $time);
            $this->assign('carNum', $carNum);

            #微信分享
            $localUrl = 'http://'.$_SERVER['HTTP_HOST'].':'.$_SERVER['SERVER_PORT'].$_SERVER['REQUEST_URI'];
            $data=[
                'linkurl'=>$localUrl,
                'img'=>'http://'.$_SERVER['HTTP_HOST'].':'.$_SERVER['SERVER_PORT'].'/pic/uploads/20180815/e554024d8505052d6bb4deaaa2c23a03.png',
                'des'=>'泛亚商城各类商品即将上线完毕，商品类型多种多样，欢迎各位会员体验购买！'
            ];
            $this->view->assign('fxData',$data);
            $appid =Config::get('app_id');
            $appSecret =Config::get('app_secret');
            $jssdk = new Jssdk($appid,$appSecret);
            $signPackage = $jssdk->GetSignPackage();
            $this->view->assign('wx',$signPackage);
            $this->view->assign('wxShare',$this->view->fetch('Public/wxShare'));
        }

        #获取商品的
        public function  getGoodsHotOrOther($page,$size,$show_area='3')
        {
            $where = [];
            $where=['status'=>1,'isdelete'=>'0'];
            if($show_area!="all"){
                $where['show_area'] =$show_area;
            }
            $goodsList = Db::name('goods')
                ->field('id,name,buy_num,original_price,basic_price,main_image,basic_price,price_real,settlement_type,score')
                ->where($where)
                ->order('orderby desc ,create_time DESC')
                ->page($page,$size)
                ->select();

            return ajax_return($goodsList,'ok','200');
        }
        #获取这个商品的详情
        public function detail($id,$flag='index')
        {
            $this->assign('titleName', "商品详情");
            if(!$id){
                return ajax_return_error('缺少商品id','500');
            }
            #浏览记录 start
            if($this->userInfo['openid']){
                $browse=[];
                $browseRes = Db::name('goods_browse')
                    ->where(['openid'=>$this->userInfo['openid'],'goods_id'=>$id])
                    ->find();
                $time = time();
                if( empty($browseRes) ){

                    Db::name('goods_browse')
                        ->insert(['create_time'=>$time,'update_time'=>$time,'openid'=>$this->userInfo['openid'],'goods_id'=>$id ,'num'=>1]);
                }else{
                    Db::name('goods_browse')->where(['openid'=>$this->userInfo['openid'],'goods_id'=>$id])->setInc('num',1);
                }
            }
            #浏览记录 end
            $goods = Cache::get('goodsDetail'.$id);
            if(!$goods){
                $goods =Db::name('goods')->where(['id'=>$id])->find();
                if(empty($goods)){
                    return $this->view->fetch('index/noPage');
                }
                Cache::set('goodsDetail'.$id,$goods,30*60);
            }
            $skuData = Cache::get('skuData'.$id);
            if(!$skuData){
                $skuData =  Db::name('goods_attribute')
                    ->field('id,goods_id,attribute_name,goods_code,store,price,bar_code,point_score')
                    ->where(['goods_id'=>$id])
                    ->select();
                Cache::set('skuData'.$id,$skuData,30*60);
            }
            $proprety_name = Cache::get('proprety_name'.$id);
            if(!$proprety_name){
                $proprety_name =  Db::name('goods_proprety_name')
                    ->field('id,goods_id,name,goods_class_id')
                    ->where(['goods_id'=>$id])
                    ->select();
                Cache::set('proprety_name'.$id,$proprety_name,30*60);
            }
            $proprety_name_val = Cache::get('proprety_name_val'.$id);
            if(!$proprety_name_val){
                $proprety_name_val =  Db::name('goods_proprety_name')->alias('n')
                    ->field('n.id as pro_id,n.name,fy_goods_proprety_val.value,fy_goods_proprety_val.id')
                    ->join('fy_goods_proprety_val','fy_goods_proprety_val.propre_name_id=n.id')
                    ->where(['n.goods_id'=>$id])
                    ->select();
                Cache::set('proprety_name_val'.$id,$proprety_name_val,30*60);
            }
            $arr =[];
            foreach($proprety_name as $k=>$v){
                foreach ($proprety_name_val as $key=>$val){
                    if($v['id']==$val['pro_id']){
                        $arr[$v['name']][$val['id']]=$val['value'];
                    }
                }
            }
            if( !empty($goods['pic']) ){
                $goods['pic'] =json_decode($goods['pic'],true);
            }
            if( !empty($goods['routine']) ){
                $goods['routine'] =json_decode($goods['routine'],true);
            }
            #服务信息
            if( !empty($goods['service']) ){
                $goods['service'] = json_decode($goods['service'],true);
            }
            #查询该商品是否有优惠券在这里显示的一定是商品优惠券
            $this->view->assign('goods',$goods);
            $this->view->assign('skuData',$skuData);
            $this->view->assign('proprety_name',$proprety_name);
            $this->view->assign('proprety_name_val',$proprety_name_val);
            $this->view->assign('arr',$arr);
            #获取猜你喜欢的商品
            $this->view->assign('guestGoods',$this->guestYouLike($id));
            $arr = $this->getGoodsgoodOrBad($id);

            if($goods['settlement_type'] == 2){
                //结算类型是积分结算
                $this->view->assign('lotterys', array());
            }else{
                $lotterys =$this->return_lottery($id);
                $this->view->assign('lotterys', $lotterys);
            }

            $this->view->assign('bad', $arr['bad']  );
            $this->view->assign('mid', $arr['mid'] );
            $this->view->assign('good', $arr['good'] );
            return $this->view->fetch();
        }

        public function getGoodsgoodOrBad($id)
        {
            $getGoodsgoodOrBad = Cache::get('getGoodsgoodOrBad'.$id);
            if(!$getGoodsgoodOrBad){
                $bad = Db::name('goods_comment')
                    ->where(['status'=>1,'goods_id'=>$id,'avg_score'=>['between',[0,2] ]])
                    ->count();
                $mid = Db::name('goods_comment')
                    ->where(['status'=>1,'goods_id'=>$id,'avg_score'=>['between',[2.0001,4] ]])
                    ->count();
                $good = Db::name('goods_comment')
                    ->where(['status'=>1,'goods_id'=>$id,'avg_score'=>['between',[4.0001,5] ]])
                    ->count();
                $getGoodsgoodOrBad=['bad'=>$bad,'mid'=>$mid,'good'=>$good];
                Cache::set('getGoodsgoodOrBad'.$id,$getGoodsgoodOrBad,60*30);
            }
            return $getGoodsgoodOrBad;
        }

        #商品搜索
        public function goodsSearch()
        {
            $name = $this->request->param('goodsName');
            $page = $this->request->param('page');
            $size = $this->request->param('size');
            $showArea = $this->request->param('show_area');
            $tempArr = explode(",", $showArea);
            $time = time();
            $where = [
                'status'=>1,
                'isdelete'=>0,
                'show_area'=>['in',$tempArr],
            ];
            if($showArea ==1){
                //限时抢购，只查活动时间没有结束的活动
               // $where['start_date'] = ['<',$time];
                $where['end_date'] = ['>',$time];
            }
            //空查所有
            if(!empty($name) ){
                $where['name'] = ['like',"%$name%"];
            }
            $goodsList = Db::name('goods')
                ->where($where)
                ->page( $page,$size)
                ->select();
            //商品对应的sku
            foreach ($goodsList as $k=>$v){
                $goods_attribute = Db::name('goods_attribute')
                    ->where(['goods_id'=>$v['id']])
                    ->page($page,$size)
                    ->select();
                $goodsList[$k]['skuData'] =$goods_attribute;
            }
            #记录搜索词
            $data['openid'] =$this->userInfo['openid'];
            $data['search'] =$name;
            $data['create_time'] = time();
            if(!empty($name) &&  !empty( $data['openid'])){
                Db::name('search')->insert($data);
            }
            $searchId = Db::name('search')->getLastInsID();
            Db::name('search')
                ->where(['id'=>$searchId])
                ->update(['goods_id'=>join(array_column($goodsList,'id'),',')]);
            return ajax_return($goodsList,'ok','200');
        }
        public function getSearchName(){
            $name = $this->request->param('goodsName');
            $page = $this->request->param('page');
            $size = $this->request->param('size');
            $showArea = $this->request->param('show_area');
            $tempArr = explode(",", $showArea);
            $where =[
                'status'=>1,
                'isdelete'=>0,
                'name'=>['like',"%$name%"],
                'show_area'=>['in',$tempArr],
            ];
            $nameList = Db::name('goods')
                ->field('name')
                ->where($where)
                ->page( $page,$size)
                ->select();
            return ajax_return($nameList,'ok','200');
        }
        public function goodsList(){
            $this->assign('titleName', "商品搜索");
            $this->view->assign('param', $this->request->param('param'));
            $searchHistory = Db::name('search')
                ->distinct(true)
                ->field('search')
                ->where(['openid'=>$this->userInfo['openid']])
                ->order('create_time desc')
                ->limit(5)
                ->select();
            $this->assign('searchHistory',$searchHistory?$searchHistory:'');
            return $this->view->fetch();
        }

        #猜你喜欢
        public function guestYouLike($id)
        {
            #取出浏览记录中前10条 不含这个商品
            $broseList = Db::name('goods_browse')
                ->field('goods_id')
                ->where([ 'openid'=>$this->userInfo['openid'],'goods_id'=>['<>',$id] ])
                ->order('create_time desc')
                ->select();

            #取出搜索记录
            $searchList =Db::name('search')
                ->field('goods_id')
                ->where([ 'openid'=>$this->userInfo['openid']] )
                ->order('create_time desc')
                ->limit(10)
                ->select();
            if(!empty($broseList) || !empty($searchList) ){
                $broseData = array_unique(array_column($broseList,'goods_id'));
                $searcId =array_unique( array_column($searchList,'goods_id'));
                $goodsId =join( array_unique(explode(',',join($broseData,',').','.join($searcId,','))),',' );
            }
            $thisGoods = Db::name('goods')->field('show_area')->where(['id'=>$id])->find();
            if( !empty($goodsId) ){
                $goodsList = Db::name('goods')
                    ->where(['status'=>1,'isdelete'=>0,'id'=>['in',$goodsId],'show_area'=>$thisGoods['show_area']])
                    ->limit(24)
                    ->select();
            }else{
               $goodsClass = Db::name('goods')
                   ->field('goods_class_id')
                   ->where(['id'=>$id,'status'=>1,'isdelete'=>0])
                   ->find();
                $goodsList = Db::name('goods')
                   ->where(['status'=>1,'isdelete'=>'0','goods_class_id'=>$goodsClass['goods_class_id'],'show_area'=>$thisGoods['show_area' ] ])
                    ->limit(24)
                   ->select();
            }
            return  array_chunk($goodsList,6,false);
        }
        public function getSku($id){
            $skuData =  Db::name('goods_attribute')
                ->where(['goods_id'=>$id])
                ->select();
            if(empty($skuData)){
                return ajax_return('','no',500);
            }else{
                return ajax_return($skuData,'ok',200);
            }

        }
        #获取这个商品的详情
        public function evaluateList()
        {
            return $this->view->fetch('evaluateList');
        }

        #获取商品评论接口
        public function  goodsComment()
        {
            $this->assign('titleName', "商品评价");
            $this->assign('param', $this->request->param('param'));
            if($this->request->isAjax()){
                $data = $this->request->post();
                $page = $this->request->param('page')?$this->request->param('page'):1;
                $size = $this->request->param('size')?$this->request->param('size'):4;

                if(!$data['id']){
                    return ajax_return_error('缺少参数id');
                }
                $data['start']=$data['start']+0.0001;
                $comment = Db::name('goods_comment')
                    ->where(['status'=>1,'goods_id'=>$data['id'], 'avg_score'=>['between',[$data['start'],$data['end'] ]]])
                    ->page($page,$size)
                    ->select();
//                echo Db::name('goods_comment')->getLastSql();die;
                $count = Db::name('goods_comment')
                    ->where(['status'=>1,'goods_id'=>$data['id'],'avg_score'=>['between',[$data['start'],$data['end'] ]]])
                    ->page($page,$size)
                    ->count();
                return ajax_return($comment,'ok','200');
            }else{
                $arr = $this->getGoodsgoodOrBad( $this->request->param('goods_id'));
                $this->view->assign('bad', $arr['bad']  );
                $this->view->assign('mid', $arr['mid'] );
                $this->view->assign('good', $arr['good'] );
                $this->view->assign('goods_id',    $this->request->param('goods_id'));
                return $this->view->fetch('commentsList');
            }
        }
        #积分商城
        public function  goodsScore(){
            $this->assign('titleName', "积分商城");
            return $this->view->fetch('goodsScore');
        }
        #限时抢购
        public function  rushPurchase(){
            $this->assign('titleName', "限时抢购");
            return $this->view->fetch('rushPurchase');
        }
        #获取商品所具有的券
        public function  goodsLottery($goods_id){
            $lotterys =$this->return_lottery($goods_id);
            return ajax_return($lotterys,'',200);
        }
        public function return_lottery_demo($goods_id){
            #取出商品中发行中，未删除的所具有的券
            $time = time();
            $resultLottery=array();
            $arrType=[2,4];
            //积分商品查出优惠券
            $settlementType = Db::name('goods')
                ->field('settlement_type')->where(["id"=>$goods_id])->find();
            dump($settlementType);
            die;
            $arrGoodsId =[$goods_id,'all'];
            $lotterys = Db::name('lottery')->where([
                "goods_id"=>['in',$arrGoodsId],
                'status'=>1,
                'isdelete'=>'0',
                'grant_start_date' =>['<', $time],
                'type'=>['in', $arrType],
                'grant_end_date' =>['>', $time],
            ])->select();
            #查询领取过这个奖券
            $lotteryLogs = Db::name('lottery_log')->where(['openid' => $this->userInfo['openid']])->select();
            foreach ($lotterys as $k=>$lottery){
                foreach ($lotteryLogs as $key=>$log){
                    //有领券记录
                    if($lottery['id'] == $log['lottery_id'] ){
                        $lotterys[$k]['lotteryLog'] =$log;
                    }
                }
            }
            foreach ($lotterys as $k=>$lot){
                #expire_type 0 表示有效期是按日期设置 1 按天数设置
                if($lot['expire_type'] ==0 &&
                    $lot['grant_start_date']<$time &&
                    $lot['grant_end_date']>$time){
                    array_push($resultLottery, $lot);
                }else if($lot['expire_type'] == 1){
                    array_push($resultLottery, $lot);
                }
            }
            return $resultLottery;
        }

        #清楚浏览记录
        public function delSearchHistory()
        {
            if($this->request->isAjax()){
                $data = $this->request->post();
                $res = Db::name('search')->where(['openid'=>$this->userInfo['openid']])->delete();
                return ajax_return('','删除成功',200);
            }
        }

        public function return_lottery($goods_id)
        {
            #取出商品中发行中，未删除的所具有的券
            $time = time();
            $lotterys=array();
            //券的类型
            $arrType=[2];
            $arrGoodsId =[$goods_id,'all'];
            $tempLottery = Db::name('lottery')->where([
                "goods_id"=>['in',$arrGoodsId],
                'status'=>1,
                'isdelete'=>'0',
                'type'=>['in', $arrType],
                'use_type'=>0,
            ])->select();
            #查询领取过这个奖券
            $lotteryLogs = Db::name('lottery_log')->where(['openid' => $this->userInfo['openid']])->select();
            foreach ($tempLottery as $k=>$lottery){
                foreach ($lotteryLogs as $key=>$log){
                    //有领券记录
                    if($lottery['id'] == $log['lottery_id'] ){
                        $tempLottery[$k]['lotteryLog'] =$log;
                    }
                }
            }
            foreach ($tempLottery as $key=>$lot){
                #expire_type 0 表示有效期是按日期设置 1 按天数设置
                if($lot['expire_type'] ==0 &&
                    $lot['grant_start_date']<$time &&
                    $lot['grant_end_date']>$time){
                    array_push($lotterys, $lot);
                }else if($lot['expire_type'] == 1){
                    #已经领取过券的需要判断领取的券是否过期
                    // dump($lot['expire_type']);
                    if(!empty( $tempLottery[$key]['lotteryLog'])){
                        $expireTime = $lot['lotteryLog']['addtime']+($lot['expire_time']*24*60*60);
                        #判断领取的券是否已经过期
                        if($time<$expireTime){
                            array_push($lotterys, $lot);
                        }
                    }else{
                        array_push($lotterys, $lot);
                    }
                }

            }
            return $lotterys;
        }


	}
