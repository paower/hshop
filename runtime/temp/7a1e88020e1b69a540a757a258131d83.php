<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:40:"./themes/default/index/user\mysteam.html";i:1570440121;}*/ ?>
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
	<title>我的分销商</title>
	<link rel="stylesheet" type="text/css" href="/public/static/css/Invitation.css">
	<script type="text/javascript" src="/public/static/js/jquery-1.8.3.min.js"></script>
	
</head>
<body style="background: #f33345">
<header class="ui-header ui-header-positive ui-border-b">
	<i class="ui-icon-return" onclick="history.back()"></i>
	<h1>我的分销商</h1>
</header>
<div class="in-body" style="background:#f33345">
	<div id="in-self" class="in-self" style="height: 50px"></div>

	<section id="content">
		<div class="in-content">
			<div class="in-content-line"></div>
			<div class="in-content-box">
				<div class="in-content-title">
					<h2>- 分销商列表 -</h2>
					<div class="in-line-left">
						<img src="/public/static/picture/icon-line.png" alt="">
					</div>
					<div class="in-line-right">
						<img src="/public/static/picture/icon-line.png" alt="">
					</div>
				</div>
				<?php if($user['vip_grade'] > 2): ?>
				<div class="in-content-links">
					<a href="javascript:">
						分销商总人数
						<div class="in-content-bd"></div>
						<div class="in-content-ft">
							<p>
								<em><?php echo $vip_two; ?></em>
								人
							</p>
						</div>
					</a>
					<div class="in-line-left in-content-left" style="top:32px">
						<img src="/public/static/picture/icon-line.png" alt="">
					</div>
					<div class="in-line-right in-content-right" style="top:32px">
						<img src="/public/static/picture/icon-line.png" alt="">
					</div>
				</div>
				<?php endif; ?>
				<div class="in-content-links">
					<a href="javascript:">
						<div class="in-content-hd">
							<?php if($user['user_photo'] == ''): ?>
								<img src="/public/static/images/usericon.png" alt="">
							<?php else: ?>
								<img src="/public/uploads/<?php echo $user['user_photo']; ?>" alt="">
							<?php endif; ?>
						</div>
						<div class="in-content-bd">
							<p><?php echo $user['user_name']; ?></p>
						</div>
						<div class="in-content-ft">
							<p>
								已邀请 <em><?php echo $user['invitation_num']; ?></em>
								人
							</p>
						</div>
					</a>
					<div class="in-line-left in-content-left">
						<img src="/public/static/picture/icon-line.png" alt="">
					</div>
					<div class="in-line-right in-content-right">
						<img src="/public/static/picture/icon-line.png" alt="">
					</div>
				</div>
				<div class="in-content-fellow">
					<?php if(is_array($user['invitation_user']) || $user['invitation_user'] instanceof \think\Collection || $user['invitation_user'] instanceof \think\Paginator): $index = 0; $__LIST__ = $user['invitation_user'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($index % 2 );++$index;if($item['level']<=1): ?>
						<div class="in-fellow-well">
							<div class="in-content-hd ">
								<?php if($item['user_photo'] == ''): ?>
									<img src="/public/static/images/usericon.png" alt="">
								<?php else: ?>
									<img src="/public/uploads/<?php echo $item['user_photo']; ?>" alt="">
								<?php endif; ?>
								<div class="in-red-crown"></div>
							</div>
							<div class="in-content-bd red">
								<p><?php echo $item['user_phone']; if($item['vip_grade']==1): ?>
									(体验用户)
									<?php elseif($item['vip_grade']==2): ?>
									(分销商)
									<?php elseif($item['vip_grade']==3): ?>
									(区代理)
									<?php elseif($item['vip_grade']==4): ?>
									(合伙股东)
									<?php endif; ?>
								</p>
							</div>
						</div>
						<?php endif; endforeach; endif; else: echo "" ;endif; ?>
				</div>
				<div style="height:20px;"></div>
			</div>
		</div>
	</section>
	<!-- content end -->
</div>

<script src="/public/static/js/clipboard.js/dist/clipboard.min.js"></script>
<script src="/public/static/js/layer/layer.js"></script>
<script type="text/javascript">


    function closeCeng() {
        document.getElementById('ceng').style.display = 'none';
        document.getElementById('close').style.display = 'none';
        return false;

    }
</script>
</body>
</html>
