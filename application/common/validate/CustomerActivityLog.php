<?php
namespace app\common\validate;

use think\Validate;

class CustomerActivityLog extends Validate
{
    protected $rule = [
        "activity_id|活动名称" => "require",
        "activity_detail|内容" => "require",
        "uid|活动参与用户" => "require",
    ];
}
