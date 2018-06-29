<?php
namespace app\common\validate;

use think\Validate;

class Activity extends Validate
{
    protected $rule = [
        "name|活动名称" => "require",
        "main_pic|活动主图" => "require",
        "start_date|活动开始时间" => "require",
        "end_date|活动结束时间" => "require",
    ];
}
