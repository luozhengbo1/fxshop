
function formData(id){
    var obj = {};
    var item = $("#"+id+" input"+",#"+id+" select"+",#"+id+" textarea");
    var type = '';
    var group = [];
    item.each(function(i){
        type = $(this).attr("type");
        if(type=='radio'){
            obj[$(this).attr("name")] = $("input[name="+$(this).attr("name")+"]:checked").val();
        }else if(type=='checkbox'){
            if($.inArray($(this).attr("name"), group)>= 0){
                $(this).is(":checked") ? obj[$(this).attr("name")] += $(this).val()+',' : '';
            }else{
                group.push($(this).attr("name"));
                $(this).is(":checked") ? obj[$(this).attr("name")] = ($(this).val()+',') :  obj[$(this).attr("name")] = '';
            }
        }else{
            obj[$(this).attr("name")] = $(this).val();
        }
    })

    if(group.length > 0){
        $.each(group,function(i,e){
            obj[e] = obj[e].substr(0,obj[e].length-1);
        })
    }

    return obj;
}
function formEmptyValid(id) {
    var obj = {};
    var item = $("#"+id+" input"+",#"+id+" select"+",#"+id+" textarea");
    var type = '';
    var flag= true
    item.each(function(i,ele){
        type = $(this).attr("type");
        if(type){
            var value = $(ele).val();
            if(value==""){
                $(ele).focus();
                layer_msg($(ele).data("text"))
                flag = false;
                return flag;
            }
        }
    });
    return flag;
}

/*使用该js需要引入jquery， Validform，layer手机提示*/
/*手机版弹出提示框*/
function layer_msg(msg){
    layer.open({
        content: msg
        ,skin: 'msg'
        ,time: 2 //2秒后自动关闭
    });
}

/*
*弹出提示信息后跳转
*/
function alertMsgUrl(msg,url,time){
	alertMsg(msg,time);
	setTimeout(function(){
		if(url){
			location.href=url;
		}
	},2000);
}

/*
*提交数据 
* obj Validform表单对象，post_url
*/

function submitForm(id,post_url,return_url){
	$('#'+id).Validform({
		tiptype:function(msg,o){
			if(o.type != 2){
				layer_msg(msg);
			}
		},
		beforeSubmit:function(curform){
            $.ajax({
                url:post_url,
                type:'post',
                data:formData(id),
                dataType:'json',
                success: function(data){
                    layer_msg(data.msg);
                    if(data.code ==200){
                        setTimeout(function(){
                            location.href=return_url;
                        },1500);
                    }
                }
            })
			return false;
		},
	
	});
}



/*post提交函数*/
function postData(postUrl,jsonData){
	if(jsonData==undefined){
		$.post(postUrl,function(res){
			alertMsg(res.msg);
			 setTimeout(function(){
				if(res.url){
					location.href=res.url;
				}
			},1500);
		},"json");
	}else{
		$.post(postUrl,jsonData,function(res){
			alertMsg(res.msg);
			 setTimeout(function(){
				if(res.url){
					location.href=res.url;
				}
			},1500);
		},"json");
	}
}


/**
 * 毫秒转换为日期格式
 * 用法：new Date(itme[i].regTime).Format("yyyy-MM-dd hh:mm:ss");
 * @param fmt
 * @returns {*}
 * @constructor
 */
Date.prototype.Format = function (fmt) { //author: meizz
    var o = {
        "M+": this.getMonth() + 1, //月份
        "d+": this.getDate(), //日
        "h+": this.getHours(), //小时
        "m+": this.getMinutes(), //分
        "s+": this.getSeconds(), //秒
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度
        "S": this.getMilliseconds() //毫秒
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
};
//tab导航
function navTab(){
    var $tabNavItem= $('.tab-nav .tab-nav-swiper');
    $tabNavItem.click(function () {
        $tabNavItem.removeClass('active');
        $(this).addClass('active');
        var index = $tabNavItem.index(this),tranlateWidth = index*100;
        var  contentH = $('.tab-content').find('.tab-content-item').eq(index).outerHeight();
        $('.tab-content').css('height',contentH)
        $('.tab-content').css('transform','translate3d(-'+tranlateWidth+'%, 0px, 0px)');
    })
}
//swiper   banner滚动
function bannerSwiper(_class) {
    new Swiper('.'+_class, {
       /* autoplay: {
            delay: 6000,
            stopOnLastSlide: false,
            disableOnInteraction: false,
        },*/
        pagination: {
            el: '.swiper-pagination',
            bulletElement : 'li',
        },
    });
}
//加减方法
/**
 *
 * @param watchFun  数据改变时执行的方法 可以不写
 */
var countCalculate = function (watchFun) {
    this.init(watchFun);
};
countCalculate.prototype.init =function (watchFun) {
    var $countWrap =  $('.count-wrap'),
        minus = $countWrap.find('.minus'),
        add = $countWrap.find('.add'),
        sumInput= $countWrap.find('.sumInput');
    minus.click(function () {
        var input = $(this).parents('.count-wrap').find('.sumInput');
        if(input.val() ==1 || input.val() <1){
            layer_msg('数量最小为1');
            input.val(1);
        }else{
            input.val(parseInt(input.val())-1);
        }
        if(watchFun){
            watchFun();
        }
    });
    add.click(function () {
        var input = $(this).parents('.count-wrap').find('.sumInput');
        var value = parseInt(input.val());
        var store = parseInt(input.attr('data-store'));

        //点击的时候是先校验 再执行数据操作  故+1
        if((value+1) >store){
            layer_msg('库存不足');
        //    input.val(store)
        }else if((value+1) >200){
                layer_msg('数量最多不超过200');
             //   input.val(200)
        }else{
            input.val(value+1);
        }
        if(watchFun){
            watchFun();
        }
    });
    sumInput.keydown(function(){

       // console.log('123ss'.replace(/D/g,''))
        //$(this).val( ($(this).val()).replace(/D/g,''))
        /*if($(this).val()<1){
            $(this).val(1)
        }*/
    });
    sumInput.keyup(function () {
        var input = $(this).parents('.count-wrap').find('.sumInput');
        var value =$(this).val();
        value=(parseInt((value=value.replace(/\D/g,''))==''?'1':value,10));
        var store = parseInt(input.attr('data-store'));
        if(store >=200){
            if(value>store) value = 200;
        }else if(store<200){
            if(value>store) value = store;
        }
        if(value<1){
            value = 1;
        }

        $(this).val(value);
        if(watchFun){
            watchFun();
        }
    });
}
function validBuyNum() {
    var falg = true;
    $('.sumInput').each(function (index,ele) {
        var store = parseInt($(ele).attr('data-store'));
        var maxNum = 200;//数量最多不超过200
        var minNum = 1
        //直接进行相关校验
        if($(ele).val() >store){
            layer_msg('库存不足');
        //    $(ele).val(store)
            falg = false;
        }
        else if($(ele).val()>maxNum){
            layer_msg('数量最多不超过200');
            $(ele).focus();
         //   $(ele).val(200)
            falg = false;
        }
        if($(ele).val()<minNum){
            layer_msg('数量最小为1');
            $(ele).focus();
            falg = false;
        }
    });
    return falg;
}

//加载函数
//
function layerLoad(){
    var html ='<div class="f14"><span class="layer_loading"></span><p>加载中...</p></div>'
    var loading = layer.open({
         content: html
        ,skin: 'msg'
        ,time: 200000 //2秒后自动关闭
    });
    return loading;
}

/*数字跳动*/
function countUpFun(id){
    var target =$("#"+id).attr("data-value");
    target = target.replace( /,/g, '');
    var options = {
        useEasing : true,
        useGrouping : true,
        separator : ',',
        // decimal : '.',
    };
    new CountUp(id, 0.00,target, 2, 5, options).start();//为理财人赚取收益
}

/**
 *
 * @param $target 导航的tab对象
 * @param fun 点击导航执行的函数
 */
function tabSwitch($target,complete) {
    $target.each(function (index,ele) {
        $(ele).click(function () {
            console.log('click')
            $target.removeClass('active')
            $(ele).addClass('active');
            if(complete){
                complete()
            }
        });
    })
}

function notEmpty(val) {
    if(val==undefined || val =='undefined' || val =='null' || val ==null){
        return ''
    }else return val;
}

/**
 *
 * @param url 请求地址
 * @param json 拼接参数jsoN
 * @returns {*}
 */
function urlConnect(url,json) {
    var result = url;
    result = result.split('.html')[0];
    if(json){
        for (var key in json){
            result +="/"+key+"/"+json[key];
        }
    }
    result = result+'.html';
    return result;
}

/**
 *
 * @param type 0 删除  1 修改
 * @param id
 */
var request_flag = {
    del:true,
    edit:true,
    save:true,
}
function req_opt(type,json,returnUrl){
    if(request_flag.del){//请求完成后才能进行下一次请求
        request_flag.del = false;
        layerLoad();
        if(type==0){
            $.ajax({
                url:url.dele,
                type:'post',
                data:json ||{},
                dataType:'json',
                success: function(data){
                    layer_msg(data.msg);
                    if(data.code ==200){
                        setTimeout(function(){
                            location.href=url.list;
                            request_flag.del = true;
                        },1500);
                    }else{
                        request_flag.del = true;
                    }
                }
            })
        }
    }
}

/**
 *
 * @param json{
 *  url:"",
 *  data:"",
 *  return_url:"",
 *  complete:""
 * }
 */
function pub_save(json){
    if(request_flag.save){//请求完成后才能进行下一次请求
        request_flag.save = false;
        layerLoad();
        $.ajax({
            url:json.url,
            type:'post',
            data:json.data,
            dataType:'json',
            success: function(data){
                layer_msg(data.msg);
                if(data.code ==200){
                    if(data.redirect && data.redirect!="undefined"){
                        location.href=data.redirect;
                        request_flag.save = true;
                    }else if(json.complete){
                        //有回调函数  执行回调函数
                        json.complete(data.data);
                        request_flag.save = true;
                    }else {
                        setTimeout(function(){
                            location.href=json.return_url;
                            request_flag.save = true;
                        },1500);
                    }
                }else{
                    request_flag.save = true;
                }
            }
        })
    }
}

function pub_edit(json){
    if(request_flag.edit){//请求完成后才能进行下一次请求
        request_flag.edit = false;
        layerLoad();
        setTimeout(function () {
            $.ajax({
                url:json.url,
                type:'post',
                data:json.data,
                dataType:'json',
                success: function(data){
                    layer_msg(data.msg);
                    if(data.code ==200){
                        if(json.complete){
                            //有回调函数  执行回调函数
                            json.complete(data.data);
                            request_flag.edit = true;
                        }else{
                            setTimeout(function(){
                                location.href=json.return_url;
                                request_flag.edit = true;
                            },1500);
                        }
                    }else{
                        request_flag.edit = true;
                    }
                }
            })
        },500)
    }
}
function pub_del(json){
    if(request_flag.del){//请求完成后才能进行下一次请求
        request_flag.del = false;
        layerLoad();
        $.ajax({
            url:json.url,
            type:'post',
            data:json.data,
            dataType:'json',
            success: function(data){
                layer_msg(data.msg);
                if(data.code ==200){
                    if(json.complete){
                        //有回调函数  执行回调函数
                        json.complete();
                        request_flag.del = true;
                    }else if(json.return_url){
                        //有返回地址  执行返回地址
                        setTimeout(function(){
                            location.href=json.return_url;
                            request_flag.del = true;
                        },1500);
                    }

                }else{
                    request_flag.del = true;
                }
            }
        })
    }
}
function pub_query(json){
    $.ajax({
        url:json.url,
        type:'post',
        data:json.data,
        dataType:'json',
        success: function(data){
            if(data.code ==200){
                if(json.complete){
                    //有回调函数  执行回调函数
                    json.complete(data.data);
                }
            }
        }
    })
}
//瀑布流显示商品
var msnry_destory = false;// true 表示可以删除了
var msnry;//瀑布流对象
function masonryShow() {
    var container = document.querySelector('.grid');
    //图片加载有延长
    setTimeout(function () {
        msnry = new Masonry( container);
        msnry_destory = true;//表示创建masonry完成
    },800)//800
}
function destoryMasonry() {
    if(msnry_destory){
        msnry_destory = false;
        msnry.destroy();
    }
}

function enterKey(complete){
    $(window).keyup(function (event) {
        var e = event || window.event;
        if (e && e.keyCode == 13) { //回车键的键值为13
            complete(); //调用登录按钮的登录事件
            return false;
        }
    })
}

//
function tagParse(tag){
    var detailTag = tag;
    detailTag = detailTag.replace(/&lt;/g,"<");
    detailTag = detailTag.replace(/&gt;/g,">");
    detailTag = detailTag.replace(/&quot;/g,"'");
    return detailTag
}

//倒计时
function backTime(){
    //28分株
    $('.sulfTime').each(function (index, ele) {
        var endTime = (parseInt($(ele).attr('data-createtime')) +1*60);
        var currentTime = parseInt(new Date().getTime()/1000);
        console.log(endTime,currentTime)
        if(endTime > currentTime){
            setInterval(function () {
                currentTime = parseInt(new Date().getTime()/1000);
                var sulfTime = endTime-currentTime;
                var secondTime = parseInt(sulfTime/60);
                var millTime = sulfTime%60;
                var showText = '剩余支付时间'+secondTime+'分'+millTime+'秒';
                if(sulfTime>0)
                  $(ele).html(showText);
                else{
                    $(ele).html('订单已过期，重新下单吧');
                    $(ele).parents('.orderWrap').find('.orderCancel').remove();
                    $(ele).parents('.orderWrap').find('.orderPay').remove();
                }
            },1000)
        }else{
            var showText = '订单已过期，重新下单吧';
            $(ele).html(showText);
             $(ele).parents('.orderWrap').find('.orderCancel').remove();
             $(ele).parents('.orderWrap').find('.orderPay').remove();
        }
    })
}
var is_send_param = {
    0:'未发货',
    1:'已发货',
    2:'已收货',
    3:'退货中',
    4:'退货完成',
}
var order_status_param={
    0:'未支付',
    1:'已支付',
    2:'待评价',
    3:'待回复',
    4:'待退款',
    // 5:'部分退款',
    // 6:'全部退款',
     6:'退款',
    7:'已取消订单',
    8:'订单完成',
}
function countDown(start,end){
    var currentTime = parseInt(new Date().getTime()/1000),html='';
    if(activeStatus(start,end) ==1){
        //活动中
        $('#countDown').html('正在抢购中');
    }else if(activeStatus(start,end)==0){
        var intDiff = start-currentTime;
        timer(intDiff)
    }else if(activeStatus(start,end) ==2){
        //活动已经结束
        $('#countDown').html('活动已经结束');
    }
}
function timer(intDiff){
    var interTimer = window.setInterval(function(){
        var day=0,
            hour=0,
            minute=0,
            second=0;//时间默认值       
        if(intDiff > 0){
            day = Math.floor(intDiff / (60 * 60 * 24));
            hour = Math.floor(intDiff / (60 * 60)) - (day * 24);
            minute = Math.floor(intDiff / 60) - (day * 24 * 60) - (hour * 60);
            second = Math.floor(intDiff) - (day * 24 * 60 * 60) - (hour * 60 * 60) - (minute * 60);
            if (minute <= 9) minute = '0' + minute;
            if (second <= 9) second = '0' + second;
            var html = day+'天'+hour+'时'+minute+'分'+second+'秒';
            $('#countDown').html(html);
            intDiff--;
        }else {
            clearInterval(interTimer);
        }

    }, 1000);
}

/**
 *
 * @param start
 * @param end
 * @returns {number} 0未开始 1 活动中 2 已结束
 */
function activeStatus(start,end) {
    var currentTime = new Date().getTime()/1000;
    if(currentTime<start) return 0;
    else if(currentTime>start && currentTime<end) return 1;
    else if(currentTime>end) return 2;
}