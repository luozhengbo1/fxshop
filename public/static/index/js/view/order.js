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
                complete:function () {
                    setTimeout(function () {
                        location.reload()
                    },2000)
                },
            })
        }
    });
}
//取消订单
function cancelOrder(order_id,goods_id,sku_id) {
    pub_save({
        url:url.cancelOrder,
        data:{'order_id':order_id,'goods_id':goods_id,'sku_id':sku_id},
        complete:function () {
            setTimeout(function () {
                location.reload()
            },2000)
        },
    })
}
//删除订单
function deleOrder(order_id,goods_id,sku_id) {
    pub_save({
        url:url.deleOrder,
        data:{'order_id':order_id,'goods_id':goods_id,'sku_id':sku_id},
        complete:function () {
            setTimeout(function () {
                location.reload()
            },2000)
        },
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
function goOrderService(order_id,goods_id,sku_id) {
    window.location.href = urlConnect(url.orderService,{order_id:order_id,goods_id:goods_id,sku_id:sku_id})
}
//查看物流
function logistic(order_id,goods_id) {
    window.location.href=urlConnect(url.logistics,{order_id:order_id,goods_id:goods_id})
}
//退款详情
function orderTrack(order_id,goods_id,sku_id) {
    window.location.href=urlConnect(url.orderTrack,{order_id:order_id,goods_id:goods_id,sku_id:sku_id})
}

//物流单号
function showWul(name,num) {
    window.location.href=urlConnect(url.logisticsTrack,{name:name,num:num})
    /*var msg = '<p class="mt10 f14 tl">物流名称：'+name+'</p>'
    msg += '<p class="mt10 f14 tl">物流单号：'+num+'</p>'
    layer.open({
        content:msg
        ,btn: '确定'
    });*/
}
function pageReload() {
    setTimeout(function () {
        window.location.reload();
    },1500)
}
function logisticForm(id) {
    var html =  '<div class="mt5"><input class="form-control p0 tc" id="postType" type="text" placeholder="填写快递公司"></div>';
        html+=  '<div class="mt5"><input class="form-control p0 tc" id="postNum" type="text" placeholder="填写快递单号"></div>'
    layer.open({
        content: html
        ,btn: ['确定', '取消']
        ,yes: function(index){
            //location.reload();
            //layer.close(index);
            pub_edit({
                url:url.orderServerAddWuliu,
                data:{id:id, 'type':$('#postType').val(),'wuliu_order':$('#postNum').val()},
                complete: pageReload,
            })
        }
    });
}
//商品按钮
function orderBtnHtml(json){
    var html='';
    switch(json.pay_status)
    {
        case 1://已支付
            if(json.is_send==0 && json.settlement_type !=settlement.score)
                html +='        <a class="layui-btn layui-btn-primary layui-btn-xs  layui-btn-radius" onclick="refund(\''+json.order_id+'\',\''+json.goods_id+'\',\''+json.sku_id+'\')">退款</a>';
            if(json.is_send ==1)
                html +='        <button class="layui-btn  layui-btn-danger layui-btn-radius layui-btn-xs " onclick="sureDeliver(\''+json.order_id+'\',\''+json.goods_id+'\',\''+json.sku_id+'\')">确认收货</button>';
            //待评价
            if(json.is_send ==2){
                html +='        <button class="layui-btn layui-btn-xs  layui-btn-danger layui-btn-radius" onclick="evaluateEdit(\''+json.order_id+'\',\''+json.goods_id+'\',\''+json.sku_id+'\')">评&nbsp;&nbsp;价</button>';
            }

            if(json.is_send ==2 || json.is_send ==5 || json.is_send ==6 || json.is_send ==7){
                if(json.settlement_type !=settlement.score){
                    if(json.after_sale_is==afterSale.yes){
                        html +='        <a class="layui-btn layui-btn-primary layui-btn-xs  layui-btn-radius" onclick="cancelAfterSale(\''+json.order_id+'\',\''+json.goods_id+'\',\''+json.sku_id+'\')">取消申请</a>';
                        html +='        <a class="layui-btn layui-btn-primary layui-btn-xs  layui-btn-radius" onclick="orderTrack(\''+json.order_id+'\',\''+json.goods_id+'\',\''+json.sku_id+'\')">售后详情</a>';

                    }
                    else
                        html +='        <a class="layui-btn layui-btn-primary layui-btn-xs  layui-btn-radius" onclick="goOrderService(\''+json.order_id+'\',\''+json.goods_id+'\',\''+json.sku_id+'\')">申请售后</a>';
                }
            }
            break;
    }
    if( json.is_send!=constant.send.returnMoney && json.is_send!=constant.send.nosend ){
        // html +='    <button class="layui-btn layui-btn-primary layui-btn-xs layui-btn-radius" onclick="showWul(\''+json.logistics_name+'\',\''+json.logistics_number+'\')">物流单号</button>'
        html +='    <button class="layui-btn layui-btn-primary layui-btn-xs layui-btn-radius" onclick="showWul(\''+json.logistics_name+'\',\''+json.logistics_number+'\')">物流信息</button>'
    }
    return html;
}
































