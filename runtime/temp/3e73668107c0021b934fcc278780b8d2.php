<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:40:"./themes/default/index/index\newest.html";i:1570707552;}*/ ?>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<meta name="viewport" id="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no" />
		<link href="/public/static/css/reset.css" rel="stylesheet" type="text/css">
		<link href="/public/static/css/index.css" rel="stylesheet" type="text/css">
		<link href="/public/static/css/discounts.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="/public/static/js/jquery-1.8.3.min.js"></script>
	</head>
	<body>
		<div class="near-box">
			<!--头部开始-->
			<div class="header">
				<a href="javascript:;" onclick="history.go(-1)" class="left"></a>
				0元抢购商品
			</div>
			<!--头部结束-->
			<div class="discounts-bigbox">
				<div class="discounts-banner1"><img src="<?php echo $newlist_pic; ?>" alt=""></div>
				<?php if(is_array($newlist) || $newlist instanceof \think\Collection || $newlist instanceof \think\Paginator): $index = 0; $__LIST__ = $newlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($index % 2 );++$index;?>
				<a href="<?php echo url('Goods/details',['id'=>$item['goods_id']]); ?>">
					<div class="discounts-box1">
						<span class="d-box1-img1"><img src="/public/uploads/<?php echo $item['image']; ?>" alt=""></span>
						<div class="discounts-box2">
							<span class="d-box2-text1"><?php echo $item['name']; ?></span>

								<span class="d-box2-text2">零售价：￥<?php echo $item['retail_price']; ?> </span>

								<span class="d-box2-text2">抢购价：￥<?php echo $item['price']; ?></span>
						</div>
					</div>
					</a>
				<?php endforeach; endif; else: echo "" ;endif; ?>
			</div>

		</div>
		<script type="text/javascript" src="/public/static/js/scrolltopcontrol.js"></script>
	</body>
</html>
