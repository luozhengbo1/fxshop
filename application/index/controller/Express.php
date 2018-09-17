<?php
/**
 * Created by PhpStorm.
 * User: luozhengbo
 * Date: 2018/9/12
 * Time: 9:11
 */
namespace  app\index\controller;
class Express extends Mustlogin {

    private $expressname =array(); //封装了快递名称

    function __construct(){
        parent::__construct();
        $this->expressname = $this->expressname();
    }

    /*
     * 采集网页内容的方法
     */
    private function getContent($url){
        if(function_exists("file_get_contents")){
            $file_contents = file_get_contents($url);
        }else{
            $ch = curl_init();
            $timeout = 10;
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt ($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
            $file_contents = curl_exec($ch);
            curl_close($ch);
        }
        return $file_contents;
    }
    /*
     * 获取对应名称和对应传值的方法
     */
    private function expressname(){
        $result = $this->getContent("http://www.kuaidi100.com/");
        //爬取快递名称对应的快递代码
        preg_match_all("/data\-code\=\"(?P<name_code>\w+)\"\>(?P<name>.*)\<\/a>/iU",$result,$data);//(?P<name>)正则匹配存储字符
        $name = array();
        foreach($data['name'] as $k=>$v){
            $name[$v] =$data['name_code'][$k];//例：$name[中通]=zhontong
            //echo "[".$v."]=".$name[$v]."<br>";//获取快递编码
        }
        //echo "一次查询"."<br>";
        return $name;
    }

    /*
     * 解析object成数组的方法
     * @param $json 输入的object数组
     * return $data 数组
     */
    private function json_array($json){
        if($json){
            foreach ((array)$json as $k=>$v){
                $data[$k] = !is_string($v)?$this->json_array($v):$v;
            }
            return $data;
        }
    }
    public  function logisticsTrack($name='申通',$num='3375387893080'){
        $this->assign('titleName', "物流信息");
        if(!$name || !$num){
            return ajax_return('','缺少快递公司或单号','500');
        }

        $keywords = $this->expressname[$name];
//        var_dump($keywords);die;
        $result = $this->getContent("http://www.kuaidi100.com/query?type={$keywords}&postid={$num}");
        $result = json_decode($result);
        $data = $this->json_array($result);
        $data['name']=$name;
        $data['num']=$num;
        $this->view->assign('data',$data);
//        dump($data);die;
        return $this->fetch('order/logistics');
    }
}