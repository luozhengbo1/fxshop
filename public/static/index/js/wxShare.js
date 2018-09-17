
var cfg = {
    debug : false,
    appId : appId,
    timestamp :timestamp ,
    nonceStr : nonceStr,
    signature :signature,
    jsApiList : ['onMenuShareTimeline', 'onMenuShareAppMessage', 'onMenuShareQQ', 'onMenuShareWeibo','onMenuShareQZone']
}
wx.config(cfg);
wx.ready(function () {
    wx.onMenuShareAppMessage({
        title: '泛亚商城', // 分享标题
        desc: des, // 分享描述
        link: linkurl, // 分享链接
        imgUrl: img, // 分享图标
        trigger: function (res) {
            // 不要尝试在trigger中使用ajax异步请求修改本次分享的内容，因为客户端分享操作是一个同步操作，这时候使用ajax的回包会还没有返回
        },
        success: function (res) {
            $("#text").hide();
        },
        cancel: function (res) {
            $("#text").hide();
        },
        fail: function (res) {

        }
    });
    wx.onMenuShareTimeline({
        title: '泛亚商城', // 分享标题
        desc: des, // 分享描述
        link: linkurl, // 分享链接
        imgUrl: img, // 分享图标
        trigger: function (res) {
            // 不要尝试在trigger中使用ajax异步请求修改本次分享的内容，因为客户端分享操作是一个同步操作，这时候使用ajax的回包会还没有返回

        },
        success: function (res) {
            $("#text").hide();
        },
        cancel: function (res) {
            $("#text").hide();
        },
        fail: function (res) {

        }
    });
    wx.onMenuShareQQ({
        title: '泛亚商城', // 分享标题
        desc: des, // 分享描述
        link: linkurl, // 分享链接 // 分享链接
        imgUrl: img, // 分享图标
        trigger: function (res) {

        },
        complete: function (res) {

        },
        success: function (res) {
            $("#text").hide();
        },
        cancel: function (res) {
            $("#text").hide();
        },
        fail: function (res) {

        }
    });
    wx.onMenuShareWeibo({
        title: '泛亚商城', // 分享标题
        desc: des, // 分享描述
        link: linkurl, // 分享链接
        imgUrl: img, // 分享图标
        trigger: function (res) {
        },
        complete: function (res) {

        },
        success: function (res) {
            $("#text").hide();
        },
        cancel: function (res) {
            $("#text").hide();
        },
        fail: function (res) {

        }
    });
    wx.onMenuShareQZone({
        title: '泛亚商城', // 分享标题
        desc: des, // 分享描述
        link: linkurl, // 分享链接
        imgUrl: img, // 分享图标
        trigger: function (res) {
        },
        complete: function (res) {

        },
        success: function (res) {
            $("#text").hide();
        },
        cancel: function (res) {
            $("#text").hide();
        },
        fail: function (res) {
        }
    });

});
