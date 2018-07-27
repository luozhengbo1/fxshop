/// <reference path="SetProxyProductInfo.js" />
var productInfoModel = {};
var arrayInforList;
var setpid = 0;
var $priceShow = $('.priceShow');//商品销售属性
/*$(function () {
    //初始化商品分类
    InitTypeId();
    //分佣设置
    FenYongSet();
    //数据加载有延迟，必须在回调函数里面去初始化，否则延迟产生数据
    cacheMemberInit(InitData);

    InitFreighttemplate();
    ImgBoxEvets();
    //初使化上传图片
    Upload();
    //绑定商品属性改变事件 cjzhao修改
    $(".iteminput").change(function () {
        var text = $(this).val();
        var id = $("#" + $(this).attr("list")).find("option[value='" + text + "']").attr("id");
        var value = $("#" + $(this).attr("list")).find("option[value='" + text + "']").attr("value");
        if (typeof (id) == "undefined" || typeof (value) == "undefined") {
            $("#"+ $(this).attr("list")).attr("vid", "0");
            $("#"+ $(this).attr("list")).attr("value", text);
        } else {
            $("#" + $(this).attr("list")).attr("vid", id);
            $("#" + $(this).attr("list")).attr("value", value);
        }

    });

    $("#BrandId").change(function () {
        var value = 0;
        var text = $(this).val();
        var list = $("#" + $(this).attr("list")).find('option');
        for (var i = 0; i < list.length; i++) {
            if (list.eq(i).attr("value") == text) {
                value = list.eq(i).attr("id");
                break;
            }
        }
        $("#"+ $(this).attr("list")).attr("data-value", value);
        $("#"+ $(this).attr("list")).attr("data-title", text);


        //var id = $("#" + $(this).attr("list")).find('option[value="' + text + '"]').attr("id");
        //var value = $("#" + $(this).attr("list")).find('option[value="' + text + '"]').attr("value");
        //if (typeof (id) == "undefined" || typeof (value) == "undefined") {
        //    $("#" + $(this).attr("list")).attr("data-value", "0");
        //    $("#" + $(this).attr("list")).attr("data-title", text);
        //} else {
        //    $("#" + $(this).attr("list")).attr("data-value", id);
        //    $("#" + $(this).attr("list")).attr("data-title", value);
        //}
    });

    //如果不是供应商商品
    if (SupplierId == "0") {
        $("#Suppliers").prop("disabled", true);//禁用供应商选项
        $("#Suppliers").parents(".form-group").hide();

    } $("#SupplyPrice").parent().parent().hide();


    //SKU信息
    //$(".saleproperty").bind("change", function () {
    //    ChangeSku().Creat_Table();
    //    SetValue();
    //});
    //由于可以添加商品类目属性  为减少代码量 将bind事件变为事件委托  cjzhao修改 2016/7/14
    $(document).delegate(".saleproperty", "change", function () {
        //$(document).delegate(".saleproperty input:checkbox", "click", function () {

        var vid = $(this).children("input:checkbox").attr("data-vid");
        var ischecked = $(this).children("input:checkbox").is(':checked');
        var $checkbox = $(this).children("input:checkbox");

        //判断是否选中，如果是选中状态 就不必去代理商那里判断是否有商品
        if (!ischecked && vid != null) {
            $.post("/ProductCats/GetAgentProductskusStockBySkuID", { vid: vid, productID: parseInt(currentProductID) }, function (result) {

                if (result.Status == 1) {

                    if (result.Data != null && result.Data.Stock > 0) {
                        $checkbox.prop("checked", true);
                        popnews.confirm("该商品规格在代理商处有库存，移除该规格？", null, function () {
                            $.post("/ProductCats/DeleteProuctSkuBySkuId", { vid: vid, productID: parseInt(currentProductID) }, function (data) {

                                $checkbox.prop("checked", false);
                                ChangeSku().Creat_Table();
                                SetValue();
                            })


                        });
                    } else {
                        ChangeSku().Creat_Table();
                        SetValue();
                    }
                } else {
                    ChangeSku().Creat_Table();
                    SetValue();
                }
            });
        } else {
            ChangeSku().Creat_Table();
            SetValue();
        }

    })

    //$(document).delegate(".saleproperty input:checkbox", "click", function () {
    //    alert($(".saleproperty input:checkbox").length);

    //})

    //IsfreeShipping
    $("#IsfreeShipping2").click(function () {
        if ($("#IsfreeShipping2").is(":checked")) {
            $("#FreightTemplateId").show();
        }
    });
    $("#IsfreeShipping1").click(function () {
        if ($("#IsfreeShipping1").is(":checked")) {
            $("#FreightTemplateId").hide();
        }
    });

    //设置商品
    $("#Save").click(function () {
        $("#Save").attr("disabled", "disabled");
        setTimeout(function () {
            var check = validateItemProperty();
            if (check) {

                SetProductInfo();
                productInfoModel.StockCounts = _totalStockCounts;

                var postData = {
                    Product: JSON.stringify(productInfoModel), ProductSKUs: GetSalePropertyStr(),//获取SKU获信息
                    Propertys: GetItemProperty(), memberprice: JSON.stringify(cacheMemberPrice)
                };//获取属性信息};

                //console.log(postData.memberprice);
                //return;
                $.post("SetProductInfo", postData, function (result) {
                    if (result.Status) {
                        ShowMsg("保存成功！", true, function () {
                            window.location.href = "./Details/" + result.Msg;
                        });
                    }
                    else {
                        $("#Save").removeAttr("disabled");
                        ShowMsg(result.Msg, false);
                    }
                }, "json");
            }
            else {
                $("#Save").removeAttr("disabled");
            }
        }, 1000);
        //$("#Save").attr("disabled", "disabled");
        //var check = validateItemProperty();
        //if (check) {

        //    SetProductInfo();
        //    productInfoModel.StockCounts = _totalStockCounts;

        //    var postData = {
        //        Product: JSON.stringify(productInfoModel), ProductSKUs: GetSalePropertyStr(),//获取SKU获信息
        //        Propertys: GetItemProperty(), memberprice: JSON.stringify(cacheMemberPrice)
        //    };//获取属性信息};

        //    //console.log(postData.memberprice);
        //    //return;
        //    $.post("SetProductInfo", postData, function (result) {
        //        if (result.Status) {
        //            ShowMsg("保存成功！", true, function () {
        //                window.location.href = "./Details/" + result.Msg;
        //            });
        //        }
        //        else {
        //            $("#Save").removeAttr("disabled");
        //            ShowMsg(result.Msg, false);
        //        }
        //    }, "json");
        //}
        //else {
        //    $("#Save").removeAttr("disabled");
        //}

    });

    $("#TypeId").change(function () {
        setCategory();
        FenYongSwitchSet();
        getComission();
    });;





});*/

function setCategory() {
    var typeId = $("#TypeId").val();
    var typeText = $("#TypeId").find("option:selected").text().trim();
    if (typeId != "" && parseInt(typeId) > 0) {
        var ready = false;
        $(".setcategory").each(function (n) {
            var vid = $(this).data("cid");
            if (typeId == vid) {
                ready = true;
                return;
            }
        });
        if (ready) {
            ShowMsg("不能重复添加此商品分类", false);
            return;
        }
        var cats = '<div class="setcategory" style="width:100px; height:32px;" data-cid="' + typeId + '"><span class="category-text" style="width:100px; height:32px; line-height:32px;">' + typeText + '</span><span class="category-btn"><i class="iconfont icon-guanbi"></i></span></div>';
        $("#TypeId").before(cats);
    }
    if ($(".setcategory").length < 5) {
        $("#TypeId").show();
        $("#TypeId").val(0);
    } else {
        $('#TypeId').hide();
        $("#TypeId").before('<div style="width:100px; height:32px;" id="setcategory-Separated"></div>');
    }
}

function getComission() {

    var hascid = $(".setcategory:first").data("cid");
    var typeId = hascid;
    if (typeId != "" && parseInt(typeId) > 0) {
        $.post("/ProductInfo/CategoryInfo", { TypeId: typeId }, function (json) {
            //alert(JSON.stringify(json));


            $("body").data("FristComission", json.FirstCommission);
            $("body").data("SecondComission", json.SecondCommission);
            $("body").data("ThirdComission", json.ThirdCommission);

            setComission();
        });
    }
    else {
        $("body").data("FristComission", 0);
        $("body").data("SecondComission", 0);
        $("body").data("ThirdComission", 0);
        setComission();
    }
}


///设置佣金值
function setComission() {
    if ($("#mySwitchValue").prop("checked")) {
        if ($("body").data("FristComission") == null) {
            getComission();
            return;
        }
        $("#SecondCommission").val($("body").data("SecondComission"));
        $("#ThirdCommission").val($("body").data("ThirdComission"));
        $("#FirstCommission").val($("body").data("FristComission"));
    }
}

var InitTypeId = function () {
    $.post("/CategoryInfo/GetTypeList", function (result) {
        var typeId = $("#TypeId");
        if (result != null) {
            //var current = $("#update_TypeId").val();
            $(typeId).empty();
            var options = '<option value=0>默认分类</option>';
            //var options = '';

            result.forEach(function (item) {
                options += '<option value="' + item.value + '">' + item.Text + '</option>';
                //if (item.value == current) {
                //    options += '<option value="' + item.value + '" selected>' + item.Text + '</option>';
                //} else {
                //    options += '<option value="' + item.value + '">' + item.Text + '</option>';
                //}
            });
            $(typeId).append(options);
            if ($(".setcategory").length < 5) {
                $(typeId).show();
            } else {
                $(typeId).hide();
            }
        }
    }, "json");

    $(document).on('click', '.category-btn', function () {
        $(this).parent('.setcategory').remove();
        $("#setcategory-Separated").remove();
        if ($(".setcategory").length < 5) {
            $("#TypeId").show();
            $("#TypeId").val(0);
        } else {
            $("#TypeId").hide();
        }
        FenYongSwitchSet();
    });

}
//初始化运费模板
var InitFreighttemplate = function () {
    var temp = $("#freightTemplateId").val();
    var iFreightTemplateId = parseInt(temp);
    var iSupplierId = parseInt(SupplierId);
    if (iFreightTemplateId > 0 && iSupplierId>0) {
        RequestFreightsTemplateListNew(iSupplierId, iFreightTemplateId, true);
    } else {
        RequestFreightsTemplateList("FreightTemplateId", true);
    }
}

var CreateFreightsTemplate = function (result) {
    var html = "";
    var temp = $("#freightTemplateId").val();
    $.each(result, function (i, item) {
        if (item.Id == temp) {
            html += "<option value=" + item.Id + " selected>";
            html += item.Name;
            html += "</option>";
        } else {
            html += "<option value=" + item.Id + ">";
            html += item.Name;
            html += "</option>";
        }

    });
    return html;
}

var RequestFreightsTemplateList = function (id, flag) {
    $.post("/ProductInfo/GetProductsFreights/" + id, function (result) {
        var freightsTemplate = $("#" + id);
        freightsTemplate.empty();
        if (flag) {//增加默认值
            $(freightsTemplate).append("<option value='0'>--请选择--</option>");
        }
        $(freightsTemplate).append(CreateFreightsTemplate(result));
    }, "json");
    var hIsfreeShipping = $("#hIsfreeShipping").val();

    if (hIsfreeShipping == '0') {
        $("#" + id).show();
    }
}


var RequestFreightsTemplateListNew = function (id, fid, flag) {
    $.post("/ProductInfo/GetFreightsByMerchantAndFId?id=" + id + "&fid=" + fid, function (result) {
        var freightsTemplate = $("#FreightTemplateId");
        freightsTemplate.empty();
        if (flag) {//增加默认值
            $(freightsTemplate).append("<option value='0'>--请选择--</option>");
        }
        $(freightsTemplate).append(CreateFreightsTemplate(result));
    }, "json");
    var hIsfreeShipping = $("#hIsfreeShipping").val();

    if (hIsfreeShipping == '0') {
        $("#FreightTemplateId").show();
    }
}
function GetStoreTypeIds() {
    var typeContent = $(".setcategory");
    var ids = "0";
    var typeArray = [];
    if (typeContent.length <= 0) {
        return "0";
    } else {
        typeContent.each(function () {
            typeArray.push($(this).data("cid"));
        });
        ids = typeArray.join(",");
        return ids;
    }
}

var SetProductInfo = function () {
    var isfreeShipping = $('input[name="IsfreeShipping"]:checked').val();//（运费设置）是否选中包邮
    var saleStatus = $('input[name="SaleStatus"]:checked').val();//是否上架
    var freightTemplateId = 0;
    if ($("#FreightTemplateId").val()) {
        freightTemplateId = $("#FreightTemplateId").val();//运费模板ID
    }
    productInfoModel = {
        ProductName: $("#ProductName").val(),//商品名称
        ShortDescription: $("#ShortDescription").val(),//商品简介
        SaleStatus: saleStatus == "radOnSales" ? 1 : 2,//状态
        StockCounts: 0,//总库存
        ShowSaleCounts: $("#ShowSaleCounts").val(),//基础销售数量
        ImageUrl1: UpLoadField(0),//图片1
        ImageUrl2: UpLoadField(1),//图片2
        ImageUrl3: UpLoadField(2),//图片3
        ImageUrl4: UpLoadField(3),//图片4
        ImageUrl5: UpLoadField(4),//图片5
        MarketPrice: $("#MarketPrice").val(),//市场价
        BrandId: $("#BrandList").attr("data-value"),//品牌ID
        BrandName: $("#BrandId").val(),//品牌ID
        MainCategoryPath: $("#CategoryIdPath").val(),//主分类路径（类目）
        ExtendCategoryPath: "",//扩展分类路径
        HasSKU: true,//规格
        IsfreeShipping: isfreeShipping == "ChkisfreeShipping" ? true : false,//是否包邮
        MinShowPrice: minPrice,//最低销售价格
        MaxShowPrice: maxPrice,//最高销售价格
        FreightTemplateId: freightTemplateId,//运费模板Id
        CubicMeter: $("#CubicMeter").val(),//体积
        FreightWeight: $("#FreightWeight").val(),//重量
        CategoryId: $("#CategoryId").attr("title"),//商品类目(类目)
        TypeId: GetStoreTypeIds().split(",")[0],//类型Id
        TypeIdStr: GetStoreTypeIds(),
        MainCategoryPathName: $("#CategoryIdPathName").val(),//所属类目
        ProductCode: $("#ProductCode").val(),
        ProductBar: $("#ProductBar").val(),
        Id: $("#pid").val(),
        ReduceType: $('input[name=ReduceType]:checked').val(),
        IsVerificationIDCard: ($("input[name='IsVerificationIDCard']:checked").val() == "1"),
        SupplyPrice: ($("#SupplyPrice").val() ? $("#SupplyPrice").val() : "0")
        //TagList: $("#TagList").val()//标签Id
    };

    //if ( $( "input[name='IsVerificationIDCard']:checked" ).val() == "1" )
    //{
    //    productInfoModel.IsVerificationIDCard = true;
    //}
    //else
    //{
    //    productInfoModel.IsVerificationIDCard = false;
    //}

    productInfoModel.FirstCommission = parseFloat(($("#FirstCommission").val() == undefined || $("#FirstCommission").val().trim() == "") ? "0" : $("#FirstCommission").val());//佣金比例
    productInfoModel.SecondCommission = parseFloat(($("#SecondCommission").val() == undefined || $("#SecondCommission").val().trim() == "") ? "0" : $("#SecondCommission").val());//佣金比例
    productInfoModel.ThirdCommission = parseFloat(($("#ThirdCommission").val() == undefined || $("#ThirdCommission").val().trim() == "") ? "0" : $("#ThirdCommission").val());//佣金比例

    if ($("#hIsSetCommission").length > 0)
        productInfoModel.IsSetCommission = $("#hIsSetCommission").val() == '1' ? true : false;//是否开启分佣
    else
        productInfoModel.IsSetCommission = false;//是否开启分佣

    if (parseInt(productInfoModel.Id))
        productInfoModel.DisplaySequence = parseInt($("#DisplaySequence").val());

}
function Upload() {
    //$("#idFile" + 1).uploadPreview({
    //    Img: "idImg" + 1, Width: 70, Height: 70, FileSize: 300, Callback: function () {
    //        $("#ImageDiv2").show();
    //        $("#ImageDiv1 img").show();
    //        $("#ImageDiv1").attr("data-value", "Y");
    //    }
    //});
    //$("#idFile" + 2).uploadPreview({ Img: "idImg" + 2, Width: 70, Height: 70, FileSize: 300, Callback: function () { $("#ImageDiv3").show(); $("#ImageDiv2 img").show(); $("#ImageDiv2").attr("data-value", "Y");} });
    //$("#idFile" + 3).uploadPreview({ Img: "idImg" + 3, Width: 70, Height: 70, FileSize: 300, Callback: function () { $("#ImageDiv4").show(); $("#ImageDiv3 img").show(); $("#ImageDiv3").attr("data-value", "Y"); } });
    //$("#idFile" + 4).uploadPreview({ Img: "idImg" + 4, Width: 70, Height: 70, FileSize: 300, Callback: function () { $("#ImageDiv5").show(); $("#ImageDiv4 img").show(); $("#ImageDiv4").attr("data-value", "Y"); } });
    //$("#idFile" + 5).uploadPreview({ Img: "idImg" + 5, Width: 70, Height: 70, FileSize: 300, Callback: function () { $("#ImageDiv5 img").show(); $("#ImageDiv4").attr("data-value", "Y"); } });
}
//上传图片
function UpLoadField(num) {
    if ($(".productuploadimg").eq(num).length < 1) {
        return "";
    }
    return $(".productuploadimg").eq(num).find("img").attr("src");

}
//编辑时初使化
function InitData() {
    var productid = $("#pid").val();
    if (productid == undefined || $("#pid").val() == "0") {

    }
    else {
        var saleStatus = $("#saleStatus").val();
        saleStatus == "OnSale" ? $("#radOnSales").attr("checked", "checked") : $("#radInStock").attr("checked", "checked");//状态默认值
        var freightTemplateId = parseInt($("#hIsfreeShipping").val());
        freightTemplateId == 1 ? $("#IsfreeShipping1").attr("checked", "checked") : $("#IsfreeShipping2").attr("checked", "checked");
        $("#FreightTemplateId").val(freightTemplateId);

        //绑定属性值
        BindItemProperty(productid);
        BindSaleProperty(productid);
        BindImg(img1);
        BindImg(img2);
        BindImg(img3);
        BindImg(img4);
        BindImg(img5);

    }//初始化运费模板
    InitFreighttemplate();

}
//图片box 委托事件
function ImgBoxEvets() {
    $(document).delegate(".leftmove", "click", function () {
        var self = $(this).parents(".productuploadimg");
        var prev = $(this).parents(".productuploadimg").prev();

        if ($(".productuploadimg").index(prev) == 0) {
            self.find(".actionBox a").text("默认");
            prev.find(".actionBox a").text("设为默认");
        }

        self.insertBefore(prev);

    })
    $(document).delegate(".rightmove", "click", function () {
        var self = $(this).parents(".productuploadimg");
        var next = $(this).parents(".productuploadimg").next();

        if ($(".productuploadimg").index(self) == 0) {
            self.find(".actionBox a").text("设为默认");
            next.find(".actionBox a").text("默认");
        }

        self.insertAfter(next);
    })
    $(document).delegate(".photodel", "click", function () {
        $(this).parents(".productuploadimg").remove();

        $(".productuploadimg").first().find(".actionBox a").text("默认");

        viewUpload();
    })
    $(document).delegate(".setdefault", "click", function () {
        var self = $(this).parents(".productuploadimg");
        if ($(".productuploadimg").index(self) > 0) {
            $(this).text("默认");

            var first = $(".productuploadimg").first();
            first.find(".actionBox a").text("设为默认");

            self.insertBefore(first);
        }
    })
}

function BindImg(img) {
    if (img.length > 0) {
        createimgItem(img);
    }
}

//创建图片dom
function createimgItem(item) {
    var localurl = item.substring(".com");
    var html = "<div class=\"fl mr2 productuploadimg\"  >\
                             <div class=\"uploadBox\">\
                                 <img src=\"" + item + "\" style=\"width: 80px;height: 80px; \"/>\
                                 <div class=\"adds\">\
                                     <a class=\"leftmove\" href=\"javascript:;\" title=\"左移\"><</a>\
                                     <a class=\"rightmove\" href=\"javascript:;\" title=\"右移\"><</a>\
                                     <a class=\"photodel\" href=\"javascript:;\" title=\"删除\"><</a>\
                                 </div>\
                             </div>\
                             <div class=\"actionBox\">\
                                <a class=\"actions setdefault\" href=\"javascript:;\">" + ($(".productuploadimg").length == 0 ? "默认" : "设为默认") + "</a>\
                             </div>\
                        </div>";
    $("#imgcontainer").append(html);
}
function viewUpload() {
    if ($(".productuploadimg").length > 5 || $(".productuploadimg").length == 5) {
        $("object").hide();
    } else {
        $("object").show();
    }
}
//绑定商品属性
function BindItemProperty(productid,url) {
    $.ajax({
        url: url,
        type: 'post',
        dataType: 'json',
        data:{id:productid},
        success: function (data) {
            console.log(data);
            if (data != null) {
                data.forEach(function (item) {
                    var id='';
                    var namearr=(item.attribute_name).split(',');
                    for(var i=0; i<namearr.length; i++){
                        id += (namearr[i].split(':')[1]).split('_')[0]+'_';
                    }
                    id = id.substr(0,id.length-1);
                    $("#skuid" +id).val(item.id)
                    $("#price" + id).val(item.price);
                    $("#pointPrice" + id).val(item.point_score);
                    $("#num" + id).val(item.store);
                    $("#code" + id).val(item.goods_code);
                    $("#bar" + id).val(item.bar_code);
                    /*if (item.VId = 0) {
                        $("#" + item.PId).append("<option value='" + item.PropValue + "' id='" + item.VId + "' isparent='False'></option>");
                    }
*/
                });
            }
        }
    });

}
//绑定规格属性
function BindSaleProperty(productid) {
    $.ajax({
        url: '/ProductInfo/GetProductSKus/' + productid,
        type: 'post',
        dataType: 'json',
        success: function (data) {

            if (data != null) {
                data.forEach(function (item) {
                    item.ProductSKU_Propertys.forEach(function (sub) {
                        $("input[data-vid='" + sub.VId + "']").attr('checked', true);
                    });
                });
                ChangeSku().Creat_Table();
                //绑定值
                data.forEach(function (item) {
                    var tempId = "";
                    if (item.SkuId.indexOf('_') > 0) {
                        tempId = '_' + item.SkuId;
                    }
                    else {
                        tempId = item.SkuId;
                    }
                    var id = tempId.replace('_' + productid + '_', '');
                    $("#price" + id).val(item.SalePrice);
                    $("#proxyprice" + id).val(item.SupplyPrice);
                    $("#num" + id).val(item.Stock);
                    $("#code" + id).val(item.Code);
                    $("#bar" + id).val(item.Bar);
                    ChangeSkuValues(id);
                });
            }
        }
    });
}

function setDisableSwitch() {
    $('#mySwitch').empty();
    $('#mySwitch').append('<input type="checkbox" id="mySwitchValue" disabled />');
    /*    $('#mySwitch').bootstrapSwitch();
        $('#mySwitch').bootstrapSwitch('setState', false);*/
    $("#ThirdCommission,#SecondCommission,#FirstCommission").removeAttr("disabled");
    $("#hIsSetCommission").val("0");
}

function setUnDisableSwitch() {
    $('#mySwitch').empty();
    $('#mySwitch').append('<input type="checkbox" id="mySwitchValue" />');
    /*   $('#mySwitch').bootstrapSwitch();
       $('#mySwitch').bootstrapSwitch('setActive', true);*/
    var hIsSetCommission = $("#hIsSetCommission").val();
    var isOpen = hIsSetCommission == '1';
    //   $('#mySwitch').bootstrapSwitch('setState', isOpen);
    if (isOpen) {
        $("#ThirdCommission,#SecondCommission,#FirstCommission").attr("disabled", true);
    } else {
        $("#ThirdCommission,#SecondCommission,#FirstCommission").removeAttr("disabled");
    }
}

function FenYongSwitchSet() {
    var setcategory = $(".setcategory");
    if (setcategory.length <= 0) {
        setDisableSwitch();
    } else {
        if (setcategory.length == 1) {
            setUnDisableSwitch();
        } else if (setcategory.length > 1) {
            var isSingle = true;
            var pid = 0;
            $(".setcategory").each(function (n, i) {
                var cid = $(this).data("cid");
                $.post("/ProductInfo/CategoryInfo", { TypeId: cid }, function (json) {
                    var tempid = json.ParentCategoryId == 0 ? cid : json.ParentCategoryId;
                    if (isSingle) {
                        if (pid == 0) {
                            pid = tempid;
                        }
                        if (pid == tempid) {
                            isSingle = true;
                            setUnDisableSwitch();
                        } else {
                            isSingle = false;
                            setDisableSwitch();
                        }
                    }

                });
            });
        }
        //$('#mySwitch').bootstrapSwitch('setState', false);
    }
}

//分佣设置
function FenYongSet() {
    var hIsSetCommission = $("#hIsSetCommission").val();
    var isOpen = hIsSetCommission == '1';
    $('#mySwitch').bootstrapSwitch('setState', isOpen);
    if (isOpen) {
        $("#ThirdCommission,#SecondCommission,#FirstCommission").attr("disabled", true);
    } else {
        $("#ThirdCommission,#SecondCommission,#FirstCommission").removeAttr("disabled");
        FenYongSwitchSet();
    }

    $('#mySwitch').on('switch-change', function (e, data) {
        if (data.value) {
            $("#ThirdCommission,#SecondCommission,#FirstCommission").attr("disabled", true);
            setComission();//设定值
        } else {
            $("#ThirdCommission,#SecondCommission,#FirstCommission").removeAttr("disabled");
            $("#ThirdCommission,#SecondCommission,#FirstCommission").val("0");
        }
        $("#hIsSetCommission").val(data.value ? "1" : "0");
    });
}

function GetItemProperty() {
    var list = [];
    $("datalist").each(function () {
        var $this = $(this);
        var value = "";
        var vid = "0";
        if (typeof ($this.attr('value')) != "undefined") {
            value = $this.attr('value');
        }
        else {
            value = $this.prev("input").val();
        }


        if (typeof ($this.attr('vid')) != "undefined") {
            vid = $this.attr('vid');
        }
        list.push({ pid: $this.attr("data-pid"), Name: $this.attr("data-title"), VId: vid, PropValue: value })
    });
    return JSON.stringify(list);
}
var salelist = [];
var minPrice = 0;
var maxPrice = 0;
var supplyPrice = 0;

var _totalStockCounts = 0;//总库存

var maxIntValue = 2147483647; //32位整型最大值

//获取SKU信息
function GetSaleProperty() {
    // debugger
    var result = true;
    var list = [];
    _totalStockCounts = 0;
    $(".tdrow").each(function (index) {

        var $this = $(this);
        var id = $this.attr("id");
        var price = parseFloat($("#price" + id).val());
        var pointPrice = parseFloat($("#pointPrice" + id).val());
        var proxyprice = $("#proxyprice" + id).val() ? parseFloat($("#proxyprice" + id).val()) : "0";
        var num = $("#num" + id).val();
        //验证数据
        /*if (!ValidatePrice(price)) {
            result = false;
        };
        if (!ValidatePrice(proxyprice)) {
            result = false;
        };*/
        if (!ValidateNum(num)) {
            result = false;
        }

        _totalStockCounts += parseInt(num);//总库存

        if (index == 0) {
            minPrice = price;
            maxPrice = price;
        } else {
            if (price < minPrice) {
                minPrice = price;
            }
            if (price > maxPrice) maxPrice = price;
        }

        var img = "";
        if ($(".checkAddimg").length > 0 && $(".checkAddimg").is(':checked')) {
            var imgid = id.split('_')[0];
            if ($("#image" + imgid).length > 0) {
                img = $("#image" + imgid).attr("src");
            }
        }

        supplyPrice = proxyprice;
        var item = {id: $("#skuid" + id).val(), SkuId: $this.attr("data-value"), pointPrice:$("#pointPrice" + id).val(), price: price, num: num, code: $("#code" + id).val(), SupplyPrice: proxyprice, bar: $("#bar" + id).val(), img: img };
        list.push(item);
    });
    if (list.length < 1) {
        if (!$.isEmptyObject($("#MinShowPrice").val())) { //判断是否是没有规格的商品  如果是 直接用销售属性做规格
            var defaultPrice = $("#MinShowPrice").val();

            if (!ValidatePrice(defaultPrice)) {
                result = false;
            }
            var maketprice = $("#MarketPrice").val();
            if (!ValidatePrice(maketprice)) {
                result = false;
            }
            var num = $("#StockCounts").val();

            if (!ValidateNum(num)) {
                result = false;
            }

            _totalStockCounts += parseInt(num);//总库存

            var item = { SkuId: "", price: defaultPrice, pointPrice: '', num: parseInt(num), code: $("#ProductCode").val(), bar: $("#ProductBar").val(), img: "",pointPrice:$("#ProductpointPrice").val() };
            minPrice = parseFloat(defaultPrice);
            //maxPrice如果是没有规格，则等于minPrice
            maxPrice = minPrice;
            //maxPrice = parseFloat(maketprice);
            list.push(item);
            salelist = list;
        }
    } else {
        salelist = list;
    }
    console.log(salelist)

    return result;
}


//获取SKU的Str值
function GetSalePropertyStr() {
    return JSON.stringify(salelist);
}
//验证商品属性的必要项的值
function validateItemProperty() {
    var check = true;
    //验证商品名称必须输入
    var name = $("#ProductName").val();
    if (name == null || name == '') {
        check = false;
        ShowMsg("商品名称不能为空", false);
        return check;
    }
    if (name.lenght > 30) {
        check = false;
        ShowMsg("商品名称最多30个字符", false);
        return check;
    }

    //验证排序
    if (parseInt($("#pid").val())) {
        var displaySequence = parseInt($("#DisplaySequence").val());
        if (!/^\d+?$/.test(displaySequence)) {
            check = false;
            $("#DisplaySequence").focus();
            ShowMsg("排序请填数值！", false);
            return check;
        }

        if (displaySequence.length > 10 || displaySequence > maxIntValue) {
            check = false;
            $("#DisplaySequence").focus();
            ShowMsg("排序请填写有效数值！", false);
            return check;
        }
    }

    //商品图片必须上传
    if (UpLoadField(0) == "") {
        check = false;
        ShowMsg("请上传商品图片", false);
        return check;
    }

    if (!/^\d+$/.test($("#ShowSaleCounts").val())) {
        check = false;
        ShowMsg("基础销量必须是大于0的整数！", false);
        return check;
    }
    $(".ismust[input='text']").each(function () {
        check = false;
        ShowMsg($this.attr("data-title") + "必须选择", false);
        return check;
    });

    $(".ismustinput").each(function () {
        var $this = $(this);
        var tempvalue = $this.val();
        if (tempvalue == '') {
            check = false;
            var msg = $this.attr("pname");
            ShowMsg("商品属性[" + msg + "]必须填写", false);
            return check;
        }
    });

    $(".iteminput").each(function () {
        var $this = $(this);
        var tempvalue = $this.val();
        if (tempvalue.length > 40) {
            check = false;
            var msg = $this.attr("pname");
            ShowMsg(msg + "必须小于40个字符！", false);
            return check;
        }
    });

    if (!check) return check;
    //验证运费模板
    var isfreeShipping = $('input[name="IsfreeShipping"]:checked').val();
    var freightTemplateId = $("#FreightTemplateId").val();
    var flag = isfreeShipping == "ChkisfreeShipping" ? true : false;
    if (!flag && freightTemplateId == "0") {
        ShowMsg("请填写运费模板", false);
        return false;
    }
    //检查规格是否设置好
    check = GetSaleProperty();
    if (salelist.length <= 0) {
        ShowMsg("请设置商品规格信息", false);
        return false;
    }

    var isCheckSaleProperty = true;
    $(".specifications div.relative").each(function (index, element) {
        var checkCount = $(this).find("div input:checkbox:checked").length;
        if (checkCount <= 0) {
            isCheckSaleProperty = false;
        }
    })
    if (!isCheckSaleProperty) {
        ShowMsg("请选择商品规格信息", false);
        return false;
    }

    if (!ValidateWeight($("#CubicMeter"))) {//体积

        return check = false;;
    }
    if (!ValidateWeight($("#FreightWeight"))) {//重量
        return false;
    }

    //检查佣金设置
    var FirstCommission = $("#FirstCommission").val() || 0;//佣金比例
    var SecondCommission = $("#SecondCommission").val() || 0;//上一级佣金比例
    var ThirdCommission = $("#ThirdCommission").val() || 0;//上二级佣金比例
    var IsSetCommission = $("#hIsSetCommission").val() == '1' ? true : false;//是否开启分佣

    FirstCommission = parseFloat(FirstCommission == "" ? "0" : FirstCommission);
    SecondCommission = parseFloat(SecondCommission == "" ? "0" : SecondCommission);
    ThirdCommission = parseFloat(ThirdCommission == "" ? "0" : ThirdCommission);
    if (FirstCommission + SecondCommission + ThirdCommission > 100) {
        check = false;
        ShowMsg("佣金比例相加不能大于100", false);
        return check;
    }
    return check;
}

/*三位小数*/
function ValidateDouble(jobj) {

    if (jobj.val() != null && jobj.val() != "" && !/^[0-9]+\.[0-9]{1,2}$|^[0-9]*$/.test(jobj.val())) {
        ShowMsg("输入正确的数值，若是小数保留两位小数位", false);
        jobj[0].focus();
        return false;
    }
    return true;
}

function ValidateWeight(jobj) {

    if (jobj.val() != null && jobj.val() != "" && !/^[0-9]+\.[0-9]{1,3}$|^[0-9]*$/.test(jobj.val())) {
        ShowMsg("输入正确的数值，若是小数保留三位小数位", false);
        jobj[0].focus();
        return false;
    }
    return true;
}
//批量设置数据
function SetAll() {
    var price = $("#priceSet").val();
    var pointPrice= $("#pointPriceSet").val()
    var proxyprice = $("#proxypriceSet").val();
    var num = $("#numSet").val();
    var code = $("#codeSet").val();
    var bar = $("#barSet").val();
    //验证数据
    if (!ValidatePrice(price)) return;
    //if (!ValidatePrice(proxyprice)) return;
    if (!ValidateNum(num)) return;

    //批量设置
    if (/^\d+(\.\d{1,2})?$/.test(proxyprice)) {
        $(".proxyprice").val(proxyprice);
    }
    $(".saleprice").val(price).trigger('change');
    $(".pointPrice").val(pointPrice);

    $(".salenum").val(num);
    $(".salecode").val(code);
    $(".salebar").val(bar);
}
//验证价格
function ValidatePrice(price) {
    if (!/^\d+(\.\d{1,2})?$/.test(price)) {
        ShowMsg("价格请填数值！", false);
        return false;
    }
    if (price.length > 12) {
        ShowMsg("价格请填有效数值！", false);
        return false;
    }
    return true;
}
//验证库存
function ValidateNum(num) {
    if (!/^\d+?$/.test(num)) {
        ShowMsg("库存请填数值！", false);
        return false;
    }
    if (num.length > 10 || num > maxIntValue) {
        ShowMsg("库存请填写有效数值！", false);
        return false;
    }
    return true;
}

//SKU的记录值
var skuValues = [];
//保存记录
var secound = 0;
function ChangeSkuValues(id, type) {
    var inputObj = $("#price" + id);
    if (inputObj == undefined || inputObj.length == 0) {
        inputObj = $("[data-id='" + id + "']:first");
        secound++;
    }
    var item = {
        proxyPrice: $("#proxyprice" + id).val() ? $("#proxyprice" + id).val() : "0",
        price: inputObj.val(), num: $("#num" + id).val(), code: $("#code" + id).val(), bar: $("#bar" + id).val(), pointPrice: $("#pointPrice" + id).val()
    };
    var isExist = false;
    skuValues.forEach(function (data) {
        if (data.id == id) {
            data.item = item;
            isExist = true;
        }
    });
    if (!isExist) {
        skuValues.push({ id: id, item: item });
    }

    //
    if (type == undefined || secound == 0) {//商家修改会员价格才会影响到规格的价格
        setTimeout(function () {
            initCacheMemberPrice(id);
            secound++;
        }, 500)
    } else {
        resetCacheMemberPrice(id);
    }
}

//重置会员价，让会员=默认价
function resetCacheMemberPrice(id) {
    var inputObj = $("#price" + id);
    if (inputObj == undefined || inputObj.length == 0)
        inputObj = $("[data-id='" + id + "']:first");
    if (cacheMemberGradeList.length > 0 && cacheMemberPrice.length > 0) {
        $.each(cacheMemberPrice, function (idx, item) {
            if (item.memberprices.SkuId == id) {
                //
                var discount = 100;
                $.each(cacheMemberGradeList, function (idxgrame, itemgrade) {
                    if (itemgrade.id == item.memberprices.GradeId) {
                        discount = itemgrade.discount;
                    }
                });
                //计算默认会员价
                var default_price = parseFloat(parseFloat(inputObj.val()) * discount / 100).toFixed(2)
                var key = item.skuid;
                var itemdata = {
                    SkuId: item.memberprices.SkuId, GradeId: item.memberprices.GradeId,
                    MemberSalePrice: default_price,
                    DefaultPrice: default_price,
                }
                createData(key, itemdata)
            }
        });
    }
    console.log('\r\n--------------resetCacheMemberPrice(' + id + ')' + JSON.stringify(cacheMemberPrice));
}
function initCacheMemberPrice(id) {
    var inputObj = $("#price" + id);
    if (inputObj == undefined || inputObj.length == 0)
        inputObj = $("[data-id='" + id + "']:first");

    if (cacheMemberGradeList.length > 0 && cacheMemberPrice.length > 0) {
        $.each(cacheMemberPrice, function (idx, item) {
            if (item.memberprices.SkuId == id) {
                //
                var discount = 100;
                $.each(cacheMemberGradeList, function (idxgrame, itemgrade) {
                    if (itemgrade.id == item.memberprices.GradeId) {
                        discount = itemgrade.discount;
                    }
                });
                //计算默认会员价
                var default_price = parseFloat(parseFloat(inputObj.val()) * discount / 100).toFixed(2)
                var key = item.skuid;
                var itemdata = {
                    SkuId: item.memberprices.SkuId, GradeId: item.memberprices.GradeId,
                    MemberSalePrice: item.memberprices.MemberSalePrice,
                    DefaultPrice: default_price,
                }
                createData(key, itemdata)
            }
        });
    }
    setTimeout(function () { console.log('\r\n--------------,initCacheMemberPrice(' + id + ')' + JSON.stringify(cacheMemberPrice)); }, 1000);
}


//重新赋值
function SetValue() {
    skuValues.forEach(function (item) {
        $("#price" + item.id).val(item.item.price);
        $("#pointPrice" + item.id).val(item.item.pointPrice);
        $("#num" + item.id).val(item.item.num);
        $("#code" + item.id).val(item.item.code);
        $("#bar" + item.id).val(item.item.bar);
        $("#proxyprice" + item.id).val(item.item.proxyPrice);
    });
}

//SKU选择的改变事件
function ChangeSku() {
    $("#createTable").empty();
    var step = {
        //SKU信息组合
        Creat_Table: function (productid,url) {
            step.hebingFunction();
            var SKUObj = $(".PId_Title");
            //var skuCount = SKUObj.length;//
            var arrayTile = new Array();　//标题组数
            var arrayTitleValue = new Array();//标题对应的PID
            var arrayInfor = new Array();　//盛放每组选中的CheckBox值的对象
            var arrayColumn = new Array();//指定列，用来合并哪些列
            var bCheck = true;//是否全选
            var columnIndex = 0;
            //300036174_2345:3000122464   pid_propertyName_vid
            $.each(SKUObj, function (i, item) {
                arrayColumn.push(columnIndex);
                columnIndex++;
                arrayTile.push(SKUObj.eq(i).find(".propertyName").val());
                arrayTitleValue.push(SKUObj.eq(i).attr("data-value"));
                // var itemName = "PId_Item" + i;
                // var itemName = "propertyValWrap"
                var $propertyValWrap = $(item).parent().find('.propertyValWrap');
                var $txtDiv = $propertyValWrap.find('.txtDiv');
                //选中的CHeckBox取值
                var order = new Array();
                var orderName = new Array();
                /*  $("." + itemName + " input[type=checkbox]:checked").each(function () {
                      //alert($(this).attr("data-vname"));
                      order.push($(this).val() + '_' + $(this).attr("data-vname"));

                  });*/
                $txtDiv.each(function () {
                    //alert($(this).attr("data-vname"));
                    order.push($(this).attr('data-pName') + '_' + $(this).attr("data-pValue"));

                })
                arrayInfor.push(order);
                if (order.join() == "") {
                    bCheck = false;
                }
            });

            //开始创建Table表
            if (bCheck == true) {

                var RowsCount = 0;
                $("#createTable").html("");
                var table = $("<table id=\"process\" class=\"table table-border table-bordered table-hover table-bg mt-20\"></table>");
                table.appendTo($("#createTable"));
                var thead = $("<thead></thead>");
                thead.appendTo(table);
                var trHead = $("<tr></tr>");
                trHead.appendTo(thead);
                //创建表头
                $.each(arrayTile, function (index, item) {
                    var td = $("<td class='width90'>" + item + "</td>");
                    td.appendTo(trHead);
                });
                var itemColumHead = $("<td  class='width140'><span>*</span>价格(元)</td><td>积分价</td><td class='width80'><span>*</span>库存(件)</td><td class='width80'>编码</td><td class='width80'>条形码</td> ");

                /* if (SupplierId != "0") {
                     itemColumHead = $("<td  class='width140'><span>*</span>价格(元)</td><td class='width150 hide'><span>*</span>供货价(元)</td><td class='width80'><span>*</span>库存(件)</td><td class='width80'>编码</td><td class='width80'>条形码</td> ");
                 }*/
                itemColumHead.appendTo(trHead);
                //var itemColumHead2 = $("<td >商家编码</td><td >商品条形码</td>");
                //itemColumHead2.appendTo(trHead);

                var tbody = $("<tbody></tbody>");
                tbody.appendTo(table);

                //商品销售属性修改
                if(arrayInfor.length>0){
                    $('.priceShow').remove();
                }else{
                    $('#productSale').append($priceShow)
                }
                ////生成组合
                var zuheDate = step.doExchange(arrayInfor);
                if (zuheDate && zuheDate.length > 0) {
                    //创建行
                    //console.log(zuheDate);

                    $.each(zuheDate, function (index, item) {
                        var td_array = item.split(",");
                        var tr = $("<tr></tr>");
                        tr.appendTo(tbody);
                        var rowid = '';
                        $.each(td_array, function (i, values) {
                            var tempArr = values.split('_');
                            var td = $("<td>" + tempArr[2] + "</td>");
                            var tempArr1 = tempArr[1].split(':');
                            rowid += tempArr1[1] + '_';
                            td.appendTo(tr);
                        });
                        rowid = rowid.substr(0, rowid.length - 1);
                        var td1 = $("<td id='" + rowid + "' data-value='" + item + "' data-skuid='0' data- class='tdrow'><input onkeyup=\"clearNoNum(this)\" onKeyPress=\"return keyNumAll(event);\" id=\"price" + rowid + "\" class=\"saleprice width70\" type=\"text\" onchange=\"ChangeSkuValues('" + rowid + "',1)\"></td>");
                        td1.appendTo(tr);
                        /*if (SupplierId != "0") {
                            var td11 = $("<td id='" + rowid + "' data-value=" + item + " class='hide'><input id=\"proxyprice" + rowid + "\" value=\"0\" class=\"proxyprice width80\" type=\"text\" onchange=\"ChangeSkuValues('" + rowid + "')\"></td>");
                            td11.appendTo(tr);
                        }*/
                        var td5 = $("<td id='" + rowid + "' data-value='" + item + "' data-skuid='0' data- class=''><input   id=\"pointPrice" + rowid + "\" class=\"pointPrice width70\" type=\"text\" </td>");
                        td5.appendTo(tr);

                        var td2 = $("<td ><input type='hidden' id=\"skuid" + rowid + "\"><input onkeyup=\"clearNoNum(this)\" onKeyPress=\"return keyNumAll(event);\" id=\"num" + rowid + "\" class=\"salenum width60\" type=\"text\"onchange=\"ChangeSkuValues('" + rowid + "')\"></td>");
                        td2.appendTo(tr);
                        var td3 = $("<td ><input id=\"code" + rowid + "\" class=\"salecode w100 \" style=\"text-align:left\" type=\"text\" onchange=\"ChangeSkuValues('" + rowid + "')\"></td>");
                        td3.appendTo(tr);
                        var td4 = $("<td ><input id=\"bar" + rowid + "\" class=\"salebar w100\" style=\"text-align:left\"  type=\"text\" onchange=\"ChangeSkuValues('" + rowid + "')\"></td>");
                        td4.appendTo(tr);

                    });
                }
                arrayInforList = arrayInfor;
                //结束创建Table表
                arrayColumn.pop();//删除数组中最后一项
                //合并单元格
                $(table).mergeCell({
                    // 目前只有cols这么一个配置项, 用数组表示列的索引,从0开始
                    cols: arrayColumn
                });
                if(productid){//id存在  说明是修改
                    BindItemProperty(productid,url)
                }

            }
        },//合并行
        hebingFunction: function () {
            $.fn.mergeCell = function (options) {
                return this.each(function () {
                    var cols = options.cols;
                    for (var i = cols.length - 1; cols[i] != undefined; i--) {
                        // fixbug console调试
                        // console.debug(cols[i]);
                        mergeCell($(this), cols[i]);
                    }
                    dispose($(this));
                });
            };
            // 如果对javascript的closure和scope概念比较清楚, 这是个插件内部使用的private方法
            function mergeCell($table, colIndex) {
                $table.data('col-content', ''); // 存放单元格内容
                $table.data('col-rowspan', 1); // 存放计算的rowspan值 默认为1
                $table.data('col-td', $()); // 存放发现的第一个与前一行比较结果不同td(jQuery封装过的), 默认一个"空"的jquery对象
                $table.data('trNum', $('tbody tr', $table).length); // 要处理表格的总行数, 用于最后一行做特殊处理时进行判断之用
                // 我们对每一行数据进行"扫面"处理 关键是定位col-td, 和其对应的rowspan
                $('tbody tr', $table).each(function (index) {
                    // td:eq中的colIndex即列索引
                    var $td = $('td:eq(' + colIndex + ')', this);
                    // 取出单元格的当前内容
                    var currentContent = $td.html();
                    // 第一次时走此分支
                    if ($table.data('col-content') == '') {
                        $table.data('col-content', currentContent);
                        $table.data('col-td', $td);
                    } else {
                        // 上一行与当前行内容相同
                        if ($table.data('col-content') == currentContent) {
                            // 上一行与当前行内容相同则col-rowspan累加, 保存新值
                            var rowspan = $table.data('col-rowspan') + 1;
                            $table.data('col-rowspan', rowspan);
                            // 值得注意的是 如果用了$td.remove()就会对其他列的处理造成影响
                            $td.hide();
                            // 最后一行的情况比较特殊一点
                            // 比如最后2行 td中的内容是一样的, 那么到最后一行就应该把此时的col-td里保存的td设置rowspan
                            if (++index == $table.data('trNum'))
                                $table.data('col-td').attr('rowspan', $table.data('col-rowspan'));
                        } else { // 上一行与当前行内容不同
                            // col-rowspan默认为1, 如果统计出的col-rowspan没有变化, 不处理
                            if ($table.data('col-rowspan') != 1) {
                                $table.data('col-td').attr('rowspan', $table.data('col-rowspan'));
                            }
                            // 保存第一次出现不同内容的td, 和其内容, 重置col-rowspan
                            $table.data('col-td', $td);
                            $table.data('col-content', $td.html());
                            $table.data('col-rowspan', 1);
                        }
                    }
                });
            }
            // 同样是个private函数 清理内存之用
            function dispose($table) {
                $table.removeData();
            }
        },
        //组合数组
        doExchange: function (doubleArrays) {
            var len = doubleArrays.length;
            if (len >= 2) {
                var arr1 = doubleArrays[0];
                var arr2 = doubleArrays[1];
                var len1 = doubleArrays[0].length;
                var len2 = doubleArrays[1].length;
                var newlen = len1 * len2;
                var temp = new Array(newlen);
                var index = 0;
                for (var i = 0; i < len1; i++) {
                    for (var j = 0; j < len2; j++) {
                        temp[index] = arr1[i] + "," + arr2[j];
                        index++;
                    }
                }
                var newArray = new Array(len - 1);
                newArray[0] = temp;
                if (len > 2) {
                    var _count = 1;
                    for (var i = 2; i < len; i++) {
                        newArray[_count] = doubleArrays[i];
                        _count++;
                    }
                }
                return step.doExchange(newArray);
            }
            else {
                return doubleArrays[0];
            }
        }
    }
    return step;

}

function keyNumAll(evt) {
    //兼容IE和Firefox获得keyBoardEvent对象
    evt = (evt) ? evt : ((window.event) ? window.event : "");
    var key = evt.keyCode ? evt.keyCode : evt.which;//兼容IE和Firefox获得keyBoardEvent对象的键值
    if ((key >= 48 && key <= 57) || key == 46) {
        return key;
    }
    return "0";
}

function addAttr(modelId) {

    var cid = $("#CategoryId").attr("title");
    var IsMust = $("#addAttrMust").prop("checked");
    var pname = $("#addAttrName").val().trim();
    var values = $("#values").val().trim();
    if (pname.length < 2 || pname.length > 50) {
        HiTipsShow("属性名称不能为空，2-50个字符！", "fail");
        return;
    }
    if (values.length <= 0) {
        HiTipsShow("属性值不能为空！", "fail");
        return;
    }

    var data = { cid: cid, name: pname, type: 3, IsMust: IsMust, values: values };
    if (setpid > 0) {
        data.pid = setpid;
    }

    setpid = 0;
    console.log(data);
    $.post("/ProductCats/SetProductPropertyAndInitValues", data, function (result) {
        if (result.Status) {

            $(modelId).modal('hide');
            $("#addAttrMust").prop("checked", false);
            $("#addAttrName").val("");//清空值

            var html = "";

            html += "<div class='col-xs-10 pl0 pr0'><label class='col-xs-3 pl0 pr0 pt7'>" + pname;
            if (IsMust) {
                html += '<em style="color:#ff0000;">*</em>';
            }
            html += "</label>"
            html += "<div class='col-xs-8 pr0'>"
            html += '<input type="text" pname="' + pname + '"  list="' + result.Data.PId + '"  id="pro_' + result.Data.PId + '" placeholder="直接输入属性值" class="form-control iteminput';
            if (IsMust) {
                html += ' ismustinput';
            }
            html += ' "/>';
            html += '<datalist data-pid="' + result.Data.PId + '" data-title="' + pname + '" id="' + result.Data.PId + '">';
            $(result.Data.ProductCatPropertyValues).each(function (index, element) {
                html += ' <option value="' + element.PropValue + '" id="' + element.VId + '" isparent="False"></option>'
            });
            html += '</datalist>';
            html += "</div>";
            html += "</div>";
            if (result.Data.MerchantId > 0) {
                html += "<div class='col-xs-2 pr0 pl0 pt10 propertyOperation' style='margin-left:-10px; display:none;'> <i class='iconfont icon-saas-67 mr5 edi' data-pid='" + result.Data.PId + "'></i><i class='iconfont icon-yunfenxiaoapp- del' data-pid='" + result.Data.PId + "'></i>";
            }
            html += "</div>";

            if (data.pid > 0) {
                $("#pro_" + data.pid).parent().parent().parent().html(html);
            }
            else {
                html = "<div class='col-xs-6 mb10'>" + html + "</div>";
                $("#AddBtnId").before(html);
            }
            $("#btnEditProperty").show();
        }
        else {
            HiTipsShow(result.Msg, "fail");
        }

    });

}

function ShowMsg(msg,flag) {
    layer.msg( '<p>'+msg+'!</p>',{
        time: 3000, //20s后自动关闭
        skin: 'layui-layer-error', //样式类名
    });
}

//校验规格名称及规格值
function validSku(_this) {
    var $this = $(_this),
        falg = true,
        $propertyName =  $this.parents('.propertyWrap').find('.propertyName'),
        $thisVal =  $this.parents('.propertyWrap').find('.propertyVal');
    //非空校验
    if($propertyName.val()==''){
        ShowMsg('请输入规格名称');
        falg = false;
        return falg;
    }else if($thisVal.val() ==""){
        ShowMsg('请输入规格值');
        falg = false;
        return falg;
    }
    //规格名称校验
    var  skuName = ($this.parents('.propertyWrap').siblings()).find('.PId_Title');
    $.each(skuName, function (i, item) {
        var itemName =   skuName.eq(i).find(".propertyName").val();
        if($propertyName.val() ==itemName){
            ShowMsg('规格名称不能相同');
            falg = false;
            return falg;
        }
    });
    var $skuVal =$this.parents('.propertyValWrap').find('.txtDiv')
    $.each($skuVal, function (j, ele) {
        var skuVal = $(ele).attr("data-pvalue");
        if($thisVal.val() ==skuVal){
            ShowMsg('规格值不能相同');
            falg = false;
            return falg;
        }
    });
    return falg;
}
//console.log(genID(10),genID(10))
function genID(length){
    return new Date().getTime();
    //  return Number(Math.random().toString().substr(3,length) + Date.now()).toString(36);
}

