<?php
namespace app\common\model;

use think\Model;

class GoodsClass extends Model
{
    // 指定表名,不含前缀
    protected $name = 'goods_class';
    
    public function getNameAttr($value)
    {
    	return "┡".str_repeat('->>',substr_count($this->path,',')).$value;
    }
}
