<?php
namespace app\common\model;

use think\Model;

class CustomerTask extends Model
{
    // 指定表名,不含前缀
    protected $name = 'customer_task';
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
    //时间戳类型转换
    protected $type=[
        'create_time'=>'timestamp',
        'update_time'=>'timestamp',
        'start_date'=>'timestamp',
        'end_date'=>'timestamp'
    ];
}
