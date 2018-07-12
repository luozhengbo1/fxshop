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
                data:{},
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
function evaluate(order_id,goods_id,sku_id) {
    layer.open({
        content: '你确定要确认收货吗？'
        ,btn: ['确定', '不要']
        ,yes: function(index){

        }
    });
}
//申请售后
function goOrderService(order_id,goods_id) {
    window.location.href = urlConnect(url.orderService,{order_id:order_id,goods_id:goods_id})
}
//查看物流
function logistics(order_id,goods_id) {
    window.location.href=urlConnect(url.logistics,{order_id:order_id,goods_id:goods_id})
}