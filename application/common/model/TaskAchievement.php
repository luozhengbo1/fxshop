<?php

namespace app\common\model;

use think\Model;

class TaskAchievement extends Model{
    // 指定表名,不含前缀
    protected $name = 'task_achievement';
    //定义时间类型转换
    public $type = [
        'time' => 'timestamp',
        'create_time' => 'timestamp',
        'update_time' => 'timestamp'
    ];
}