<?php
/**
 * 订单通知公共类
 */

namespace app\common\behavior;

use think\Db;
use think\Session;

class OrderMessage
{
    /**
     * 订单各流程通知消息
     * @param $status  pay_success：支付成功 | deliver_success：发货 | refund_success：退款
     * @param $user_info  uid：用户ID | openid：用户openid
     * @param $goods_info  total_price：支付金额  | goods_data：商品名称、规格、数量
     * @param $order_info  order_id：订单编号 | send_time：发货时间 | logistics_name：物流公司 | logistics_number：快递单号 | refund_price：退款金额 | refund_num：退款单号
     */
    function payMessage($status, $user_info, $goods_info, $order_info)
    {
        if ($status == 'pay_success') {
            //向message_user表插入支付成功消息
            Db::table('fy_message_user')->insert([
                'uid' => $user_info['uid'],
                'openid' => $user_info['openid'],
                'message_id' => null,
                'text' => '<p>我们已收到您的货款，开始为您打包商品，请耐心等待。</p><br/>' .
                    '<p>支付金额：' . $goods_info['total_price'] . '</p><<br/>' .
                    '<p>商品信息：' . $goods_info['goods_data'] . '</p>'
            ]);
        } elseif ($status == 'deliver_success') {
            //向message_user表插入发货消息
            Db::table('fy_message_user')->insert([
                'uid' => $user_info['uid'],
                'openid' => $user_info['openid'],
                'message_id' => null,
                'text' => '<p>您购买的 ' . $goods_info['goods_data'] . ' 已经发货啦，正快马加鞭向您飞奔而去。</p><br/>' .
                    '<p>订单编号：' . $order_info['order_id'] . '</p><br/>' .
                    '<p>发货时间：' . $order_info['send_time'] . '</p><br/>' .
                    '<p>物流公司：' . $order_info['logistics_name'] . '</p><br/>' .
                    '<p>快递单号：' . $order_info['logistics_number'] . '</p><br/>' .
//                    '<p>收件信息：' . $order_info['address_detail'] . '</p><br/>'.
                    '<p>请保持手机畅通！</p>'
            ]);
        } elseif ($status == 'refund_success') {
            //向message_user表插入退款消息
            Db::table('fy_message_user')->insert([
                'uid' => $user_info['uid'],
                'openid' => $user_info['openid'],
                'message_id' => null,
                'text' => '<p>您的订单已经完成退款，原路退回到您的支付账户（零钱20天内到账；储蓄卡1-3个工作日；信用卡2-5个工作日）请留意查收。</p><br/>' .
                    '<p>退款金额：' . $order_info['refund_price'] . '</p><br/>' .
                    '<p>商品名称：' . $goods_info['goods_data'] . '</p><br/>' .
                    '<p>退款单号：' . $order_info['refund_num'] . '</p><br/>' .
                    '<p>有什么疑问请联系【0851-86701701】咨询</p>'
            ]);
        }

    }

}