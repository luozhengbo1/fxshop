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
    	if($this->request->isPost()){
    		$create_time = time();
    		$update_time = time();
    		$data = $this->request->post();
    		$validate = \think\Loader::validate('Goods');
			if(!$validate->check($data)){
			    return $validate->getError();
			}
    		$goods=[];
    		
    		if( $data['settlement_type']==1 ){#现价
				$goods['price'] = $data['price'];
    		}else if( $data['settlement_type']==2 ){#积分价
				$goods['socre'] = $data['socre'];
    		}else{#积分+现价
    			$goods['score_price'] = $data['score_price'];
    		}
    		if( $data['show_area']==1 ){#限时抢购区域
    			$goods['start_date'] =  strtotime($data['start_date']);
    			$goods['end_date'] = strtotime($data['end_date']);
    		}
    		if( $data['free_type']!=1 ){
    			$goods['postage'] = $data['postage'];
    		}
    		$goods['free_type'] = $data['free_type'];
    		$goods['show_area'] = $data['show_area'];
    		$goods['name'] = $data['name'];
    		$goods['original_price'] = $data['original_price'];
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
    		$goods['store_type'] = $data['store_type'];
    		$goods['after_sale'] = $data['after_sale'];
    		if( !empty($data['pic']) ){
    			$goods['pic'] = json_encode($data['pic']);
    		}
    		#常规参数处理
    		if( !empty($data['routine_key']) || !empty($data['routine_val'])   ){
    			$goods['routine'] = json_encode(array_combine($data['routine_key'],$data['routine_val']));
    		}
    		// $res = Db::name('goods')->insert($goods);
    		// $goods_id = Db::name('goods')->getLastInsID();
            dump($data);
    	/*	dump($data['goods_code']);
    		dump($data['guige_name']);
    		dump($data['guige_val']);*/
    	    $data['guige_name'] = array(0=>"编码",1=>'库存',2=>"颜色", 3=>'尺寸');
    	    $insert = array();
    	    foreach ($data['goods_code'] as $key => $val) {
    	        $insert[$key]['goods_code'] = $val;
                $insert[$key]['store'] = $data['store'][$key];
                $insert[$key]['name'] =  $data['guige_name'][$key];
            }
            dump($insert);
    		$goods_propty = [];
    		$j = count($data['guige_name']);
            for($i=0;$i<count($data['guige_name']); $i=$i+$j){
                $arr[] = array_slice($data['guige_val'],$i,$j,false);
            }
            for($i=0;$i<count($data['guige_name']);$i++){
                $guige_name[$i]=$data['guige_name'];
                $guige_code[$i]=$data['goods_code'];
            }
//            for ($i=0;$i<count($data['guige_val']); $i++ ){
//                foreach ($arr as $k=>$value){
//                    $goods_propty[$i][]['goods_code']=$data['goods_code'][$k];
//                }
//
//
//            }
//            dump($guige_name);
            dump($goods_propty);
            dump($arr);

    		#获取上一条插入的id
//     		if($res && !empty($data['goods_code']) ){
//     			$goods_id = 1;
//     			$goods_code =[];
//     			#商品编码表
//     			for($i=0;$i<count($data['goods_code']);$i++){
//     				$goods_code[$i]['goods_code'] =$data['goods_code'][$i];
//     				$goods_code[$i]['goods_id'] =$goods_id;
//				 }
//     			Db::name('goods_code')->insertAll($goods_code);
//     		}
    		if($res && !empty($data['goods_code']) ){

    		}
    	}else{
    		$brandList = Db::name('brand')->where(['user_id'=>$this->uid])->select();
    		if( !getGoodsClassTree($this->uid) && $this->uid!=1 ){
    			return $this->error('请先添加商品分类');
    		}
    		if(!$brandList && $this->uid!=1){
				return $this->error('请先添加商品品牌');
    		}
    		#渲染商品分类数
    		$this->view->assign('goodsClassList',getGoodsClassTree($this->uid));
    		$this->view->assign('brandList',$brandList);
    		// dump($brandList);die;
    		return $this->view->fetch(isset($this->template) ? $this->template : 'edit');
    	}
    } 
}
