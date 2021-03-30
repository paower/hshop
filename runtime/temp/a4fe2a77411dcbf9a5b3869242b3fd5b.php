<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:41:"./themes/default/index/user\transfer.html";i:1568102445;}*/ ?>
<!DOCTYPE html>
<html>

	<head>
		<title>转账</title>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<meta name="viewport" id="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no" />
		<link href="/public/static/css/reset.css" rel="stylesheet" type="text/css">
		<link href="/public/static/css/personal-center.css" rel="stylesheet" type="text/css">
		<script src="/public/static/js/jquery-1.8.3.min.js"></script>
		<script src="/public/static/js/layer/layer.js"></script>
	</head>
	</head>

	<body>
		<div class="near-box" style="margin-top: 45px;">
			<div class="index-bigbox" style="margin-top: 0px;">
				<!--头部开始-->
				<div class="header">
					<a href="javascript:;" onclick="history.go(-1)" class="left"></a>
					转账
				</div>
				<!--头部结束-->

				<!--功能分类开始-->
				<div class="personal-box5" style="background-image: none;">
					<input id="user_phone" type="number" name="user_phone" placeholder="输入用户账号" />
				</div>
				<div class="personal-box5" style="background-image: none;">
					<input id="trans_num" type="number" name="trans_num" placeholder="输入转账金额" />
				</div>
				<div class="personal-box5" style="background-image: none;">
					<input id="pay_password" type="password" name="pay_password" placeholder="输入安全密码" />
				</div>
				<div class="personal-box5" style="background-image: none;">
					<input type="text" id="captcha" name="captcha" placeholder="请输入验证码" />
					<div style="float:right; text-decoration:underline;width: 35%;height: 100%;">
						<img style="width: 100%;height: 100%;" src="<?php echo captcha_src(); ?>" class="verify" onclick="javascript:this.src='<?php echo captcha_src(); ?>?rand='+Math.random()" >
					</div>
				</div>
				<span onclick="sub()" class="personal-box5-text2">提 交</span>
			</div>
		</div>
	</body>

<script>
	function sub(){
		var user_phone = $('#user_phone').val();
		var trans_num = $('#trans_num').val();
		var pay_password = $("#pay_password").val();
		var captcha = $('#captcha').val();
		if(user_phone==''){
			layer.msg('对方账号不能为空');
			return false;
		}
		if(trans_num == ''){
			layer.msg('金额不能为空');
			return false;
		}
		if(pay_password == ''){
			layer.msg('安全密码不能为空');
			return false;
		}
		if(captcha == ''){
			layer.msg('验证码不能为空');
			return false;
		}
		
		$.ajax({
			url: "<?php echo url('User/transfer'); ?>",
			type: 'POST',
			data: {user_phone:user_phone,trans_num:trans_num,pay_password:pay_password,captcha:captcha},
			success:function (msg) {
				if (msg.success) {
					layer.msg(msg.text);
					history.go(-1)
				} else {
					layer.msg(msg.text);
				}
			}
		}) 
	}
</script>
</html>