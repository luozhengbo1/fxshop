<?php
namespace app\common\validate;

use think\Validate;

class GoodsClass extends Validate
{
    protected $rule = [
        "name|分类名称" => "require|unique",
        "user_id|所属商户" => "require",
    ];
}
