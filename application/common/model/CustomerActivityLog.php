<?php

namespace app\common\model;

use think\Model;

class CustomerActivityLog extends Model
{
    // 指定表名,不含前缀
    protected $name = 'customer_activity_log';
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
    //类型转换
    protected $type = ['create_time' => 'timestamp', 'update_time' => 'timestamp'];
}
