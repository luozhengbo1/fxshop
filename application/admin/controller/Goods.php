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
//			    return $validate->getError();
			}
    		$goods=[];
    		
//    		if( $data['settlement_type']==1 ){#现价
//				$goods['price'] = $data['price'];
//    		}else if( $data['settlement_type']==2 ){#积分价
//				$goods['socre'] = $data['socre'];
//    		}else{#积分+现价
//    			$goods['score_price'] = $data['score_price'];
//    		}
//    		if( $data['show_area']==1 ){#限时抢购区域
//    			$goods['start_date'] =  strtotime($data['start_date']);
//    			$goods['end_date'] = strtotime($data['end_date']);
//    		}
//    		if( $data['free_type']!=1 ){
//    			$goods['postage'] = $data['postage'];
//    		}
//    		$goods['free_type'] = $data['free_type'];
//    		$goods['show_area'] = $data['show_area'];
//    		$goods['name'] = $data['name'];
//    		$goods['original_price'] = $data['original_price'];
//    		$goods['settlement_type'] = $data['settlement_type'];
//    		$goods['goods_class_id'] = $data['goods_class_id'];
//    		$goods['goods_brand_id'] = $data['goods_brand_id'];
//    		$goods['detail'] = $data['detail'];
//    		$goods['status'] = $data['status'];
//    		$goods['main_image'] = $data['main_image'];
//    		$goods['subtitle'] = $data['subtitle'];
//    		$goods['create_time'] = $create_time;
//    		$goods['update_time'] = $update_time;
//    		$goods['orderby'] = $data['orderby'];
//    		$goods['goods_weight'] = $data['goods_weight'];
//    		$goods['is_real'] = $data['is_real'];
//    		$goods['return_score'] = $data['return_score'];
//    		$goods['store_type'] = $data['store_type'];
//    		$goods['after_sale'] = $data['after_sale'];
//    		if( !empty($data['pic']) ){
//    			$goods['pic'] = json_encode($data['pic']);
//    		}
    		#常规参数处理
    		if( !empty($data['routine_key']) || !empty($data['routine_val'])   ){
    			$goods['routine'] = json_encode(array_combine($data['routine_key'],$data['routine_val']));
    		}
    		// $res = Db::name('goods')->insert($goods);
    		// $goods_id = Db::name('goods')->getLastInsID();
            dump($data);die;
    	/*	dump($data['goods_code']);
    		dump($data['guige_name']);
    		dump($data['guige_val']);*/
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
//            dump($goods_propty);
//            dump($arr);

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
    #属性名称接口
    public function CreateProductSpecByCustomCidHasPid()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            if(!$data['cid'] && !$data['cid'] ){
                return ajax_return_adv_error('商品id和规格名必须','404');
            }
            $insert=[];
            $insert['goods_id'] = $data['cid'];
            $insert['name'] = $data['name'];
            $res = Db::name('goods_proprety_name')->insert($insert);
            $data['flag']=1;
            if($data['flag'] ==1 ){ #表示是新增
                $res = Db::name('goods_proprety_name')->insert($insert);
                $insertId= Db::name('goods_proprety_name')->getLastInsID();
            }else{
                $res = Db::name('goods_proprety_name')->where(['id'=>$data['pid']])->upadte($insert);
                $insertId= $data['pid'];
            }
            if($res){
                return json([
                    'status'=>'true',
                    'msg'=>'添加成功！',
                    'data'=>[
                        'cid'=>$data['cid'],
                        'pid'=> $insertId,
                        'name'=>$data['name'],
                        'productProperty'=>[
                            'pid'=> $insertId,
                            'name'=>$data['name']
                        ]
                    ]
                ]);
            }else{
                return json([
                    'status'=>'false',
                    'msg'=>'添加失败！',
                    'data'=>[
                        'cid'=>$data['cid'],
                        'pid'=> $insertId,
                        'name'=>$data['name'],
                        'productProperty'=>[
                            'pid'=> $insertId,
                            'name'=>$data['name']
                        ]
                    ]
                ]);
            }

        }
    }
    #添加属性值的接口
    public function CreateProductSpecValueByCustomCid()
    {
        if($this->request->isAjax()){
            $data = $this->request->post();
            $insert=[];
            $insert['value'] = $data['propValue'];
            $insert['propre_name_id'] = $data['pid'];
            $insert['goods_id'] = $data['cid'];
            $res = Db::name('goods_proprety_val')->insert($insert);
            $insertId = Db::name('goods_proprety_val')->getLastInsID();
            if($res){
                $data['vid'] = $insertId;
                return json([
                    'status'=>'true',
                    'msg'=>'添加成功',
                    'data'=>$data,
                ]);
            }else{
                return json([
                    'status'=>'false',
                    'msg'=>'添加失败',
                    'data'=>$data,
                ]);
            }
        }
    }
    #删除属性值接口
    public function delProductSpecValueByCustomCid()
    {
        if($this->request->post()){
            $data = $this->request->post();
            if(!$data['vid']){
                return ajax_return_error('缺少必要参数vid','404');
            }
            $res = Db::name('goods_proprety_val')->where(['id'=>$data['vid']])->delete();
            if($res){
                return ajax_return_adv('删除成功','','','','','','200');
            }else{
                return ajax_return_error('删除失败','500','','');
            }
        }

    }
    #删除整体属性规格和值
    public function delProductSpecByCustomCidHasPid()
    {
        if($this->request->post()){
            $data = $this->request->post();
            if(!$data['pid']){
                return ajax_return_error('缺少必要参数pid','404');
            }
            $res = Db::name('goods_proprety_name')->where(['id'=>$data['pid']])->delete();
            $res1 = Db::name('goods_proprety_val')->where(['propre_name_id'=>$data['pid']])->delete();
            if($res ||  $res1){
                return ajax_return_adv('删除成功','','','','','','200');
            }else{
                return ajax_return_error('删除失败','500','','');
            }
        }
    }

    public function  return_json()
    {
        $data = "[
    {
        \"ProductSKU_Propertys\": [
            {
                \"SkuId\": \"190779_3000120424_3000120323\",
                \"PId\": 300035702,
                \"VId\": 3000120424,
                \"PName\": \"颜色\",
                \"VName\": \"red\",
                \"Id\": 2443053
            },
            {
                \"SkuId\": \"190779_3000120424_3000120323\",
                \"PId\": 300035700,
                \"VId\": 3000120323,
                \"PName\": \"尺寸\",
                \"VName\": \"M\",
                \"Id\": 2443054
            }
        ],
        \"SkuId\": \"190779_3000120424_3000120323\",
        \"ProductId\": 190779,
        \"CostPrice\": 0.00,
        \"SupplyPrice\": 0.00,
        \"SalePrice\": 11.00,
        \"Stock\": 1,
        \"SaleStock\": 0,
        \"Code\": \"\",
        \"Bar\": \"\",
        \"SkuImgUrl\": \"https://xkdsaas.oss-cn-shanghai.aliyuncs.com/MerChant/550/0/1529395820197.jpg\",
        \"Weight\": 0.00,
        \"IsUseDiscount\": false,
        \"FirstAgentBenefit\": 0.00,
        \"SecondAgentBenefit\": 0.00,
        \"ThirdAgentBenefit\": 0.00,
        \"InitialNumberNoPurchased\": null,
        \"AgentId\": 0,
        \"IsPauseSale\": false,
        \"FreightTemplateId\": 0
    },
    {
        \"ProductSKU_Propertys\": [
            {
                \"SkuId\": \"190779_3000120424_3000120325\",
                \"PId\": 300035702,
                \"VId\": 3000120424,
                \"PName\": \"颜色\",
                \"VName\": \"red\",
                \"Id\": 2443051
            },
            {
                \"SkuId\": \"190779_3000120424_3000120325\",
                \"PId\": 300035700,
                \"VId\": 3000120325,
                \"PName\": \"尺寸\",
                \"VName\": \"S\",
                \"Id\": 2443052
            }
        ],
        \"SkuId\": \"190779_3000120424_3000120325\",
        \"ProductId\": 190779,
        \"CostPrice\": 0.00,
        \"SupplyPrice\": 0.00,
        \"SalePrice\": 1.00,
        \"Stock\": 1,
        \"SaleStock\": 0,
        \"Code\": \"\",
        \"Bar\": \"\",
        \"SkuImgUrl\": \"https://xkdsaas.oss-cn-shanghai.aliyuncs.com/MerChant/550/0/1529395820197.jpg\",
        \"Weight\": 0.00,
        \"IsUseDiscount\": false,
        \"FirstAgentBenefit\": 0.00,
        \"SecondAgentBenefit\": 0.00,
        \"ThirdAgentBenefit\": 0.00,
        \"InitialNumberNoPurchased\": null,
        \"AgentId\": 0,
        \"IsPauseSale\": false,
        \"FreightTemplateId\": 0
    },
    {
        \"ProductSKU_Propertys\": [
            {
                \"SkuId\": \"190779_3000120424_3000120427\",
                \"PId\": 300035702,
                \"VId\": 3000120424,
                \"PName\": \"颜色\",
                \"VName\": \"red\",
                \"Id\": 2443055
            },
            {
                \"SkuId\": \"190779_3000120424_3000120427\",
                \"PId\": 300035700,
                \"VId\": 3000120427,
                \"PName\": \"尺寸\",
                \"VName\": \"B\",
                \"Id\": 2443056
            }
        ],
        \"SkuId\": \"190779_3000120424_3000120427\",
        \"ProductId\": 190779,
        \"CostPrice\": 0.00,
        \"SupplyPrice\": 0.00,
        \"SalePrice\": 11.00,
        \"Stock\": 1,
        \"SaleStock\": 0,
        \"Code\": \"\",
        \"Bar\": \"\",
        \"SkuImgUrl\": \"https://xkdsaas.oss-cn-shanghai.aliyuncs.com/MerChant/550/0/1529395820197.jpg\",
        \"Weight\": 0.00,
        \"IsUseDiscount\": false,
        \"FirstAgentBenefit\": 0.00,
        \"SecondAgentBenefit\": 0.00,
        \"ThirdAgentBenefit\": 0.00,
        \"InitialNumberNoPurchased\": null,
        \"AgentId\": 0,
        \"IsPauseSale\": false,
        \"FreightTemplateId\": 0
    },
    {
        \"ProductSKU_Propertys\": [
            {
                \"SkuId\": \"190779_3000120425_3000120323\",
                \"PId\": 300035702,
                \"VId\": 3000120425,
                \"PName\": \"颜色\",
                \"VName\": \"blue\",
                \"Id\": 2443059
            },
            {
                \"SkuId\": \"190779_3000120425_3000120323\",
                \"PId\": 300035700,
                \"VId\": 3000120323,
                \"PName\": \"尺寸\",
                \"VName\": \"M\",
                \"Id\": 2443060
            }
        ],
        \"SkuId\": \"190779_3000120425_3000120323\",
        \"ProductId\": 190779,
        \"CostPrice\": 0.00,
        \"SupplyPrice\": 0.00,
        \"SalePrice\": 1.00,
        \"Stock\": 11,
        \"SaleStock\": 0,
        \"Code\": \"\",
        \"Bar\": \"\",
        \"SkuImgUrl\": \"https://xkdsaas.oss-cn-shanghai.aliyuncs.com/MerChant/550/0/1529386780035.jpg\",
        \"Weight\": 0.00,
        \"IsUseDiscount\": false,
        \"FirstAgentBenefit\": 0.00,
        \"SecondAgentBenefit\": 0.00,
        \"ThirdAgentBenefit\": 0.00,
        \"InitialNumberNoPurchased\": null,
        \"AgentId\": 0,
        \"IsPauseSale\": false,
        \"FreightTemplateId\": 0
    },
    {
        \"ProductSKU_Propertys\": [
            {
                \"SkuId\": \"190779_3000120425_3000120325\",
                \"PId\": 300035702,
                \"VId\": 3000120425,
                \"PName\": \"颜色\",
                \"VName\": \"blue\",
                \"Id\": 2443057
            },
            {
                \"SkuId\": \"190779_3000120425_3000120325\",
                \"PId\": 300035700,
                \"VId\": 3000120325,
                \"PName\": \"尺寸\",
                \"VName\": \"S\",
                \"Id\": 2443058
            }
        ],
        \"SkuId\": \"190779_3000120425_3000120325\",
        \"ProductId\": 190779,
        \"CostPrice\": 0.00,
        \"SupplyPrice\": 0.00,
        \"SalePrice\": 11.00,
        \"Stock\": 11,
        \"SaleStock\": 0,
        \"Code\": \"\",
        \"Bar\": \"\",
        \"SkuImgUrl\": \"https://xkdsaas.oss-cn-shanghai.aliyuncs.com/MerChant/550/0/1529386780035.jpg\",
        \"Weight\": 0.00,
        \"IsUseDiscount\": false,
        \"FirstAgentBenefit\": 0.00,
        \"SecondAgentBenefit\": 0.00,
        \"ThirdAgentBenefit\": 0.00,
        \"InitialNumberNoPurchased\": null,
        \"AgentId\": 0,
        \"IsPauseSale\": false,
        \"FreightTemplateId\": 0
    },
    {
        \"ProductSKU_Propertys\": [
            {
                \"SkuId\": \"190779_3000120425_3000120427\",
                \"PId\": 300035702,
                \"VId\": 3000120425,
                \"PName\": \"颜色\",
                \"VName\": \"blue\",
                \"Id\": 2443061
            },
            {
                \"SkuId\": \"190779_3000120425_3000120427\",
                \"PId\": 300035700,
                \"VId\": 3000120427,
                \"PName\": \"尺寸\",
                \"VName\": \"B\",
                \"Id\": 2443062
            }
        ],
        \"SkuId\": \"190779_3000120425_3000120427\",
        \"ProductId\": 190779,
        \"CostPrice\": 0.00,
        \"SupplyPrice\": 0.00,
        \"SalePrice\": 11.00,
        \"Stock\": 1,
        \"SaleStock\": 0,
        \"Code\": \"\",
        \"Bar\": \"\",
        \"SkuImgUrl\": \"https://xkdsaas.oss-cn-shanghai.aliyuncs.com/MerChant/550/0/1529386780035.jpg\",
        \"Weight\": 0.00,
        \"IsUseDiscount\": false,
        \"FirstAgentBenefit\": 0.00,
        \"SecondAgentBenefit\": 0.00,
        \"ThirdAgentBenefit\": 0.00,
        \"InitialNumberNoPurchased\": null,
        \"AgentId\": 0,
        \"IsPauseSale\": false,
        \"FreightTemplateId\": 0
    },
    {
        \"ProductSKU_Propertys\": [
            {
                \"SkuId\": \"190779_3000120426_3000120323\",
                \"PId\": 300035702,
                \"VId\": 3000120426,
                \"PName\": \"颜色\",
                \"VName\": \"black\",
                \"Id\": 2443065
            },
            {
                \"SkuId\": \"190779_3000120426_3000120323\",
                \"PId\": 300035700,
                \"VId\": 3000120323,
                \"PName\": \"尺寸\",
                \"VName\": \"M\",
                \"Id\": 2443066
            }
        ],
        \"SkuId\": \"190779_3000120426_3000120323\",
        \"ProductId\": 190779,
        \"CostPrice\": 0.00,
        \"SupplyPrice\": 0.00,
        \"SalePrice\": 1.00,
        \"Stock\": 1,
        \"SaleStock\": 0,
        \"Code\": \"\",
        \"Bar\": \"\",
        \"SkuImgUrl\": \"\",
        \"Weight\": 0.00,
        \"IsUseDiscount\": false,
        \"FirstAgentBenefit\": 0.00,
        \"SecondAgentBenefit\": 0.00,
        \"ThirdAgentBenefit\": 0.00,
        \"InitialNumberNoPurchased\": null,
        \"AgentId\": 0,
        \"IsPauseSale\": false,
        \"FreightTemplateId\": 0
    },
    {
        \"ProductSKU_Propertys\": [
            {
                \"SkuId\": \"190779_3000120426_3000120325\",
                \"PId\": 300035702,
                \"VId\": 3000120426,
                \"PName\": \"颜色\",
                \"VName\": \"black\",
                \"Id\": 2443063
            },
            {
                \"SkuId\": \"190779_3000120426_3000120325\",
                \"PId\": 300035700,
                \"VId\": 3000120325,
                \"PName\": \"尺寸\",
                \"VName\": \"S\",
                \"Id\": 2443064
            }
        ],
        \"SkuId\": \"190779_3000120426_3000120325\",
        \"ProductId\": 190779,
        \"CostPrice\": 0.00,
        \"SupplyPrice\": 0.00,
        \"SalePrice\": 11.00,
        \"Stock\": 1,
        \"SaleStock\": 0,
        \"Code\": \"\",
        \"Bar\": \"\",
        \"SkuImgUrl\": \"\",
        \"Weight\": 0.00,
        \"IsUseDiscount\": false,
        \"FirstAgentBenefit\": 0.00,
        \"SecondAgentBenefit\": 0.00,
        \"ThirdAgentBenefit\": 0.00,
        \"InitialNumberNoPurchased\": null,
        \"AgentId\": 0,
        \"IsPauseSale\": false,
        \"FreightTemplateId\": 0
    },
    {
        \"ProductSKU_Propertys\": [
            {
                \"SkuId\": \"190779_3000120426_3000120427\",
                \"PId\": 300035700,
                \"VId\": 3000120427,
                \"PName\": \"尺寸\",
                \"VName\": \"B\",
                \"Id\": 2443068
            },
            {
                \"SkuId\": \"190779_3000120426_3000120427\",
                \"PId\": 300035702,
                \"VId\": 3000120426,
                \"PName\": \"颜色\",
                \"VName\": \"black\",
                \"Id\": 2443067
            }
        ],
        \"SkuId\": \"190779_3000120426_3000120427\",
        \"ProductId\": 190779,
        \"CostPrice\": 0.00,
        \"SupplyPrice\": 0.00,
        \"SalePrice\": 1.00,
        \"Stock\": 1,
        \"SaleStock\": 0,
        \"Code\": \"\",
        \"Bar\": \"\",
        \"SkuImgUrl\": \"\",
        \"Weight\": 0.00,
        \"IsUseDiscount\": false,
        \"FirstAgentBenefit\": 0.00,
        \"SecondAgentBenefit\": 0.00,
        \"ThirdAgentBenefit\": 0.00,
        \"InitialNumberNoPurchased\": null,
        \"AgentId\": 0,
        \"IsPauseSale\": false,
        \"FreightTemplateId\": 0
    }
]";
        $arr = json_decode($data,true);
        return json($arr);
    }
}
