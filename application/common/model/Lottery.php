<?php
namespace app\common\model;

use think\Model;

class Lottery extends Model
{
    // 指定表名,不含前缀
    protected $name = 'lottery';
    // 开启自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

//    protected function getTypeAttr($value)
//    {
//        $status = [1=>'抵扣券',2=>'优惠券',3=>'代金券',2=>'积分抵现金'];
//        return $status[$value];
//    }
    protected function getGrantStartDateAttr($value)
    {
        return  $value?date('Y-m-d H:i:s',$value):0;
    }
    protected function getGrantEndDateAttr($value)
    {
        return  $value?date('Y-m-d H:i:s',$value):0;
    }
    protected function getExpireStartDateAttr($value)
    {
        return  $value?date('Y-m-d H:i:s',$value):0;
    }
    protected function getExpireEndDateAttr($value)
    {
        return  $value?date('Y-m-d H:i:s',$value):0;
    }
}
