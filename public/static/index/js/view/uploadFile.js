layui.use('upload', function(){
    var $ = layui.jquery
        ,upload = layui.upload;
    //多图片上传
    var pr
    upload.render({
        elem: '#uploadBtn'
        ,url:url.upload
        ,multiple: true
        ,number:5
        ,accept: 'images' //普通文件
        ,size: (1024*3) //限制文件大小，单位 KB
        //,exts: 'zip|rar|7z' //只允许上传压缩文件
        //,auto: false //选完文件后不自动上传
        ,before: function(obj){
            //预读本地文件示例，不支持ie8
        }
        ,done: function(data){
            console.log(data)

            var html ='<div class="singer-image" style="" >';
            html +='<img  src="'+data.data.name+'" class="layui-upload-img showImg">';
            html +='<i class="close-btn" onclick="dele(this)"></i>';
            html +='<input type="hidden" class="pic" name="pic" value="'+data.data.name+'">'
            html +='</div>';
            $('#imageShow').prepend(html);
            //console.log(data.data.name)
            //上传完毕
            //上传文件个数大于了5个
            isShowUploadBtn();

        }
        ,error: function(){
            //演示失败状态，并实现重传
            /*var demoText = $('#demoText');
            demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
            demoText.find('.demo-reload').on('click', function(){
                uploadInst.upload();
            });*/
        }
    });
});
function dele(_this) {
    $(_this).parents('.singer-image').remove();
    isShowUploadBtn();
}
function saveComplete() {

}
function isShowUploadBtn() {
    var imageNum= $('#imageShow').find('.singer-image').size();
    if( imageNum >=5){
        $('#uploadBtn').fadeOut();
    }else if(imageNum<5){
        $('#uploadBtn').fadeIn();
    }
}