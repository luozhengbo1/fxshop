<?php
namespace app\common\validate;

use think\Validate;

class Brand extends Validate
{
    protected $rule = [
        "name|品牌名称" => "require",
        "pic|品牌图片" => "require",
    ];
}
