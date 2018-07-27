/**
 * 依赖 dropload.js (http://ons.me/526.html)   jquery.js
 * author jiang
 * 默认ajaj请求为post请求
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
var pageloadFlag=true;//请求结束
var pageload = function(options){
    return new MyPageload(this, options);
};
var MyPageload = function(element, options){
    var _this = this;
    _this.init(options);
};
// 初始化
MyPageload.prototype.init = function(options){
    var _this = this;
    _this.opts = $.extend(true,{
        complete:'',
    }, options);
    $('#'+_this.opts.targetWarp).removeAttr('data-page');
    var dropload =  $('#'+_this.opts.targetWarp).dropload({
        scrollArea : window,
        loadDownFn : function(me){

                if(!pageloadFlag) return;
                pageloadFlag= false;

                //修改page
                var $target = $('#'+_this.opts.targetWarp);
                if(!$target.attr('data-page')){
                    $target.attr('data-page', 1)
                }
                var page =$target.attr('data-page');
                var thisPage = page;
                var url= _this.opts.ajaxData.url+'?page='+page+'&size='+_this.opts.size;
                $target.attr('data-page',parseInt($target.attr('data-page'))+1);


                $.ajax({
                    url:url,
                    type:'post',
                    data:_this.opts.ajaxData.data || {},
                    dataType:'json',
                    success: function(data){
                        //  console.log('=========test2=================')
                        var code = data.code;
                        var data = data.data;//数据
                        if (code=='200'){
                            var html = _this.opts.dealFun(data);
                            //如果获取的数据还没有条数多，表明数据已经没有了
                            if(thisPage ==1 && data.length ==0){
                                //第一页数据就为空
                                _this.fnDropload(dropload);
                                showEmptyWrap();
                            }
                            //订单数据后台组合后问题
                            /* else if(data.length<_this.opts.size){
                                 $('#'+_this.opts.target).append(html);
                                 _this.fnDropload(dropload);
                             }*/
                            else if(data.length<1){
                                $('#'+_this.opts.target).append(html);
                                _this.fnDropload(dropload);
                            }
                            else{
                                // setTimeout(function(){
                                $('#'+_this.opts.target).append(html);
                                // 每次数据加载完，必须重置
                                dropload.resetload();
                                // },1000);
                            }
                            if ( _this.opts.complete !=''){
                                _this.opts.complete();
                            }
                        } else{
                            _this.fnDropload(dropload)
                        }
                        pageloadFlag = true;
                        //console.log("bug测试"+_this.opts.page++);
                       ;
                    },
                    error: function(xhr, type){
                        console.error('网络错误');
                        // 即使加载出错，也得重置
                        _this.fnDropload(dropload)
                    }
                });
        }
    });
};
// dropload 处理
MyPageload.prototype.fnDropload=function(dropload){
    dropload.lock();
    dropload.noData();
    dropload.resetload();
}
///每次在重新加载调用时可初始化数据
function initData(target){
    $('#'+target).empty();
    $('.dropload-down').remove();
}
//显示空图标
function showEmptyWrap(){
    $('.dropload-down').remove();
    if($('.empty-wrap').size()>0) $('.empty-wrap').show();

}
function hideEmptyWrap(){
    if($('.empty-wrap').size()>0) $('.empty-wrap').hide();
}