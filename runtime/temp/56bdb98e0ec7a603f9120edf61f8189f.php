<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:43:"./themes/default/index/user\invitation.html";i:1570879272;}*/ ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="apple-touch-fullscreen" content="yes">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta name="format-detection" content="telephone=no">
	<meta name="author" content="AUI, a-ui.com">
	<title>邀请海报</title>
	<link rel="stylesheet" type="text/css" href="/public/static/css/Invitation.css">
	<script type="text/javascript" src="/public/static/js/jquery-1.8.3.min.js"></script>
<style>
	body{
	max-width: 640px;
    overflow: hidden;
    margin: 0 auto;
	}
	@media screen and (min-width:640px){
		#header{
			position: relative;
			top: 144px;
		}
		.codeimg {
			width: 22%;
		}
	}
	#dowload{
		width: 175px;
		margin-top: 10px;
		border: none;
		background-color: #f9d660;
		border-radius: 5px;
		height: 30px;
		color: red;
	}
	.in-code{top: -21px !important;right: 85px !important; }
	.in-code img{width: 140px !important;}
</style>	
</head>
<body>
<header class="ui-header ui-header-positive ui-border-b">
	<i class="ui-icon-return" onclick="history.back()"></i>
	<h1>邀请海报</h1>
</header>
<div class="in-body" style="background: url(/public/uploads/<?php echo $invite_background; ?>) no-repeat;background-size: 100%;height: 100%;">
	<div id="in-self" class="in-self"></div>
	<!-- header begin -->
	<header id="header">
		<!-- <div class="in-header" style="float: left;margin-left: 11px"> -->
			<!-- <?php if($user['user_photo'] == ''): ?> -->
				<!-- <img src="/public/static/images/usericon.png" alt=""> -->
			<!-- <?php else: ?> -->
				<!-- <img src="/public/uploads/<?php echo $user['user_photo']; ?>" alt=""> -->
			<!-- <?php endif; ?> -->

		<!-- </div> -->
		<!-- <div class="in-button-box"> -->
			<!-- <div id="target" style="opacity:0;"><?php echo $qrData; ?></div> -->
			<!-- <div data-clipboard-action="copy" data-clipboard-target="#target" id="copy_btn" class="in-button" style="margin:45px auto;"> -->
				<!-- <img src="/public/static/picture/icon-btn.png" alt=""> -->
			<!-- </div> -->
		<!-- </div> -->
	
			<!-- <img src="/public/uploads/<?php echo $invite_background; ?>" alt="" style="display: none"  id="tulip"> -->

		<!-- <canvas id="img" width="240px" height="420px" style="display: none"></canvas> -->
		<div class="in-code">
			<!-- <img src="/public/static/picture/ewm.png" alt=""> -->
			<img class="codeimg" src="/<?php echo $pic; ?>" id="tulip1"/>
		</div>
		<!-- pop begin -->
		<div id="ceng" class="in-cen"></div>
		<div id="close" class="in-pop">
			<div class="in-self-info">
				<img class="codeimg" src="/<?php echo $pic; ?>" id="tulip1"/>
				<a onclick="closeCeng()">
					<img src="/public/static/picture/icon-close.png" alt="">
				</a>
				<div class="in-pop-text">
					<p>您的专属邀请二维码</p>
					<button onclick="print()" id="dowload">保存到本地</button >
				</div>
			</div>
		</div>
		<!-- pop end -->
	</header>
	<!-- header end -->
	
	<!-- content end -->
</div>

<script src="/public/static/js/clipboard.js/dist/clipboard.min.js"></script>
<script src="/public/static/js/layer/layer.js"></script>
<script type="text/javascript">

	var clipboard = new ClipboardJS('#copy_btn');   
    clipboard.on('success', function(e) {
        //console.log(e);
        layer.msg('复制成功');
        print();
    }); 

 
	//二维码弹窗
    function Ceng() {
        document.getElementById('ceng').style.display = 'block';
        document.getElementById('close').style.display = 'block';
        return false;
    }
    function closeCeng() {
        document.getElementById('ceng').style.display = 'none';
        document.getElementById('close').style.display = 'none';
        return false;

    }
	function print(){
		var can = document.getElementById('img');
		var ctx=can.getContext("2d");
		var img=document.getElementById("tulip");
		var img1=document.getElementsByClassName("codeimg")[0];
		ctx.drawImage(img,0,0,240,720);
		ctx.drawImage(img1,110,180,100,100);
		var a = document.createElement("a");
		href = can.toDataURL();
		
		downloadFile('mycodeimg',href);
	}
	function downloadFile(fileName, content) {
        let aLink = document.createElement('a');
        let blob = this.base64ToBlob(content); //new Blob([content]);

        let evt = document.createEvent("HTMLEvents");
        evt.initEvent("click", true, true);//initEvent 不加后两个参数在FF下会报错  事件类型，是否冒泡，是否阻止浏览器的默认行为
        aLink.download = fileName;
        aLink.href = URL.createObjectURL(blob);
        aLink.click()
	}
	//base64转blob
	function base64ToBlob(code) {
        let parts = code.split(';base64,');
        let contentType = parts[0].split(':')[1];
        let raw = window.atob(parts[1]);
        let rawLength = raw.length;

        let uInt8Array = new Uint8Array(rawLength);

        for (let i = 0; i < rawLength; ++i) {
          uInt8Array[i] = raw.charCodeAt(i);
        }
        return new Blob([uInt8Array], {type: contentType});
	}
</script>
</body>
</html>
