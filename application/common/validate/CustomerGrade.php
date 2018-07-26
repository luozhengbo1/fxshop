<?php
namespace app\common\validate;

use think\Validate;

class CustomerGrade extends Validate
{
    protected $rule = [
        "name|等级名称" => "require|unique:customer_grade",
        "experience_start|起始经验值" => "require|number",
        "experience_end|结束经验值" => "require|number",
        "all|权益列表" => "require",
    ];
}
