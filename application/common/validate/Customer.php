<?php
namespace app\common\validate;

use think\Validate;

class Customer extends Validate
{
    protected $rule = [
        "username|用户名" => "require|unique:customer",
        "sex|性别" => "require",
        "nickname|昵称" => "require|unique:customer",
        "birthday|生日" => "require",
        "mobile|手机号" => "require|number|length:11|unique:customer",
        "email|邮箱" => "require|email|unique:customer",
    ];
}
