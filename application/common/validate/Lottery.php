<?php
namespace app\common\validate;

use think\Validate;

class Lottery extends Validate
{
    protected $rule = [
        "name|奖券名称" => "require",
        "expire_start_date|奖券有效期开始时间" => "require",
        "expire_end_date|奖券有效期结束时间" => "require",
        "type|奖券类型" => "require",
        "number|奖券数量" => "require",
        "goods_id|关联商品id" => "require",
    ];
}
