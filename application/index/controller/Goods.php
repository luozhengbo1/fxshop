<?php
	namespace app\index\controller;
	use think\Db;
	use think\Cache;
	use think\Session;
	
	Class Goods extends Mustlogin
	{
        protected $userInfo;
		#获取热销商品和其他显示的商品
        public function __construct()
        {
            parent::__construct();
            $this->userInfo = Session::get('wx_user');
        }
        #获取商品的
        public function  getGoodsHotOrOther($page,$size,$show_area='3')
        {
            if($show_area=="all"){
                $goodsList =Db::name('goods')->select();
            }else{
                $goodsList = Db::name('goods')
                    ->where(['show_area'=>$show_area,'status'=>1,'isdelete'=>'0'])
                    ->page($page,$size)
                    ->select();
            }
            if( empty($goodsList) ) {
                return ajax_return('','no','500');
            }else{
                return ajax_return($goodsList,'ok','200');
            }
        }
        #获取这个商品的详情
        public function detail($id)
        {
            $this->assign('titleName', "商品详情");
            if(!$id){
                return ajax_return_error('缺少商品id','500');
            }
            #浏览记录 start
            $browse=[];
            $browseRes = Db::name('goods_browse')
                ->where(['openid'=>$this->userInfo['openid'],'goods_id'=>$id])
                ->find();
            $time = time();
            if( empty($browseRes) ){
                Db::name('goods_browse')->insert(['create_time'=>$time,'update_time'=>$time,'openid'=>$this->userInfo['openid'],'goods_id'=>$id ,'num'=>1]);
            }else{
                Db::name('goods_browse')->where(['openid'=>$this->userInfo['openid'],'goods_id'=>$id])->setInc('num',1);
            }
            #浏览记录 end
            $goods =Db::name('goods')->where(['id'=>$id])->find();
            $skuData =  Db::name('goods_attribute')
                ->where(['goods_id'=>$id])
                ->select();
            $proprety_name =  Db::name('goods_proprety_name')
                ->where(['goods_id'=>$id])
                ->select();
            $proprety_name_val =  Db::name('goods_proprety_name')->alias('n')
                ->field('n.id as pro_id,n.name,fy_goods_proprety_val.value,fy_goods_proprety_val.id')
                ->join('fy_goods_proprety_val','fy_goods_proprety_val.propre_name_id=n.id')
                ->where(['n.goods_id'=>$id])
                ->select();
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

            #查询该商品是否有优惠券在这里显示的一定是商品优惠券
            $lottery = Db::name('lottery')
                ->where(['goods_id'=>$id,'isdelete'=>0,'status'=>1])
                ->find();
            $this->view->assign('goods',$goods);
            $this->view->assign('skuData',$skuData);
//            dump($skuData);die;
            $this->view->assign('proprety_name',$proprety_name);
            $this->view->assign('proprety_name_val',$proprety_name_val);
            $this->view->assign('lottery',$lottery);
            $this->view->assign('arr',$arr);
            #获取猜你喜欢的商品
          // dump($arr);
//           dump($proprety_name_val);
           //dump($skuData);die;
            $this->view->assign('guestGoods',$this->guestYouLike($id));
//            dump($this->guestYouLike($id));
//            die;
            return $this->view->fetch();
        }

        #商品搜索
        public function goodsSearch()
        {
            $name = $this->request->param('goodsName');
            if(empty($name) ){
                return ajax_return_error('缺少搜索参数');
            }
            $page = $this->request->param('page');
            $size = $this->request->param('size');
            $goodsList = Db::name('goods')
                ->where(['status'=>1,'isdelete'=>0,'name'=>['like',"%$name%"] ])
                ->page( $page,$size)
                ->select();
            #记录搜索词
            $userInfo=[];
            $userInfo =  Session::get('wx_user');
            $data['openid'] =$userInfo['openid'];
            $data['search'] =$name;
            $data['create_time'] = time();
            Db::name('search')->insert($data);
            $searchId = Db::name('search')->getLastInsID();
            if( empty($goodsList) ){
                return ajax_return_error('什么也没有搜到','500','');
            }else{
                Db::name('search')
                    ->where(['id'=>$searchId])
                    ->update(['goods_id'=>join(array_column($goodsList,'id'),',')]);
                return ajax_return($goodsList,'ok','200');
            }
        }
        public function goodsList(){
            $this->assign('titleName', "商品搜索");
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

        #商品评论
        function  goodsComment($goodsId,$page=1,$size=10)
        {
            if(!$goodsId){
                return ajax_return_error('缺少参数id');
            }
            $goodsCommnet = Db::name('goods_comment')
                ->where(['goods_id'=>$goodsId])
                ->page($page,$size)
                ->select();
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
            if( !empty($goodsId) ){
                $goodsList = Db::name('goods')
                    ->where(['status'=>1,'isdelete'=>0,'id'=>['in',$goodsId]])
                    ->limit(24)
                    ->select();
            }else{
               $goodsClass = Db::name('goods')
                   ->field('goods_class_id')
                   ->where(['id'=>$id,'status'=>1,'isdelete'=>0])
                   ->find();
                $goodsList = Db::name('goods')
                   ->where(['status'=>1,'isdelete'=>'0','goods_class_id'=>['=',$goodsClass['goods_class_id'] ]])
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

	}
