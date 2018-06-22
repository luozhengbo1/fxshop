<?php
namespace app\common\validate;

use think\Validate;

class CustomerTask extends Validate
{
    protected $rule = [
        "main_pic|任务主题图" => "require",
        "name|任务名称" => "require",
        "url|链接" => "require",
        "start_date|任务开始时间" => "require",
        "end_date|任务结束时间" => "require",
        "detail|任务内容" => "require",
        "display|任务展示方式" => "require",
    ];
}
