/**
 * 依赖  jquery.js
 * author jiang
 * 默认ajaj请求为post请求
 * 2018/7/19
 pageload({
		 targetWarp:'dataListWrap',
         target:'goodsList',
         page:1,
         size:4,
         ajaxData:{
              url:"__STATIC__/index/json/more.json",
              data:{},
          },
		dealFun:dealData,
		complete:fun,数据加载完成后调用函数
     });
*/
var pageload = function(options){
    return new MyPageload(this, options);
};
var MyPageload = function(element, options){
    var _this = this;
    _this.init(options);
};
// 初始化
MyPageload.prototype.init = function(options){
    var me = this;
    me.opts = $.extend(true, {}, {
        domDown : {                                                          // 下方DOM
            domClass   : 'dropload-down',
        //    domRefresh : '<div class="droploadEle dropload-refresh hide">↑上拉加载更多</div>',
            domLoad    : '<div class="droploadEle dropload-load hide"><span class="loading"></span>加载中...</div>',
            domNoData  : '<div class="droploadEle dropload-noData hide">没有更多数据了</div>',
            emptyData  : '<div class="droploadEle dropload-noData hide">数据为空</div>'//第一页加载就没有数据
        },
        autoLoad : true,                                                     // 自动加载
        targetWarp:'',
        target:'',
        page:1,
        size:10,
        noData:false,//没有数据  true有数据
        loading:false,//正在加载  false加载完成
        ajaxData:{
            url:"#",
            data:{},
        },
        dealFun:'',
        complete:'',//数据加载完成后调用函数
    }, options);
    var $targetWarp = $('#'+me.opts.targetWarp),
        $target = $('#'+me.opts.target);

    //将下滑元素插入到目标包裹中
    if($targetWarp.find("."+me.opts.domDown.domClass).size()<1){
        $targetWarp.append('<div class="'+me.opts.domDown.domClass+'">'+me.opts.domDown.domLoad+'</div>');
        me.$domDown = $('.'+me.opts.domDown.domClass);
    }
    // 加载下方

    $(window).on('scroll',function(){
        console.log('scroll1:'+me.opts.loading);
        setTimeout(function () {
            if(refreshOk(me)){
                me.opts.loading = true;
                loadDown(me);
            }
        },500)
    });

    // 加载下方
    function loadDown(me){
        me.$domDown.html(me.domDown);
        me.opts.loading = true;
        setTimeout(function () {
            loadDownFn(me);
        },200)
    }
    // 如果文档高度不大于窗口高度，数据较少，自动加载下方数据
    fnAutoLoad(me);
    function fnAutoLoad(me){
        if(me.opts.autoLoad){
            if(refreshOk(me)){
                loadDown(me);
            }
        }
    }
    //下拉卡加载执行函数
    function loadDownFn(me) {
        var data=$.extend(true, {$t:new Date().getTime()}, {
            page:me.opts.page,
            size:me.opts.size,
        },me.opts.ajaxData.data);
        $.ajax({
            url:me.opts.ajaxData.url,
            type:'post',
            data:data || {},
            dataType:'json',
            success: function(data){
                //  console.log('=========test2=================')
                var code = data.code;
                var data = data.data;//数据
                if (code=='200'){
                    //如果获取的数据还没有条数多，表明数据已经没有了
                    if(me.opts.page ==1 && data.length ==0){
                        //me.$domDown.html(me.opts.domDown.emptyData);
                        showEmptyWrap(me)
                        me.opts.noData=true;
                    } else if(data.length<1){
                        me.$domDown.html(me.opts.domDown.domNoData);
                        me.opts.noData=true;
                    } else{
                        //还有数据的情况
                        var html = me.opts.dealFun(data);
                        $target.append(html);
                        me.$domDown.html(me.opts.domDown.domLoad);
                        me.opts.loading = false;
                        if(refreshOk(me)){
                            fnAutoLoad(me);
                        }
                    }
                    if ( me.opts.complete !=''){
                        me.opts.complete();
                    }
                    ++me.opts.page;
                } else{
                    me.$domDown.html(me.opts.domDown.domNoData);
                    me.opts.noData=true;
                }
                me.opts.loading = false;
            },
            error: function(xhr, type){
                console.error('网络错误');
                // 即使加载出错，也得重置
            }
        });
    }
    function refreshOk(me){
        return !me.opts.noData && !me.opts.loading  && document.getElementsByClassName(me.opts.domDown.domClass)[0].getBoundingClientRect().top<$(window).height()
    }

};

///每次在重新加载调用时可初始化数据
function initData(target){
    $('#'+target).empty();
    $('.dropload-down').remove();
}
//显示空图标
function showEmptyWrap(me){
    me.$domDown.html(me.opts.domDown.emptyData);
   if($('.empty-wrap').size()>0){
       $('.empty-wrap').show();
       me.$domDown.html('');
   }

}
function hideEmptyWrap(){
    if($('.empty-wrap').size()>0) {
        $('.empty-wrap').hide();
    }
}
//导航时
function bindTab() {
    $('#navListTab').find('li').attr('onclick','loadOrderData()');
}
function unbindTab() {
    $('#navListTab').find('li').removeAttr('onclick');
}