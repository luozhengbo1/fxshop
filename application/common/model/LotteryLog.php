<?php
namespace app\common\model;

use think\Model;

class LotteryLog extends Model
{
    // 指定表名,不含前缀
    protected $name = 'lottery_log';

    public function  getAddtimeAttr($value)
    {
        return $value?date('Y-m-d H:i:s',$value):'0';
    }
    public function  getUpdatetimeAttr($value)
    {
        return $value?date('Y-m-d H:i:s',$value):'0';
    }
    
}
