<?php

namespace app\common\model;

use think\Model;

class CustomerGrade extends Model
{
    // 指定表名,不含前缀
    protected $name = 'customer_grade';
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
    //时间戳字段定义
    protected $updateTime = 'updatetime';
    protected $createTime = 'addtime';
    //时间类型转换
    protected $type = [
        'addtime' => 'timestamp',
        'updatetime' => 'timestamp'
    ];
}
