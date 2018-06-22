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
		dealFun:dealData
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
    var _this = this;
    _this.opts = $.extend(true,{
        complete:'',
    }, options);
    var dropload =  $('#'+_this.opts.targetWarp).dropload({
        scrollArea : window,
        loadDownFn : function(me){
           var url= _this.opts.ajaxData.url+'?page='+_this.opts.page+'&size='+_this.opts.size;
            _this.opts.page++;
            $.ajax({
                url:url,
                type:'post',
                data:_this.opts.ajaxData.data || {},
                dataType:'json',
                success: function(data){
                    var data = data.lists;//数据
                    if (data.length>0){
                        var html = _this.opts.dealFun(data);
                        //如果获取的数据还没有条数多，表明数据已经没有了
                        if(data.length<_this.opts.size){
                            $('#'+_this.opts.target).append(html);
                            _this.fnDropload(dropload)
                        }else{
                            setTimeout(function(){
                                $('#'+_this.opts.target).append(html);
                                // 每次数据加载完，必须重置
                                dropload.resetload();
                            },100);
                        }
                        if ( _this.opts.complete !=''){
                            _this.opts.complete();
                        }
                    } else{
                        _this.fnDropload(dropload)
                    }
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


