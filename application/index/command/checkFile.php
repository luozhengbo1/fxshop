<?php
    function editUserGroup($path){
        $dh = opendir($path);
        while(($d = readdir($dh)) !== false){
            if($d == '.' || $d == '..'){//如果为.或..
                continue;
            }
            $tmp = $path.'/'.$d;
            if(!is_dir($tmp)){//如果为文件
                chown($tmp,'www');
                chgrp($tmp,'www');
            }else{//如果为目录
                chown($tmp,'www');
                chgrp($tmp,'www');
                editUserGroup($tmp);
            }
        }
        closedir($dh);
    }
$path = __DIR__;
    $path = substr($path,'0',strpos($path,'/application'));
//    var_dump($path);die;
editUserGroup($path);
