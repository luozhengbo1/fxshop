<?php
namespace app\common\validate;

use think\Validate;

class CustomerGradeDesc extends Validate
{
    protected $rule = [
        "detail|会员等级规则说明" => "require",
    ];
}
