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
//删除订单
function deleOrder(order_id,goods_id,sku_id) {
    pub_save({
        url:url.deleOrder,
        data:{'order_id':order_id,'goods_id':goods_id,'sku_id':sku_id},
        complete:loadOrderData,
    })
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
//商品按钮
function orderBtnHtml(json){
    var html='';
    switch(json.order_status)
    {
        case 1://已支付
            if(json.is_send==0 && json.show_area !=showArea.score)
                html +='        <a class="layui-btn layui-btn-primary layui-btn-xs  layui-btn-radius" onclick="refund(\''+json.order_id+'\',\''+json.goods_id+'\',\''+json.sku_id+'\')">退款</a>';
            if(json.is_send ==1)
                html +='        <button class="layui-btn  layui-btn-danger layui-btn-radius layui-btn-xs " onclick="sureDeliver(\''+json.order_id+'\',\''+json.goods_id+'\',\''+json.sku_id+'\')">确认收货</button>';
            //待评价
            if(json.is_send ==2){
                html +='        <button class="layui-btn layui-btn-xs  layui-btn-danger layui-btn-radius" onclick="evaluateEdit(\''+json.order_id+'\',\''+json.goods_id+'\',\''+json.sku_id+'\')">评&nbsp;&nbsp;价</button>';
                if(json.show_area !=showArea.score){
                    if(json.after_sale_is==afterSale.yes)
                        html +='        <a class="layui-btn layui-btn-primary layui-btn-xs  layui-btn-radius" onclick="cancelAfterSale(\''+json.order_id+'\',\''+json.goods_id+'\',\''+json.sku_id+'\')">取消申请</a>';
                    else
                        html +='        <a class="layui-btn layui-btn-primary layui-btn-xs  layui-btn-radius" onclick="goOrderService(\''+json.order_id+'\',\''+json.goods_id+'\',\''+json.sku_id+'\')">申请售后</a>';
                }
            }

            break;
    }
    if(json.order_status!=7 && json.is_send!=constant.send.nosend ){
        html +='    <button class="layui-btn layui-btn-primary layui-btn-xs layui-btn-radius" onclick="showWul(\''+json.logistics_name+'\',\''+json.logistics_number+'\')">物流单号</button>'
    }
    return html;
}
































