<<<<<<< HEAD
## tpadmin 是什么？
tpadmin 是一个基于 ThinkPHP5.0 正式版和 Hui.admin v2.5 的管理后台，简化管理后台的开发流程，简化代码的编写，提高代码复用率，同时集成完整的权限管理和其他管理后台中常用的功能

## 官方文档
[http://doc.tpadmin.yuan1994.com](http://doc.tpadmin.yuan1994.com)

## 在线体验
[http://tpadmin.yuan1994.com](http://tpadmin.yuan1994.com) 

默认管理员帐号：admin，默认管理员密码：123456

tpadmin 官方交流群：518162472

## 仓库地址
[https://github.com/yuan1994/tpadmin](https://github.com/yuan1994/tpadmin)

## 使用方法

### composer安装：
composer create-project yuan1994/tpadmin tpadmin  --prefer-dist

### git克隆：
git clone https://github.com/yuan1994/tpadmin
### 直接下载：
https://github.com/yuan1994/tpadmin/archive/master.zip
> 框架的依赖需要通过 composer 下载，请在框架根目录执行 composer update ，已确保依赖的类库能下载下来

## 部署
参考 [ThinkPHP5 - 部署](http://www.kancloud.cn/manual/thinkphp5/129745)

部署成功后，建立新建数据库 tpadmin，导入项目根目录的 tpadmin.sql 文件，默认管理员帐号：admin，默认管理员密码：123456，然后访问 http://your-tpadmin-root-domain/admin（都已开启伪静态模式）

## 特性
### 后端
* 模板、控制器、模型、验证器代码、数据表自动生成
* 根据数据库字段生成相应 CURD 模型
* 支持终端生成代码、查看数据库信息，并且支持浏览器模拟终端功能
* RBAC 权限管理
* 完美支持多级控制器及多级控制器权限管理
* 支持前置方法 before 和 黑名单方法拦截器
* 支持模板主题
* 节点自动扫描与添加
* 七牛上传及与百度编辑器 (Ueditor) 结合使用
* Excel 一键导出和一键导入
* 邮件发送( Fsock 和 phpMailer 两种驱动)
* ID 加密解密
* 网站操作日志记录（自动水平分表）
* 图片上传管理及回调

### 前端
* 表单校验
* 无限层级菜单，完美与后端多级控制器兼容
* 自动面包屑导航
* 基于 layer 的丰富弹层
* 支持 H5 + iframe 自动切换的无刷新上传
* ajax 请求处理封装，直接后台返回数据控制前端页面处理
* 多窗口办公
* 随机字符串生成
* 表格溢出处理
* 图片预览
* 二维码生成

### 终端模式
* 支持终端生成代码
* 支持终端查看数据库详情

## 鸣谢：
本平台使用了如下框架或插件、源码
* ThinkPHP 5.0.4 正式版
* Hui.admin v2.5 
* layer
* jQuery Validform
* 七牛
* ...

>非常感谢这些框架、插件的支持

## License
Apache 2.0
=======
# 泛亚新商城

#### 项目介绍
{**以下是码云平台说明，您可以替换为您的项目简介**
码云是开源中国推出的基于 Git 的代码托管平台（同时支持 SVN）。专为开发者提供稳定、高效、安全的云端软件开发协作平台
无论是个人、团队、或是企业，都能够用码云实现代码托管、项目管理、协作开发。企业项目请看 [https://gitee.com/enterprises](https://gitee.com/enterprises)}

#### 软件架构
软件架构说明


#### 安装教程

1. xxxx
2. xxxx
3. xxxx

#### 使用说明

1. xxxx
2. xxxx
3. xxxx

#### 参与贡献

1. Fork 本项目
2. 新建 Feat_xxx 分支
3. 提交代码
4. 新建 Pull Request


#### 码云特技

1. 使用 Readme\_XXX.md 来支持不同的语言，例如 Readme\_en.md, Readme\_zh.md
2. 码云官方博客 [blog.gitee.com](https://blog.gitee.com)
3. 你可以 [https://gitee.com/explore](https://gitee.com/explore) 这个地址来了解码云上的优秀开源项目
4. [GVP](https://gitee.com/gvp) 全称是码云最有价值开源项目，是码云综合评定出的优秀开源项目
5. 码云官方提供的使用手册 [http://git.mydoc.io/](http://git.mydoc.io/)
6. 码云封面人物是一档用来展示码云会员风采的栏目 [https://gitee.com/gitee-stars/](https://gitee.com/gitee-stars/)
>>>>>>> 8403f5ccabe9814ad28548b38a4d93096d379b80
