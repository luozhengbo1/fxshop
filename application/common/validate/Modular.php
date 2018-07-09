<?php
namespace app\common\validate;

use think\Validate;

class Modular extends Validate
{
    protected $rule = [
        "pic|图片" => "require",
        "title|名称" => "require",
        "status|状态" => "require",
        "orderby|排序值" => "require",
        "url|链接" => "require",
    ];
}
