<?php
namespace app\common\model;

use think\Model;

class SildeShow extends Model
{
    // 指定表名,不含前缀
    protected $name = 'silde_show';
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';
}
