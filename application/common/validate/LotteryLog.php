<?php
namespace app\common\validate;

use think\Validate;

class LotteryLog extends Validate
{
    protected $rule = [
        "uid|用户名称" => "require",
        "addtime|领取时间" => "require",
        "lottery_id|奖券id" => "require",
        "status|状态" => "require",
        "updatetime|使用时间" => "require",
    ];
}
