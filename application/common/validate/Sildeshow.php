<?php
namespace app\common\validate;

use think\Validate;

class Sildeshow extends Validate
{
    protected $rule = [
        "status|状态" => "require",
        "url|跳转链接" => "require",
        "name|产品名称" => "require",
        "pic|图片" => "require",
    ];
}
