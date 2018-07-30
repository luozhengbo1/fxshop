//支付
function pay(orderid) {
    pub_save({
        url:url.againPay,
        return_url:"#",
        data:{id:orderid},
    })
}
//退款
function refund(order_id,goods_id,sku_id) {
    layer.open({
        content: '你确定要退款吗？'
        ,btn: ['确定', '不要']
        ,yes: function(index){
            pub_save({
                url:url.refund,
                data:{'order_id':order_id,'goods_id':goods_id,'sku_id':sku_id},
                complete:loadOrderData,
            })
        }
    });
}
//取消订单
function cancelOrder(order_id,goods_id,sku_id) {
        layer.open({
            content: '你确定要取消订单吗？'
            ,btn: ['确定', '不要']
            ,yes: function(index){
                pub_save({
                    url:url.cancelOrder,
                    data:{'order_id':order_id,'goods_id':goods_id,'sku_id':sku_id},
                    complete:loadOrderData,
                })
            }
        });
}
//确认收货
function sureDeliver(order_id,goods_id,sku_id) {
    layer.open({
        content: '你确定要确认收货吗？'
        ,btn: ['确定', '不要']
        ,yes: function(index){
            pub_save({
                url:url.sureDeliver,
                data:{'order_id':order_id,'goods_id':goods_id,'sku_id':sku_id},
                complete:modifyComplete,
            })
        }
    });
}
//评价
function evaluateEdit(order_id,goods_id,sku_id) {
    window.location.href=urlConnect(url.evaluateEdit,{order_id:order_id,goods_id:goods_id,sku_id:sku_id})
}
//申请售后
function goOrderService(order_id,goods_id) {
    window.location.href = urlConnect(url.orderService,{order_id:order_id,goods_id:goods_id})
}
//查看物流
function logistic(order_id,goods_id) {
    window.location.href=urlConnect(url.logistics,{order_id:order_id,goods_id:goods_id})
}
//物流单号
function showWul(name,num) {
    var msg = '<p class="mt10 f14 tl">物流名称：'+name+'</p>'
    msg += '<p class="mt10 f14 tl">物流单号：'+num+'</p>'
    layer.open({
        content:msg
        ,btn: '确定'
    });
}