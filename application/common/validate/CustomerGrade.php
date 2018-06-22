<?php
namespace app\common\validate;

use think\Validate;

class CustomerGrade extends Validate
{
    protected $rule = [
        "name|会员等级" => "require|unique:customer_grade",
        "score_end|起始积分" => "require|number",
        "score_start|结束积分" => "require|number",
        "all|权益列表" => "require",
    ];
}
