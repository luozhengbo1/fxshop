<?php
namespace app\common\validate;

use think\Validate;

class Notice extends Validate
{
    protected $rule = [
        "title|标题" => "require",
        "status|状态" => "require",
        "desc|详情" => "require",
    ];
}
