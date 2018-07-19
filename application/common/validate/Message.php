<?php

namespace app\common\validate;

use think\Validate;

class Message extends Validate
{
    protected $rule = [
        "title|主题" => "require",
        "detail|详情" => "require",
        "type|类型" => 'require'
    ];
}
