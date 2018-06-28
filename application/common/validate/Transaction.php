<?php
namespace app\common\validate;

use think\Validate;

class Transaction extends Validate
{
    protected $rule = [
        "rate|费率" => "require",

    ];
}
