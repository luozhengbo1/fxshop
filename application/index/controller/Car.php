<?php
	namespace app\index\controller;
	use think\Controller;
	use think\Db;
	use think\Cache;
	use think\Session;

	Class Car extends Mustlogin
	{
        #取出没有结算，并且没有过期的商品
        public function index()
        {
            if($this->request->isAjax()){
                $page = $this->request->param('page')?$this->request->param('page'):'1';
                $size =  $this->request->param('size')?$this->request->param('size'):'10';
                $carList =    Db::name('car')
                    ->alias('c')
                    ->field('fy_goods.*,fy_goods_attribute.point_score,c.goods_num,c.id as carId,c.val,c.sku_id,c.goods_id,c.create_time,c.id,fy_goods_attribute.store,fy_goods_attribute.price as price1')
                    ->join('fy_goods','fy_goods.id=c.goods_id')
                    ->join('fy_goods_attribute','fy_goods_attribute.id=c.sku_id','left')
                    ->where([
                        'c.openid'=>$this->userInfo['openid'],
                        'c.status'=>1,
                    ] )
                    ->page($page,$size)
                    ->order('c.create_time desc')
                    ->select();
                    return ajax_return($carList,'ok','200');
            }else{
                $this->view->assign('titleName','购物车');
                $user = Db::name('customer')->where(['openid'=>$this->userInfo['openid']])->find();
                $this->view->assign('user',  $user );
                return $this->view->fetch();
            }
        }
        #未完成待续
        public function  addCar()
        {
            if($this->request->isAjax()){
                $data = $this->request->post();
                if(!$data['goodsId']){
                    return ajax_return_error('缺少商品id');
                }
                $check =  Db::name('goods_attribute')->where(['id'=>$data['skuId']])->find();
//                dump($check);
//                dump($data['skuId']);
                if($check['store']<$data['num']){
                    return ajax_return_error('库存不足');
                }
                $goods = Db::name('goods')->where(['id'=>$data['goodsId']])->find();
                if($goods['show_area']==2 || $goods['show_area']==5 ){
                    $user = Db::name('customer')->where(['openid'=>$this->userInfo['openid']])->find();
                    if($user['score']<$check['point_score']){
                        return ajax_return_error('你的积分不足，暂时不能加入购物车');
                    }
                }
               $carData = Db::name('car')
                    ->where([
                        'goods_id'=>$data['goodsId'],
                        'openid'=>$this->userInfo['openid'],
                        'sku_id'=>$data['skuId']
                        ])
                    ->find();
                $time =time();
    //            dump($carData);die;
                if($carData){
                    $res = Db::name('car')
                        ->where([
                            'goods_id'=>$data['goodsId'],
                            'openid'=>$this->userInfo['openid'],
                            'sku_id'=>$data['skuId']
                        ])->setInc('goods_num', ($data['num']!=0)?$data['num']:'1');
                }else{
                    $res = Db::name('car')
                        ->insert([
                            'goods_num'=>$data['num']?$data['num']:'1',
                            'update_time'=>$time,
                            'create_time'=>$time,
                            'goods_id'=>$data['goodsId'],
                            'openid'=>$this->userInfo['openid'],
                            'sku_id'=>$data['skuId'],
                            'val'=>$data['val'],
                        ]);
                }
                if($res){
                    return ajax_return('','添加成功','200');
                }else{
                    return ajax_return('','添加失败','500');
                }
            }

        }

        #删除
        public function  delCar()
        {
            if($this->request->isAjax()){
                $data = $this->request->post();
                if(!$data['carId']){
                    return ajax_return_error('缺少参数id');
                }
            }
            $res = Db::name('car')->where(['id'=>$data['carId']])->delete();
            if($res){
                return ajax_return('','删除成功','200');
            }
            else{
                return ajax_return('','删除失败','400');
            }
        }

	}
