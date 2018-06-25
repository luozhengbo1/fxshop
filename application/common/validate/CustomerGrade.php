<?php
namespace app\common\validate;

use think\Validate;

class CustomerGrade extends Validate
{
    protected $rule = [
        "name|等级名称" => "require|unique:customer_grade",
        "score_start|起始积分" => "require|number",
        "score_end|结束积分" => "require|number",
        "all|权益列表" => "require",
    ];
}
