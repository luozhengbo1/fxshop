<?php
namespace app\common\validate;

use think\Validate;

class Lottery extends Validate
{
    protected $rule = [
        "name|奖券名称" => "require",
        "type|奖券类型" => "require",
        "number|奖券数量" => "require",
    ];
}
