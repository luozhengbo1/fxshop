<?php
namespace app\common\validate;

use think\Validate;

class SildeShow extends Validate
{
    protected $rule = [
        "status|状态" => "require",
        "url|跳转链接" => "require|url",
        "name|产品名称" => "require|max:50",
        "pic|图片" => "require|max:255",
    ];
}
