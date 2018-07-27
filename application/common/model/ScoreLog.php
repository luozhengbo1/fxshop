<?php

namespace app\common\model;

use think\Model;

class ScoreLog extends Model
{
    // 指定表名,不含前缀
    protected $name = 'score_log';
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
    //时间戳字段
    protected $create_time = 'time';
    //时间戳类型转换
    protected $type = [
        'time' => 'timestamp'
    ];
}
