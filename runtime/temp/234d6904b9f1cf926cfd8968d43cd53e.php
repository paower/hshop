<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:41:"./themes/default/index/index\pcenter.html";i:1608363355;s:51:"D:\web\hshop2\themes\default\index\public\foot.html";i:1569501494;}*/ ?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="viewport" id="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no"/>
<link href="/public/static/css/reset.css" rel="stylesheet" type="text/css">
<link href="/public/static/css/personal-center.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/public/static/js/jquery-1.8.3.min.js"></script>
<script src="/public/static/js/layer/layer.js"></script>
<script src="/public/static/js/iscroll-zoom.js"></script>
<script src="/public/static/js/hammer.js"></script>
<script src="/public/static/js/jquery.photoClip.js"></script>
</head>
<body>
<div class="near-box">
      <div class="index-bigbox" style="margin-top: 0px;">
          <!--头部中间开始-->
          <div class="personal-top">
          	 <!--头部开始-->
			  <div class="personal-index-top">
				 <a href="<?php echo url('user/setting'); ?>" class="personal-top-right">
					<img src="/public/static/images/setup.png" alt="">
					<span style="height: 25px;position: absolute;top: 40px;right: 10px; color:#fff;    font-size: 14px;">设置中心</span>
				 </a>
			  </div>
			  <!--头部结束-->
          	 <div class="personal-top-box1" <?php if($user_name =='未登录'): ?>id="tologin"<?php endif; ?>>
          	 	<span class="personal-top-img1"><a href="#" title="修改头像" <?php if($user_name !='未登录'): ?> id="logox"<?php endif; ?>><img src="<?php echo $user_photo; ?>" alt=""></a></span>
          	 	<div class="personal-top-box2">
          	 		<span class="personal-top-text1"><?php echo $user_name!=''?$user_name:$user_phone; ?></span>
					<span class="personal-top-text2">(<?php if($vip_grade == 1): ?>体验用户<?php elseif($vip_grade == 2): ?>分销商<?php elseif($vip_grade == 3): ?>区代理<?php elseif($vip_grade == 4): ?>合伙股东<?php else: ?>请先登录<?php endif; ?>)</span>
          	 	</div>
          	 </div>
          </div>
          <!--头部中间结束-->
          <!--代付款分类开始-->
          <div class="personal-box1 mbt-05">
          	   <a href="<?php echo url('order/orderlist'); ?>?type=1" class="personal-box2 box3">
          	      <span class="personal-box1-img1"><img src="/public/static/picture/personal-center-img1.png" alt=""></span>
          	      <span class="personal-box1-text1">待付款</span>
          	   </a>
          	   <a href="<?php echo url('order/orderlist'); ?>?type=2" class="personal-box2 box3">
          	      <span class="personal-box1-img1"><img src="/public/static/picture/personal-center-img2.png" alt=""></span>
          	      <span class="personal-box1-text1">待发货</span>
          	   </a>
          	   <a href="<?php echo url('order/orderlist'); ?>?type=3" class="personal-box2 box3">
          	      <span class="personal-box1-img1"><img src="/public/static/picture/personal-center-img3.png" alt=""></span>
          	      <span class="personal-box1-text1">待收货</span>
          	   </a>
          	   <a href="<?php echo url('order/orderlist'); ?>?type=4" class="personal-box2 box3">
          	      <span class="personal-box1-img1"><img src="/public/static/picture/personal-center-img4.png" alt=""></span>
          	      <span class="personal-box1-text1">待评价</span>
          	   </a>
          	   <a href="<?php echo url('order/orderlist'); ?>?type=0" class="personal-box2 box3">
          	      <span class="personal-box1-img1"><img src="/public/static/picture/personal-center-img5.png" alt=""></span>
          	      <span class="personal-box1-text1">全部订单</span>
          	   </a>
          </div>
          <!--代付款分类结束-->
          <!--功能分类开始-->
		  <a href="<?php echo url('user/wallet'); ?>" class="personal-box5">
          	  <span class="personal-box5-img1"><img src="/public/static/images/balance.png" alt=""></span>
          	  <span>我的账户</span>
		  </a>
		  <?php if($user_name != '未登录'): ?>
		  <a href="<?php echo url('Login/register_2',array('id'=>$user_id)); ?>" class="personal-box5">
				<span class="personal-box5-img1"><img src="/public/static/images/balance.png" alt=""></span>
				<span>用户注册</span>
		  </a>
		  <?php endif; ?>
		  <a href="<?php echo url('user/invitation'); ?>" class="personal-box5">
          	  <span class="personal-box5-img1"><img src="/public/static/picture/Invitation.png" alt=""></span>
          	  <span>邀请海报</span>
		  </a>
		
		  <?php if($vip_grade == 3 or $vip_grade == 4): ?>
		  <a href="<?php echo url('user/upgrade'); ?>" class="personal-box5">
          	  <span class="personal-box5-img1"><img src="/public/static/picture/upgrade.png" alt=""></span>
          	  <span>升级分销商</span>
		  </a>
		  <a href="<?php echo url('user/faadvertising'); ?>" class="personal-box5">
          	  <span class="personal-box5-img1"><img src="/public/static/picture/advertisement.png" alt=""></span>
          	  <span>我要发布广告</span>
		  </a>
		  <?php endif; ?>
          <a href="<?php echo url('user/mysteam'); ?>" class="personal-box5">
          	  <span class="personal-box5-img1"><img src="/public/static/picture/distributor.png" alt=""></span>
          	  <span>我的分销商</span>
          </a>
          <a href="<?php echo url('user/address'); ?>" class="personal-box5">
          	  <span class="personal-box5-img1"><img src="/public/static/picture/personal-center-img11.png" alt=""></span>
          	  <span>收货地址</span>
          </a>
          <a href="<?php echo url('user/service'); ?>" class="personal-box5">
          	  <span class="personal-box5-img1"><img src="/public/static/picture/personal-center-img12.png" alt=""></span>
          	  <span>售后服务</span>
		  </a>
		  <a href="<?php echo url('user/notice'); ?>" class="personal-box5">
			<span class="personal-box5-img1"><img src="/public/static/images/gonga.png" alt=""></span>
			<span>系统公告</span>
	  </a>
	  <?php if($user_name != '未登录'): ?>
		  <a href="javascript:;" onclick="out()" class="personal-box5-text2">退出登录</a>
	  <?php endif; ?>
      </div>
      <!--bigbox结束-->
	  <?php if($upgrade_conditions!=1): ?>
<style>
    .kaola-bottom-box1{
        width: 25% !important;
    }
</style>
<?php endif; ?>
<div class="kaola-bottom">
    <a href="<?php echo url('index'); ?>" class="kaola-bottom-box1" id="home">
        <span class="kaola-bottom-img1"><img src="/public/static/picture/home2.png"></span>
        <span class="kaola-bottom-text1">首页</span>
    </a>
    <a href="<?php echo url('classify'); ?>" class="kaola-bottom-box1" id="cate">
        <span class="kaola-bottom-img1"><img src="/public/static/picture/classification.png"></span>
        <span class="kaola-bottom-text1">分类</span>
    </a>
    <a href="<?php echo url('shpcart'); ?>" class="kaola-bottom-box1" id="cart">
        <span class="kaola-bottom-img1"><img src="/public/static/picture/shop-cart1.png"></span>
        <span class="kaola-bottom-text1 ">购物车</span>
    </a>
    <?php if($upgrade_conditions==1): ?>
        <a href="<?php echo url('index/upgrade'); ?>" class="kaola-bottom-box1">
            <span class="kaola-bottom-img1"><img src="/public/static/picture/shop-cart1.png"></span>
            <span class="kaola-bottom-text1 ">我要分销</span>
        </a>
    <?php endif; ?>
    <a href="<?php echo url('pcenter'); ?>" class="kaola-bottom-box1" id="my">
        <span class="kaola-bottom-img1"><img src="/public/static/picture/people1.png"></span>
        <span class="kaola-bottom-text1">我的</span>
    </a>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        var path = window.location.pathname;
        var home = $('#home').attr('href');
        var cate = $('#cate').attr('href');
        var cart = $('#cart').attr('href');
        var my = $('#my').attr('href');
        if(path==home||path=='/'){
            $('#home').find('img').attr('src','/public/static/picture/home.png');
            $('#home').find('.kaola-bottom-text1').addClass('text2');
        }else if(path==cate){
            $('#cate').find('img').attr('src','/public/static/picture/classification1.png');
            $('#cate').find('.kaola-bottom-text1').addClass('text2');
        }else if(path==cart){
            $('#cart').find('img').attr('src','/public/static/picture/shop-cart2.png');
            $('#cart').find('.kaola-bottom-text1').addClass('text2');
        }else if(path==my||path=='/index/index/pcenter'){
            $('#my').find('img').attr('src','/public/static/picture/people2.png');
            $('#my').find('.kaola-bottom-text1').addClass('text2');
        }

    });
</script>
	 
	<article class="htmleaf-container">
		<div id="clipArea">
			<div class="cancel">
				<img src="/public/static/picture/quxiao.png"/>
			</div>
		</div>
		<div class="foot-use">
			<div class="uploader1 blue">
				<input type="button" name="file" class="button" value="打开"/>
				<form id='myupload' action="<?php echo url('Index/Imgup'); ?>" method='post' enctype='multipart/form-data'>
					<input id="file" type="file"  name="uploadfile" accept="image/*" multiple  />
				</form>
			</div>
			<button id="clipBtn">截取</button>
		</div>
		<div id="view"></div>
	</article>
</div>
</body>
<script>
	function out(){
		layer.msg('确定退出吗？', {
		  	time: 0 ,
		  	btn: ['确定', '取消'],
		  	yes: function(index){
		    	layer.close(index);
		    	location.href="<?php echo url('login/logout'); ?>";
		  	}
		});
	}
	
	var obUrl = ''
	//document.addEventListener('touchmove', function (e) { e.preventDefault(); }, false);
	$("#clipArea").photoClip({
		width: 320,
		height: 320,
		file: "#file",
		view: "#view",
		ok: "#clipBtn",
		loadStart: function() {
			console.log("照片讀取中");
		},
		loadComplete: function() {
			console.log("照片讀取完成");
		},
		clipFinish: function(dataURL) {
			// console.log(dataURL);
		}
	});


	$(function(){
		$("#logox").click(function(){
			$(".htmleaf-container").show();
		})
		$('.cancel').click(function(){
			$(".htmleaf-container").hide();
		})
		$("#clipBtn").click(function(){
			//數據流上傳開始執行圖片上傳
			$.ajax({
				url:"<?php echo url('Index/imgUps'); ?>",
				type:'post',
				data:{'dataflow':imgsource},
				datatype:'json',
				success:function (data) {
					if(data.type == 1){
						$("#logox").empty();
						$('#logox').append('<img src="' + imgsource + '" align="absmiddle" style=" width:70px;height: 70px;">');
						$(".htmleaf-container").hide();
						layer.msg(data.text);
					}else{
						layer.msg(data.text);
					}
				}
			})
		})
	});
	<?php if($user_name =='未登录'): ?>
		$('#tologin').click(function(){
			window.location.href='/index/Login/login';
		})
	<?php endif; ?>
</script>

</html>