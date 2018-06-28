
//头部搜索
function search(obj){
   var s=$(obj).val();
    layer.open({
        content: '当前输入:'+s
        ,skin: 'msg'
        ,time: 2 //2秒后自动关闭
    });

}
//拼团活动或者特价活动
$(document).on("click",".clearfix",function () {
    layer.open({
        type: 2
        ,content: '后台正在完善：拼团活动或者特价活动'
        ,time: 4
    });

})
//精彩活动
$(document).on("click",".aui-slide-item-item",function () {
    var _this=$(this);
    layer.open({
        type: 2
        //,content: '后台正在完善：/n 精彩活动(互动游戏+微信红包+比赛抽奖+流量活动等等)'
        ,content: '后台正在完善：精彩活动'
        ,time: 4
    });

})
