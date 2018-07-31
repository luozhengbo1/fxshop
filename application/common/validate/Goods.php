<?php
namespace app\common\validate;

use think\Validate;

class Goods extends Validate
{
    protected $rule = [
        "name|商品名称" => "require",
        "main_image|商品主图" => "require",
        "original_price|商品原价" => "require",
        "goods_class_id|分类名称" => "require",
        "goods_brand_id|品牌名称" => "require",
        "show_area|显示区域" => "require",
        "detail|商品详情" => "require",
        "goods_weight|重量" => "require",
        "is_real|是否是实物" => "require",
        "return_score|返现积分" => "require",
    ];
}
