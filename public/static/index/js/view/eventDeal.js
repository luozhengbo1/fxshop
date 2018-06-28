/**
 * 页面中需要处理的点击事件
 * @param options
 * @returns {MyEventDeal}
 */
var eventDeal = function(options){
    return new MyEventDeal(this, options);
};
var MyEventDeal = function(element, options){
    var _this = this;
    var mainViewScrol=0;
    _this.init(options);
};
MyEventDeal.prototype.init = function(options){
    var _this = this;
    _this.opts = $.extend(true,{
        complete:'',
    }, options);
    $('#footerShopNav,#popupBuyArea,#areaLabel,#addressSelectWrapper,#addressSelect,#cartList').on('click', function(e) {
        var target = e.srcElement || e.target
            , em = target;
        if (!em || !em.id)
            return;
        var $em = $(em), emId = em.id;
        //console.log(emId);
        switch (emId) {   //点击时需要处理的时间id
            //商品详情页事件
            case 'popupClose':
            case 'popupBuyArea':
                _this.showHidePopup($('#popupBuyArea'),false);
                break;
            case 'popupConfirm':
                // console.log('点击确定按钮');
                _this.showHidePopup($('#popupBuyArea'),false)
                break;
            case 'showChosePup':
            case 'carPage':
                //  console.log('加入购物车');//加入购物车
                _this.showHidePopup($('#popupBuyArea'),true);
                break;
            case 'buyPage':
                // console.log('立即购买');//立即购买
                _this.showHidePopup($('#popupBuyArea'),true);
                window.location.href="./affirmOrder";
                break;
            case 'cancel':
            case 'addressSelectWrapper':
                _this.showHidePopup($('#addressSelectWrapper'),false);
                break;
            case 'Addr':
                _this.showHidePopup($('#addressSelectWrapper'),true);
                break;
            default:
                break;
        }
    })
};
MyEventDeal.prototype.showHidePopup= function($dom, flag) {
    var obj = this;
    if (flag) {
        this.mainViewScroll = $(window).scrollTop();
        $dom.show();
        setTimeout(function() {
            $dom.addClass('show');
            $('body').addClass('overflowHide');
            //obj.popupshow = true;
        }, 50);
    } else {
        $('body').removeClass('overflowHide');
        // this.setDelayTime();
        $dom.removeClass('show');
        window.scrollTo(0, this.mainViewScroll);
        setTimeout(function() {
            $dom.hide();
        }, 50);
        //  obj.popupshow = false;
    }
}