<?php
include_once __DIR__.'/qrcode/phpqrcode.php';
use think\controller;
class qr{

    public $savePath;//保存二维码图片文件夹
    public $logoPath;//logo图路径
    public $filename='';//生成的二维码图片保存路径

    public function __construct($savePath,$logoPath)
    {
        $this->savePath=$savePath;
        $this->logoPath=$logoPath;
    }

    //生成二维码,保存到硬盘中
    public function createQR($text){
       
       if(!is_dir($this->savePath)) mkdir($this->savePath,0777);//创建保存二维码图片文件夹
    	$ecc  = 'H';//二维码容错率
    	$size = 8;//大小
        $margin=1;//外边距,空白区域大小

    	$filename = $this->savePath."/".'qrcode_'.time().'.png';//二维码保存名称
    	QRcode::png($text, $filename, $ecc, $size,$margin);
        $this->filename=$filename;
    	return $filename;
    }
    //在二维码中间添加logo
    public function addLogo(){
        if(!empty($this->filename) && !empty($this->logoPath)){
           //获取二维码图片信息
            $qrInfo=getimagesize($this->filename);
            $qrImg=$this->getImg($qrInfo[2],$this->filename);
           //获取logo图片信息
            $logoInfo=getimagesize($this->logoPath);
            $logoImg=$this->getImg($logoInfo[2],$this->logoPath);
            //计算logo在二维码中位置
            $logo_qr_width = $qrInfo[0] / 3; 
            $scale = $logoInfo[0]/$logo_qr_width; 
            $logo_qr_height = $logoInfo[1]/$scale; 
            $from_width = ($qrInfo[0] - $logo_qr_width) / 2;
            //重新组合图片并调整大小 
            imagecopyresampled($qrImg, $logoImg, $from_width, $from_width, 0, 0, $logo_qr_width,$logo_qr_height, $logoInfo[0], $logoInfo[1]);
             switch ($qrInfo[2]) {//覆盖原二维码
                case 1:
                 return Imagegif($qrImg,$this->filename);
                case 2:
                 return Imagejpeg($qrImg,$this->filename);
                case 3:
                 return ImagePng($qrImg,$this->filename);
            }
            
        }   
    }

    //根据不用图类型使用不同函数加载图片
    protected function getImg($type,$path){
         switch ($type) {
                case 1:
                 return imagecreatefromgif($path);
                case 2:
                 return imagecreatefromjpeg($path);                 
                case 3:
                return imagecreatefrompng($path);
            }
    }

}


//使用生成带logo的二维码
//$obj=new qr();
//$url='http://www.kancloud.cn/wikaiyun/function';//链接生成二维码,手机扫描打开页面[也可以把文字生成二维码图片]
//$imgPath=$obj->createQR($url);
//$obj->addLogo();//调用加入logo
//
//echo '<img src="'.$imgPath.'">';//显示图片演示,手机扫一扫测试