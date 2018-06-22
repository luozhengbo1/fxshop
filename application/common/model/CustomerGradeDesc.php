<?php

namespace app\common\model;

use think\Model;

class CustomerGradeDesc extends Model
{
    // 指定表名,不含前缀
    protected $name = 'customer_grade_desc';
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
    //定义时间戳字段
    protected $createTime = 'addtime';
    protected $updateTime = 'updatetime';
    //时间类型转换
    protected $type = [
        'addtime' => 'timestamp',
        'updatetime' => 'timestamp'
    ];
}
