<?php
namespace app\common\validate;

use think\Validate;

class GoodsComment extends Validate
{
    protected $rule = [
        "goods_id|" => "require",
    ];
}
