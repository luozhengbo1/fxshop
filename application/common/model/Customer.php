<?php
namespace app\common\model;

use think\Model;

class Customer extends Model
{
    // 指定表名,不含前缀
    protected $name = 'customer';
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
    //定义时间戳字段名
    protected $createTime='create_time';
    protected $updateTime='update_time';
    //时间戳输出类型转换
    protected $type=[
        'create_time'=>'timestamp',
        'update_time'=>'timestamp'
    ];
}
