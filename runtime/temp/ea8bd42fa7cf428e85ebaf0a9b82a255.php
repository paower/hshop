<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:39:"./themes/default/index/user\profit.html";i:1571042388;}*/ ?>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<title>收益</title>
		<meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport" />
		<meta content="yes" name="apple-mobile-web-app-capable" />
		<meta content="black" name="apple-mobile-web-app-status-bar-style" />
		<meta content="telephone=no" name="format-detection" />
		<link href="/public/static/css/balance.css" rel="stylesheet" type="text/css" />
		<style>
		.left_text{width: 66px;text-align: center !important;}
		.p_text{text-align: center !important;}
		</style>
	</head>

	<body>
		<section class="aui-flexView">
			<section class="aui-scrollView">
				<header class="aui-navBar aui-navBar-fixed">
					<a href="javascript:;" onclick="history.go(-1)" class="aui-navBar-item">
						<i class="icon icon-return"></i>

					</a>
					<span class="billhead_title">收益</span>
				</header>
				<?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $index = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($index % 2 );++$index;if($item['get_type'] == 1): ?>
					<div class="aui-cells">
						<a href="javascript:;" class="aui-cells-cell">
							<div class="aui-cell-hd">
								<h4><?php echo $item['user_uid']; ?>销售佣金<?php if($item['shouyi_type']==2): endif; ?></h4>
								<?php if($item['complete_time'] != ''): ?>
									<p><?php echo date("Y-m-d H:i:s",$item['complete_time']); ?></p>
								<?php else: ?>
									<p><?php echo date("Y-m-d H:i:s",$item['creation_time']); ?></p>
								<?php endif; ?>
							</div>
							<div class="left_text">
								<p>+<?php echo round($item['price'],2);?></p>
								<p class="p_text">
									<?php if($item['modelis'] == 1): ?>
										分销价区
									<?php elseif($item['modelis'] == 2): ?>
										0元抢购
									<?php elseif($item['modelis'] == 3): ?>
										1元礼品
									<?php elseif($item['modelis'] == 4): ?>
										团购区
									<?php elseif($item['modelis'] == 5): ?>
										升级产品
									<?php endif; ?>
								</p>
							</div>
						</a>
						<?php elseif($item['get_type'] == 2): ?>
						<a href="javascript:;" class="aui-cells-cell">
							<div class="aui-cell-hd">
								<h4><?php echo $item['user_uid']; ?>批发佣金<?php if($item['shouyi_type']==2): endif; ?></h4>
								<?php if($item['complete_time'] != ''): ?>
									<p><?php echo date("Y-m-d H:i:s",$item['complete_time']); ?></p>
								<?php else: ?>
									<p><?php echo date("Y-m-d H:i:s",$item['creation_time']); ?></p>
								<?php endif; ?>
							</div>
							<div class="left_text">
								<p>+<?php echo round($item['price'],2);?></p>
								<p class="p_text">
									<?php if($item['modelis'] == 1): ?>
										分销价区
									<?php elseif($item['modelis'] == 2): ?>
										0元抢购
									<?php elseif($item['modelis'] == 3): ?>
										1元礼品
									<?php elseif($item['modelis'] == 4): ?>
										团购区
									<?php elseif($item['modelis'] == 5): ?>
										申请分销
									<?php endif; ?>
								</p>
							</div>
						</a>
						<?php elseif($item['get_type'] == 3): ?>
						<a href="javascript:;" class="aui-cells-cell">
							<div class="aui-cell-hd">
								<h4><?php echo $item['user_uid']; ?>区代服务费<?php if($item['shouyi_type']==2): endif; ?></h4>
								<?php if($item['complete_time'] != ''): ?>
									<p><?php echo date("Y-m-d H:i:s",$item['complete_time']); ?></p>
								<?php else: ?>
									<p><?php echo date("Y-m-d H:i:s",$item['creation_time']); ?></p>
								<?php endif; ?>
							</div>
							<div class="left_text">
								<p>+<?php echo round($item['price'],2);?></p>
								<p class="p_text">
									<?php if($item['modelis'] == 1): ?>
										分销价区
									<?php elseif($item['modelis'] == 2): ?>
										0元抢购
									<?php elseif($item['modelis'] == 3): ?>
										1元礼品
									<?php elseif($item['modelis'] == 4): ?>
										团购区
									<?php elseif($item['modelis'] == 5): ?>
										申请分销
									<?php endif; ?>
								</p>
							</div>
						</a>
						<?php elseif($item['get_type'] == 4): ?>
						<a href="javascript:;" class="aui-cells-cell">
							<div class="aui-cell-hd">
								<h4><?php echo $item['user_uid']; ?>股东效益提成<?php if($item['shouyi_type']==2): endif; ?></h4>
								<?php if($item['complete_time'] != ''): ?>
									<p><?php echo date("Y-m-d H:i:s",$item['complete_time']); ?></p>
								<?php else: ?>
									<p><?php echo date("Y-m-d H:i:s",$item['creation_time']); ?></p>
								<?php endif; ?>
							</div>
							<div class="left_text">
								<p>+<?php echo sprintf("%.2f",$item['price']);?></p>
								<p class="p_text">
									<?php if($item['modelis'] == 1): ?>
										分销价区
									<?php elseif($item['modelis'] == 2): ?>
										0元抢购
									<?php elseif($item['modelis'] == 3): ?>
										1元礼品
									<?php elseif($item['modelis'] == 4): ?>
										团购区
									<?php elseif($item['modelis'] == 5): ?>
										申请分销
									<?php endif; ?>
								</p>
							</div>
						</a>
						<?php elseif($item['get_type'] == 5): ?>
						<a href="javascript:;" class="aui-cells-cell">
							<div class="aui-cell-hd">
								<h4><?php echo $item['user_uid']; ?>邀请体验用户获得购物券</h4>
								<?php if($item['complete_time'] != ''): ?>
									<p><?php echo date("Y-m-d H:i:s",$item['complete_time']); ?></p>
								<?php else: ?>
									<p><?php echo date("Y-m-d H:i:s",$item['creation_time']); ?></p>
								<?php endif; ?>
							</div>
							<div class="left_text">
								<p>+<?php echo round($item['price'],2);?>元</p>
								<p class="p_text">
									邀请名单
								</p>
							</div>
						</a>
						<?php elseif($item['get_type'] == 6): ?>
						<a href="javascript:;" class="aui-cells-cell">
							<div class="aui-cell-hd">
								<h4><?php echo $item['user_uid']; ?>邀请体验用户获赠产品</h4>
								<?php if($item['complete_time'] != ''): ?>
									<p><?php echo date("Y-m-d H:i:s",$item['complete_time']); ?></p>
								<?php else: ?>
									<p><?php echo date("Y-m-d H:i:s",$item['creation_time']); ?></p>
								<?php endif; ?>
							</div>
							<div class="left_text">
								<p>+<?php echo (int)$item['price'];?>单</p>
								<p class="p_text">
									邀请名单
								</p>
							</div>
						</a>
						<?php endif; ?>
					</div>
				<?php endforeach; endif; else: echo "" ;endif; ?>
			</section>
		</section>
	</body>

</html>