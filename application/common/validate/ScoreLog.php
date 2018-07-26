<?php
namespace app\common\validate;

use think\Validate;

class ScoreLog extends Validate
{
    protected $rule = [
        "uid|用户ID" => "require",
        "source_id|积分来源ID" => "require",
        "source|积分来源类型" => "require",
        "score|增减积分" => "require",
        "time|增减时间" => "require",
    ];
}
