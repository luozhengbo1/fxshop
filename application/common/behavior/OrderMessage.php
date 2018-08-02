<?php
/**
 * 订单通知公共类
 */

namespace app\common\behavior;

use think\Db;
use think\Session;

class OrderMessage
{
    function payMessage($price, $goods)
    {
        $user_session = Session::get('wx_user');
        $user_info = getUserInfo($user_session['openid']);
        //构建支付成功消息
        $goods_info = '';
        foreach ($goods as $goods_item) {
            $buy_list = \Qiniu\json_decode($goods_item['buy_list']);
            foreach ($buy_list as $buy_item) {
                $good_name = $buy_item->goods_name;
                $sku_val = $buy_item->sku_val;
                $num = $buy_item->num;
                $goods_info = $goods_info . '' . $good_name . ' ' . $sku_val . '×' . $num . '  ';
            }
        }
        //向message_user表插入支付成功消息
        Db::table('fy_message_user')->insert([
            'uid' => $user_info['id'],
            'openid' => $user_session['openid'],
            'message_id' =>null,
            'text' => '<p>我们已收到您的货款，开始为您打包商品，请耐心等待。</p><br/>' .
                '<p>支付金额：' . $price . '</p><<br/>' .
                '<p>商品信息：' . $goods_info . '</p>'
        ]);
    }

}