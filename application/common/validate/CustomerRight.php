<?php
namespace app\common\validate;

use think\Validate;

class CustomerRight extends Validate
{
    protected $rule = [
        "name|权益名称" => "require",
        "pic|权益图" => "require",
        "desc|权益描述" => "require",
        "instruction|权益说明" => "require",
    ];
}
