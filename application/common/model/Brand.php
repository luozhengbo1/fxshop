<?php
namespace app\common\model;

use think\Model;

class Brand extends Model
{
    // 指定表名,不含前缀
    protected $name = 'brand';
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
}
