<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:42:"./themes/default/index/login\register.html";i:1570873979;}*/ ?>
<!DOCTYPE html>
<html>
	<head>
		<title>注册</title>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<meta name="viewport" id="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no" />
		<link href="/public/static/css/reset.css" rel="stylesheet" type="text/css">
		<link href="/public/static/css/personal-center.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="/public/static/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="/public/static/js/jquery.cookie.js"></script>
		<script src="/public/static/js/layer/layer.js"></script>
	</head>
	</head>
	<body>
		<div class="near-box">
			<div class="index-bigbox" style="margin-top: 0px;">
				<!--头部开始-->
				<div class="personal-top">
					
					<div class="personal-top-box1">
						<div class="personal-top-box3">
							<span class="personal-top-text1">注册账户</span>
						</div>
					</div>
				</div>
				<!--头部结束-->

				<div class="personal-box5" style="background: none;">
					<span class="personal-box5-img1"><img src="/public/static/images/usericon.png" alt=""></span>
					<input id="user_phone" name="user_phone" type="text" placeholder="请输入手机号" />
				</div>
				<div class="personal-box5" style="background: none;">
					<span class="personal-box5-img1"><img src="/public/static/images/passwicon.png" alt=""></span>
					<input id="user_pass" name="user_pass" value="123456" type="number" placeholder="设置登录密码" />
				</div>
				<div class="personal-box5" style="background: none;">
					<span class="personal-box5-img1"><img src="/public/static/images/confirm.png" alt=""></span>
					<input id="user_pass2" name="user_pass2" value="123456" type="number" placeholder="确认登录密码" />
				</div>
				<div class="personal-box5" style="background: none;">
					<span class="personal-box5-img1"><img src="/public/static/images/recommend.png" alt=""></span>
					<input style="background: none;" id="invitation" name="invitation" type="text" placeholder="邀请人账户(非必填)" />
				</div>
				<div class="personal-box5" style="background: none;">
					<span class="personal-box5-img1"><img src="/public/static/images/codeicon.png" alt=""></span>
					<input name="captcha" id="captcha"  style=" width: 45%;float: left;margin-top: 14px;" type="text" placeholder="请输入验证码" />
					<div style="float:right; text-decoration:underline;width: 30%;height: 100%;">
						<img style="width: 100%;height: 100%;" src="<?php echo captcha_src(); ?>" class="verify" onclick="javascript:this.src='<?php echo captcha_src(); ?>?rand='+Math.random()">
					</div>
				</div>
				<div class="personal-box5" style="background: none;">
					<span class="personal-box5-img1"><img src="/public/static/images/codeicon.png" alt=""></span>
					<input style="background: none;" id="user_getsms" name="user_getsms" type="text" placeholder="短信验证码" />
					<div style="float:right; text-decoration:underline;width: 30%;height: 100%;">
						<input type="button" value="获取验证码" id="getting">
					</div>
				</div>
				<div class="personal-box5" style="background: none;text-align: center">
						<label><input type="checkbox" name="regis_xieyi" value="用户协议" checked><a href="<?php echo url('Index/regis_xieyi'); ?>" style="padding-left: 3px">用户协议</a></label>
				</div>
				<input onclick="sub()" type="button" name="sub" value="注册" class="personal-box5-text2" />

			</div>
			<!--bigbox结束-->
		</div>
	</body>
	<script>
		$(function(){

            /*防刷新：检测是否存在cookie*/
            if($.cookie("captcha")){
                var count = $.cookie("captcha");
                var btn = $('#getting');
                btn.val(count+'秒后可重新获取').attr('disabled',true).css('cursor','not-allowed');
                var resend = setInterval(function(){
                    count--;
                    if (count > 0){
                        btn.val(count+'秒后可重新获取').attr('disabled',true).css('cursor','not-allowed');
                        $.cookie("captcha", count, {path: '/', expires: (1/86400)*count});
                    }else {
                        clearInterval(resend);
                        btn.val("获取验证码").removeClass('disabled').removeAttr('disabled style');
                    }
                }, 1000);
            }

            /*点击改变按钮状态，已经简略掉ajax发送短信验证的代码*/
            $('#getting').click(function(){
                var btn = $(this);
                var count = 60;
                var phone = $("#user_phone").val();
                if(phone==""){
                    layer.msg('请输入手机号码');
                    return;
                }
                $.ajax({
                    url:"<?php echo url('Login/getsms'); ?>",
                    data:{mobile:phone},
                    dataType:"json",
                    type:"post",
                    async : false,
                    cache : false,
                    success:function(res){
                        if(res.status==1){

                            layer.msg(res.text);
                            var resend = setInterval(function(){
			                    count--;
			                    if (count > 0){
			                            btn.val(count+"秒后可重新获取");
			                        $.cookie("captcha", count, {path: '/', expires: (1/86400)*count});
			                    }else {

			                        clearInterval(resend);
			                        btn.val("获取验证码").removeAttr('disabled style');
			                    }
			                }, 1000);
			                btn.attr('disabled',true).css('cursor','not-allowed');
                        }else{
                        	layer.msg(res.text);
                        }
                    }
                })
                
            });

        });
		$(document).ready(function() {
			var invitation_phone = <?php echo $invitation_phone; ?>;
			if (invitation_phone != 0) {
				$('#invitation').val(invitation_phone);
				$("#invitation").attr("disabled", true);
			}
		});

		function sub() {
			var user_phone = $('#user_phone').val();
			var user_pass = $('#user_pass').val();
			var user_pass2 = $('#user_pass2').val();
			var invitation = $('#invitation').val();
			var captcha = $('#captcha').val();
			var user_getsms = $('#user_getsms').val();
			var regis_xieyi = $("input[type='checkbox']").is(':checked');
			if(!regis_xieyi){
				layer.msg('请先阅读用户协议');
				return false;
			}
			if (user_phone == '') {
				layer.msg('请输入手机号');
				return false;
			}
			if (user_pass == '') {
				layer.msg('请输入密码');
				return false;
			}
			if (user_pass2 == '') {
				layer.msg('请输入确认密码');
				return false;
			}
			if (captcha == '') {
				layer.msg('请输入图形验证码');
				return false;
			}

			if(user_getsms==''){
				layer.msg('请输入短信验证码');
				return false;
			}
			$.ajax({
				url: "<?php echo url('login/register'); ?>",
				type: 'POST',
				data: {
					user_phone: user_phone,
					user_pass: user_pass,
					user_pass2: user_pass2,
					invitation: invitation,
					captcha: captcha,
					user_getsms:user_getsms
				},
				success: function(msg) {
					if (msg.success) {
						layer.load(1);
						setTimeout(function() {
							layer.closeAll('loading');
						}, 2000);
						location.href = "<?php echo url('index/pcenter'); ?>";
					} else {
						layer.msg(msg.text);
					}
				}
			})

		}
	</script>
</html>
