<?php
namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;
use think\Db;

class Goods extends Controller
{
    use \app\admin\traits\controller\Controller;
    // 方法黑名单
    protected static $blacklist = [];

    #用户id
    protected $uid;
    use \traits\controller\Jump;
    public function __construct()
    {
    	parent::__construct();
    	$this->uid = $_SESSION['think']['auth_id'];
    }

    protected function filter(&$map)
    {
        if ($this->request->param("name")) {
            $map['name'] = ["like", "%" . $this->request->param("name") . "%"];
        }
        if ($this->request->param("show_area")) {
            $map['show_area'] =$this->request->param("show_area") ;
        }
        if ($this->request->param("is_real")) {
            $map['is_real'] =$this->request->param("is_real") ;
        }
        if ($this->request->param("create_time") ) {
            $map['create_time'] =['between',[strtotime($this->request->param("create_time")),strtotime($this->request->param("end_create_time"))] ] ;
        }
        if ($this->request->param("status") ) {
            $map['status'] =$this->request->param("status") ;
        }

        if($this->uid!=1){#非超级管理员只显示自己的商品
            $map['user_id'] =$this->uid;
        }
    }
    #商品添加
    public function add()
    {
    	if($this->request->isAjax()){
    		$create_time = time();
    		$update_time = time();
    		$allData = $this->request->post();
    		#前端json过来的数据需要转义
            $allData['skuZuheData'] = json_decode(str_replace("&quot;", "\"", $allData['skuZuheData'] ),true);
            $allData['propty_name_val'] = json_decode(str_replace("&quot;", "\"", $allData['propty_name_val'] ),true);
    		$validate = \think\Loader::validate('Goods');
            $data = $allData;
			if(!$validate->check($data)){
			    return $validate->getError();
			}
    		$goods=[];
//    		if( $data['settlement_type']==1 ){#现价
//				$goods['price'] = $data['price'];
//    		}else if( $data['settlement_type']==2 ){#积分价
//				$goods['socre'] = $data['socre'];
//    		}else{#积分+现价
//    			$goods['score_price'] = $data['score_price'];
//    		}
    		if( $data['show_area']==1 ){#限时抢购区域
                $goods['start_date'] = isset($data['start_date'])? strtotime($data['start_date']):'';
                $goods['end_date'] = isset($data['end_date'])? strtotime($data['end_date']):'';
                if(  isset($goods['start_date']) &&  isset($goods['end_date']) ){
                    if( $goods['start_date'] >=$goods['end_date'] ){
                        return ajax_return_adv_error('开售时间必须小于结束时间');
                    }
                }
    		}
    		if( $data['free_type']!=1 ){#不包邮
    		    if( empty($data['postage']) ){
                    return ajax_return_adv_error('请填写邮费');
                }
    			$goods['postage'] = $data['postage'];
    		}
    		#是否包邮
    		$goods['free_type'] = $data['free_type'];
    		#显示区域
    		$goods['show_area'] = $data['show_area'];
    		#s商品名称
    		$goods['name'] = $data['name'];
            if( isset($data['price']) &&  $data['price'] ){
                $goods['price_real'] = $data['price'];
            }
            #积分价
            if( isset($data['score']) &&  $data['score'] ){
                $goods['score'] = $data['score'];
            }
    		#原价
    		$goods['original_price'] = $data['original_price'];
    		#结算类型
    		$goods['settlement_type'] = $data['settlement_type'];
    		$goods['goods_class_id'] = $data['goods_class_id'];
    		$goods['goods_brand_id'] = $data['goods_brand_id'];
    		$goods['detail'] = $data['detail'];
    		$goods['status'] = 0;
    		$goods['main_image'] = $data['main_image'];
    		$goods['subtitle'] = $data['subtitle'];
    		$goods['create_time'] = $create_time;
    		$goods['update_time'] = $update_time;
    		$goods['orderby'] = $data['orderby'];
    		$goods['goods_weight'] = $data['goods_weight'];
    		$goods['is_real'] = $data['is_real'];
    		$goods['return_score'] = $data['return_score'];
    		#下单减库存类型
    		$goods['store_type'] = $data['store_type'];
            $goods['after_sale'] = $data['after_sale'];
            #基础价格
            $goods['basic_price'] = $data['basic_price'];
            #商家编码
            $goods['shop_code'] = $data['shop_code'];
            #销量
            $goods['buy_num'] = $data['buy_num'];
            #商品条形码
            $goods['bar_code'] = $data['bar_code'];
            $goods['is_comment'] = $data['is_comment'];
            #商品生产地
            $goods['yieldly'] = $data['yieldly'];
            #所属商户
            $goods['user_id'] = $data['user_id'];
            $goods['is_return_goods'] = $data['is_return_goods'];

            if(  !empty($data['pic']) ){
                $goods['pic'] = json_encode($data['pic']);
    		}

    		#常规参数处理
    		if( !empty($data['routine_key']) || !empty($data['routine_val'])   ){
    			$goods['routine'] = json_encode(array_combine($data['routine_key'],$data['routine_val']));
    		}
    		 $res = Db::name('goods')->insert($goods);
    		 $goods_id = Db::name('goods')->getLastInsID();
            #属性和属性值插入
            if(!empty($allData['propty_name_val'])){
    		    $propty_name =[];
                $propty_name_val=[];
                 foreach ($allData['propty_name_val'] as $v ){
                    foreach ($v as $k =>$v1){
                       $propty_name[] =trim( strstr( $v1,':',-1 ),':');
                       $propty_name_val[] = trim(strrchr( $v1,':' ),':');
                    }
                 }

                #把数组去重
                 foreach (array_unique($propty_name) as $k=>$v){
                     Db::name('goods_proprety_name')->insert(['goods_id'=>$goods_id,'name'=>$v]);
                     $ids[]=Db::name('goods_proprety_name')->getLastInsID();
                 }

                $name_num=[];
                 for($i=0;$i<count($ids);$i++){
                     for($j=0;$j<array_values(array_count_values($propty_name))[$i];$j++){
                         $name_num[]=$ids[$i];
                     }
                 }

                for($i=0; $i<count($propty_name);$i++ ){
                     $val[]=['goods_id'=>$goods_id,'value'=>$propty_name_val[$i],'propre_name_id'=>$name_num[$i]];
                 }
                Db::name('goods_proprety_val')->insertAll($val );

            }
    		#sku插入
            if(!empty($allData['skuZuheData'])){
    		    $skuData=[];
    		    foreach ($allData['skuZuheData'] as $k=>$v){
                    $skuData[$k]['price']=$v['price'];
                    $skuData[$k]['store']=$v['num'];
                    $skuData[$k]['goods_code']=$v['code'];
                    $skuData[$k]['point_score']=$v['pointPrice'];
                    #条形码
                    $skuData[$k]['bar_code']=$v['bar'];
                    $skuData[$k]['goods_id']= $goods_id;
                    $skuData[$k]['attribute_name']=$v['SkuId'];
                }

                $res = Db::name('goods_attribute')->insertAll($skuData);

            }else{
                $insert=[];
                $goodsAttribute = Db::name('goods_attribute')->where(['goods_id'=>$goods_id])->find();
                if($goodsAttribute){
                    Db::name('goods_attribute')->where(['goods_id'=>$goods_id])->delete();
                }
                $insert['goods_id'] = $goods_id;
//                $insert['goods_code'] = $data['goods_code'];
                $insert['price'] = $data['price'];
                $insert['point_score'] = $data['point_price'];
                $insert['bar_code'] = $data['bar_code'];
                $insert['store'] = $data['store'];
                $res = Db::name('goods_attribute')->insert($insert);

            }

            return ajax_return('','添加成功','200');

    	}else{
    		if( !getGoodsClassTree($this->uid) && $this->uid!=1 ){
    			return $this->error('请先添加商品分类');
    		}
    		#超级管理员
    		if( $this->uid!=1){
                $brandList = Db::name('brand')->where(['user_id'=>$this->uid])->select();
                if(!$brandList ){
                    return $this->error('请先添加商品品牌');
                }
    		}else{
                $brandList = Db::name('brand')->select();
            }
            $userList = Db::name('admin_user')->where('id>1')->select();
            $this->view->assign('userList',$userList);
            #渲染商品分类数
    		$this->view->assign('goodsClassList',getGoodsClassTree($this->uid));
            $this->view->assign('brandList',$brandList);
    		return $this->view->fetch('edit');
    	}
    }

    /**
     * 首页
     * @return mixed
     */
    public function index()
    {
        $model = $this->getModel();

        // 列表过滤器，生成查询Map对象
        $map = $this->search($model, [$this->fieldIsDelete => $this::$isdelete]);

        // 特殊过滤器，后缀是方法名的
        $actionFilter = 'filter' . $this->request->action();
        if (method_exists($this, $actionFilter)) {
            $this->$actionFilter($map);
        }
        // 自定义过滤器
        if (method_exists($this, 'filter')) {
            $this->filter($map);
        }

        $this->datalist($model, $map,'','orderby');
//        echo Db::name('goods')->getLastSql();die;
        $this->view->assign('goodsClassList',getGoodsClassTree());
        return $this->  view->fetch();
    }


    public function  edit()
    {
        if($this->request->isAjax()){
            $create_time = time();
            $update_time = time();
            $allData = $this->request->post();
            #前端json过来的数据需要转义
            $allData['skuZuheData'] = json_decode(str_replace("&quot;", "\"", $allData['skuZuheData'] ),true);
            $allData['propty_name_val'] = json_decode(str_replace("&quot;", "\"", $allData['propty_name_val'] ),true);
//            dump($allData);die;
            $validate = \think\Loader::validate('Goods');
            $data = $allData;
            if(!$validate->check($data)){
                return $validate->getError();
            }
            $goods=[];

            if( $data['show_area']==1 ){#限时抢购区域
                $goods['start_date'] = isset($data['start_date'])? strtotime($data['start_date']):'';
                $goods['end_date'] = isset($data['end_date'])? strtotime($data['end_date']):'';
                if(  isset($goods['start_date']) &&  isset($goods['end_date']) ){
                    if( $goods['start_date'] >=$goods['end_date'] ){
                        return ajax_return_adv_error('开售时间必须小于结束时间');
                    }
                }
            }
            if( $data['free_type']!=1 ){
                if( empty($data['postage']) ){
                    return ajax_return_adv_error('请填写邮费');
                }
                $goods['postage'] = $data['postage'];
            }
            #是否包邮
            $goods['free_type'] = $data['free_type'];
            #显示区域
            $goods['show_area'] = $data['show_area'];
            #s商品名称
            $goods['name'] = $data['name'];
            #价格
            if( isset($data['price']) &&  $data['price'] ){
                $goods['price_real'] = $data['price'];
            }
            #积分价
            if( isset($data['score']) &&  $data['score'] ){
                $goods['score'] = $data['score'];
            }
            #原价
            $goods['original_price'] = $data['original_price'];
            #结算类型
            $goods['settlement_type'] = $data['settlement_type'];
            $goods['goods_class_id'] = $data['goods_class_id'];
            $goods['goods_brand_id'] = $data['goods_brand_id'];
            $goods['detail'] = $data['detail'];
//            $goods['status'] = 0;
            $goods['main_image'] = $data['main_image'];
            $goods['subtitle'] = $data['subtitle'];
            $goods['create_time'] = $create_time;
            $goods['update_time'] = $update_time;
            $goods['orderby'] = $data['orderby'];
            $goods['goods_weight'] = $data['goods_weight'];
            $goods['is_real'] = $data['is_real'];
            $goods['return_score'] = $data['return_score'];
            #下单减库存类型
            $goods['store_type'] = $data['store_type'];
            $goods['after_sale'] = $data['after_sale'];
            #基础价格
            $goods['basic_price'] = $data['basic_price'];
            #商家编码
            $goods['shop_code'] = $data['shop_code'];
            #销量
            $goods['buy_num'] = $data['buy_num'];
            #商品条形码
            $goods['bar_code'] = $data['bar_code'];
            #商品生产地
            $goods['yieldly'] = $data['yieldly'];
            $goods['is_comment'] = $data['is_comment'];
            #所属商户
            $goods['user_id'] = $data['user_id'];
            $goods['is_return_goods'] = $data['is_return_goods'];

            if(  !empty($data['pic']) ){
                $goods['pic'] = json_encode($data['pic']);
            }

            #常规参数处理
            if( !empty($data['routine_key']) || !empty($data['routine_val'])   ){
                $goods['routine'] = json_encode(array_combine($data['routine_key'],$data['routine_val']));
            }
            $res = Db::name('goods')->where(['id'=>$data['id']])->update($goods);
            #属性和属性值插入
            if(!empty($allData['propty_name_val'])){
                $propty_name =[];
                $propty_name_val=[];
                foreach ($allData['propty_name_val'] as $v ){
                    foreach ($v as $k =>$v1){
                        $propty_name[] =trim( strstr( $v1,':',-1 ),':');
                        $propty_name_val[] = trim(strrchr( $v1,':' ),':');
                    }

                }

                #把数组去重
                Db::name('goods_proprety_name')->where(['goods_id'=>$data['id']])->delete();
                Db::name('goods_proprety_val')->where(['goods_id'=>$data['id']])->delete();

//                Db::name('goods_attribute')->where(['goods_id'=>$data['id']])->delete();
                foreach (array_unique($propty_name) as $k=>$v){
                    Db::name('goods_proprety_name')->insert(['goods_id'=>$data['id'],'name'=>$v]);
                    $ids[]=Db::name('goods_proprety_name')->getLastInsID();
                }

                $name_num=[];
                for($i=0;$i<count($ids);$i++){
                    for($j=0;$j<array_values(array_count_values($propty_name))[$i];$j++){
                        $name_num[]=$ids[$i];
                    }
                }
                for($i=0; $i<count($propty_name);$i++ ){
                    $val[]=['goods_id'=>$data['id'],'value'=>$propty_name_val[$i],'propre_name_id'=>$name_num[$i]];
                }
                Db::name('goods_proprety_val')->insertAll($val );

            }
            #sku插入
            if(!empty($allData['skuZuheData'])){

                #遍历 ，如果存在skuid 进行修改，不存在，新增
                foreach ($allData['skuZuheData']  as $skuK =>$skuV){
                    $update['goods_id']=$data['id'];
                    $update['attribute_name']=$skuV['SkuId'];
                    $update['price']=$skuV['price'];
                    $update['bar_code']=$skuV['bar'];
                    $update['store']=$skuV['num'];
                    $update['point_score']=$skuV['pointPrice'];
                    $update['goods_code']=$skuV['code'];
                    if($skuV['id']){
                        $tmpid = $skuV['id'];
                        Db::name('goods_attribute')->where(['id'=>$tmpid])->update($update);
                    }else{#新增
			
                        Db::name('goods_attribute')->insert($update);
                    }
                }
//                $skuData=[];
//                $where=[];
//                foreach ($allData['skuZuheData'] as $k=>$v){
//                    $where[$k][]=$v['id'];
//                    $skuData[$k]['price']=$v['price'];
//                    $skuData[$k]['store']=$v['num'];
//                    $skuData[$k]['goods_code']=$v['code'];
//                    $skuData[$k]['point_score']=$v['pointPrice'];
//                    #条形码
//                    $skuData[$k]['bar_code']=$v['bar'];
//                    $skuData[$k]['goods_id']= $data['id'];
//                    $skuData[$k]['attribute_name']=$v['SkuId'];
//                }
//                 $res = Db::name('goods_attribute')->insertAll($skuData);

                #将没有sku 的商品添加上价格和库存
            }else{
		Db::name('goods_attribute')->where(['goods_id'=>$data['id'] ])->delete();
                $goodsAttribute = Db::name('goods_attribute')->where(['goods_id'=>$data['id']])->find();
                if($goodsAttribute){
                    Db::name('goods_attribute')->where(['goods_id'=>$data['id']])->delete();
                }
                $insert=[];
                $insert['goods_id'] = $data['id'];
//                $insert['goods_code'] = $data['bar_code'];
                $insert['price'] = $data['price'];
                $insert['point_score'] = $data['point_price'];
                $insert['bar_code'] = $data['bar_code'];
                $insert['store'] = $data['store'];
                $res = Db::name('goods_attribute')->insert($insert);
            }
            return ajax_return_adv('操作成功','','',true,'parent','','200');

        }else{
            $id = $this->request->param('id');
            $goodsData = Db::name('goods')->alias('g')
                ->where(['g.id'=>$id])
                ->find();
            $goodsData['pic'] = json_decode($goodsData['pic'],true);
            if( !empty($goodsData['routine']) ){
                $routine = json_decode($goodsData['routine'],true);
                $routine_name = array_keys($routine);
                $routine_val = array_values($routine);
                $this->view->assign('routine_name',$routine_name?$routine_name:'');
                $this->view->assign('routine_val',$routine_val?$routine_val:'');
            }
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

            if( !getGoodsClassTree($this->uid) && $this->uid!=1 ){
                return $this->error('请先添加商品分类');
            }
            #超级管理员
            if( $this->uid!=1){
                $brandList = Db::name('brand')->where(['user_id'=>$this->uid])->select();
                if(!$brandList ){
                    return $this->error('请先添加商品品牌');
                }
            }else{
                $brandList = Db::name('brand')->select();
            }
            $userList = Db::name('admin_user')->where('id>1')->select();
            #商戶
            $this->view->assign('userList',$userList);
            #渲染商品分类数
            $this->view->assign('goodsClassList',getGoodsClassTree($this->uid));
            #品牌
            $this->view->assign('brandList',$brandList);
            #商品
            $arr =[];
            foreach($proprety_name as $k=>$v){
                foreach ($proprety_name_val as $key=>$val){
                    if($v['id']==$val['pro_id']){
                        $arr[$v['name']][]=$val['value'];
                    }
                }
            }
            $this->view->assign('vo',$goodsData);
            #常规属性
            $this->view->assign('proprety_name_val',$proprety_name_val);
            $this->view->assign('skuData',$skuData);
            $this->view->assign('proprety_name',$proprety_name);
            $this->view->assign('proprety_name1',$arr);
            return $this->view->fetch('edit');
        }



    }
    #修改该状态
    public function  editStatus()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            if($data['flag']=="up"){
                Db::name('goods')->where(['id'=>$data['id']])->update(['status'=>1]);
            }else{
                Db::name('goods')->where(['id'=>$data['id']])->update(['status'=>0]);
            }
            return json(['msg'=>'操作成功']);
        }

    }

    public function getskudata()
    {
        if($this->request->isAjax()){
            $id = $this->request->post('id');
            $skuData =  Db::name('goods_attribute')
                ->where(['goods_id'=>$id])
                ->select();
            return json($skuData);
        }

    }

}
