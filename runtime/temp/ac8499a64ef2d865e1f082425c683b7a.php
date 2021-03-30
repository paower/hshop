<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:46:"./themes/default/index/user\faadvertising.html";i:1570521849;}*/ ?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="viewport" id="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no"/>
<link href="/public/static/css/pj.css" rel="stylesheet" type="text/css">
<link href="/public/static/css/reset.css" rel="stylesheet" type="text/css">
<script src="/public/static/js/jquery-1.8.3.min.js"></script>
<script src="/public/static/js/jquery.raty.js" type="text/javascript"></script>
</head>
<body>
<div class="near-box">
    <div class="header">
		<a href="javascript:;" onclick="history.go(-1)" class="left"></a>
		发布广告
		<span class="shop-cart-htext1"><a href="<?php echo url('user/myggao'); ?>" title="">我的广告</a></span>
	</div>
	<form name="form">
		<div class="jd-qrdd-bigbox">
		<div class="tb-pj-a1">
			<span style="font-size:13px;">标题：</span>
			<input style="width: 85%;"  type="" name="title" value="" placeholder="请输入广告标题" />
		</div>
		<input type="hidden" name="" id="" value="content" placeholder="请输入30字以内的广告" />
		<div class="tb-pj-a2">
			<textarea id="content" class="tbpj-a2-input" maxlength="30" name="content"></textarea>
		</div>
		<div class="tb-pj-a1">
				<span class="tbpj-a1-t4"><b style="font-size:12px">说明：请在以上空白区域输入30字以内的广告内容！</b></span>
		</div>
		<div class="tb-pj-a1">
			<span style="font-size:13px;">手机号码：</span>
			<input style="width: 75%;" type="" name="phone" value="" placeholder="请输入手机号码" />
		</div>
		<div class="tb-pj-a1">
			<span style="font-size:13px;">广告地址：</span>
			<input style="width: 80%;" type="" name="address" value="" placeholder="所在省、市、区、镇" />
		</div>
			<div class="serve-type-box1">
				<span class="serve-type-text2">上传广告图<span style="color:#ABABAB;font-size:13px;">(限100KB大小图片)</span>：</span>
				<span class="serve-type-img2">
					<input onchange="uploads_img()" id="pj_image" type="file" name="img" class="serve-type-btn1" accept="image/*">
					<i class="serve-type-img3"></i>
					<i class="serve-type-text3">上传图片(最多一张)</i>
				</span>
				<span id="img_box" class="serve-type-img2" style="display: none">
					<img src="" style="height: 100%;width: 100%;position: absolute;top: 0;left: 0;" class="imgpath"/>
				</span>
			</div>
		<a href="javascript:;" onclick="sub()" class="tb-pj-c1">发布广告</a>
		</div>	
	</form>
</div>
<script src="/public/static/js/jquery-1.8.3.min.js"></script>
<script src="/public/static/js/jquery.raty.js" type="text/javascript"></script>
<script src="/public/static/js/layer/layer.js"></script>
<script>

$('#pj_image').on("change",function(){
	var objUrl = getObjectURL(this.files[0]);
	if (objUrl) {
		$(".imgpath").attr("src", objUrl);
		$("#img_box").css('display','inline');
	}
});
function sub(){
	var fm = document.getElementsByTagName('form')[0];
	var fl = new FormData(fm);
	var url = "<?php echo url('User/faadvertising'); ?>";
	$.ajax({
		url:url,
		type:"POST",
		data:fl,
		dataType:"json",
		contentType:false,
		processData: false, 
		success: function (mes) {
			if(mes.success){
				layer.msg(mes.text);
				setTimeout(function(){
					history.go(-1);
				},1500)
			}else{
				layer.msg(mes.text);
			}
		},
		error: function (xhr) { //上传失败
			alert("上传失败");
		}
	})
}
function getObjectURL(file) {
    var url = null ;
    if (window.createObjectURL!=undefined) { // basic
        url = window.createObjectURL(file) ;
    } else if (window.URL!=undefined) { // mozilla(firefox)
        url = window.URL.createObjectURL(file) ;
    } else if (window.webkitURL!=undefined) { // webkit or chrome
        url = window.webkitURL.createObjectURL(file) ;
    }
    return url ;
}
</script>
</body>

</html>