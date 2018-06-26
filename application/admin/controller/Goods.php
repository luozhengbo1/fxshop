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
    }

    public function add()
    {
    	if($this->request->isAjax()){
    		$create_time = time();
    		$update_time = time();
    		$allData = $this->request->post();
    		$validate = \think\Loader::validate('Goods');
            $data = $allData['formData'];
			if(!$validate->check($allData['formData'])){
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
    		}
            if(  isset($goods['start_date']) &&  isset($goods['end_date']) ){
                if( $goods['start_date'] >=$goods['end_date'] ){
                    return ajax_return_adv_error('开售时间必须小于结束时间');
                }
            }
    		if( $data['free_type']!=1 ){
    		    if( !empty($data['postage']) ){
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
    		#原价
    		$goods['original_price'] = $data['original_price'];
    		#结算类型
    		$goods['settlement_type'] = $data['settlement_type'];
    		$goods['goods_class_id'] = $data['goods_class_id'];
    		$goods['goods_brand_id'] = $data['goods_brand_id'];
    		$goods['detail'] = $data['detail'];
    		$goods['status'] = $data['status'];
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
            #商家编码
            $goods['shop_code'] = $data['shop_code'];
            #销量
            $goods['buy_num'] = $data['buy_num'];
            #商品条形码
            $goods['bar_code'] = $data['bar_code'];
            #所属商户
            $goods['user_id'] = $data['user_id'];
    		if(  !empty($data['pic']) ){
                $goods['pic'] = json_encode($data['pic']);
    		}
    		#常规参数处理
    		if( !empty($data['routine_key']) || !empty($data['routine_val'])   ){
    			$goods['routine'] = json_encode(array_combine($data['routine_key'],$data['routine_val']));
    		}
    		 $res = Db::name('goods')->insert($goods);
    		 $goods_id = Db::name('goods')->getLastInsID();
    		 return ajax_return_adv('添加成功');

            #属性和属性值插入
//            if(!empty($allData['propty_name_val'])){
//    		    $propty_name =[];
//                $propty_name_val=[];
//                 foreach ($allData['propty_name_val'] as $v ){
//                    foreach ($v as $k =>$v1){
//                       $propty_name[] =trim( strstr( $v1,':',-1 ),':');
//                       $propty_name_val[] = trim(strrchr( $v1,':' ),':');
//                    }
//                 }
//                 #把数组去重
//                 foreach (array_unique($propty_name) as $k=>$v){
//                     Db::name('goods_proprety_name')->insert(['goods_id'=>$goods_id,'name'=>$v]);
//                     $ids[]=Db::name('goods_proprety_name')->getLastInsID();
//
//
//                 }
//                 for($i=0; $i<count($propty_name_val)/count($ids);$i++ ){
//                     $val[]=['goods_id'=>$goods_id,'value'=>'','propre_name_id'=>$ids[$i]];
//                     $val[]=['goods_id'=>$goods_id,'value'=>'','propre_name_id'=>$ids[$i]];
//                 }
//                 foreach ($propty_name_val as $k=>$v){
//                     $val[$k]['value'] = $v;
//                 }
//                 Db::name('goods_proprety_val')->insertAll($val );
//    		}
    		#sku插入
            if(!empty($allData['skuZuheData'])){
    		    $skuData=[];
    		    foreach ($allData as $k=>$v){
                    $skuData[$k]['pricce']=$v['price'];
                    $skuData[$k]['store']=$v['num'];
                    $skuData[$k]['goods_code']=$v['code'];
                    #条形码
                    $skuData[$k]['bar_code']=$v['bar'];
                    $skuData[$k]['goods_id']=$goods_id;
                    $skuData[$k]['attribute_name']=$goods_id;
                }
                    dump($allData['skuZuheData']);
            }
            die;

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

    		return $this->view->fetch(isset($this->template) ? $this->template : 'edit');
    	}
    }

}
