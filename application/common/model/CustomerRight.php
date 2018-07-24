<?php

namespace app\common\model;

use think\Model;

class CustomerRight extends Model
{
    // 指定表名,不含前缀
    protected $name = 'customer_right';
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
    //时间戳字段定义
    protected $updateTime = 'update_time';
    protected $createTime = 'create_time';
    //时间类型转换
    protected $type = [
        'create_time' => 'timestamp',
        'update_time' => 'timestamp'
    ];
}
