<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:39:"./themes/default/index/index\index.html";i:1570602307;s:51:"D:\web\hshop2\themes\default\index\public\foot.html";i:1569501494;}*/ ?>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<meta name="viewport" id="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no" />
		<link href="/public/static/css/reset.css" rel="stylesheet" type="text/css">
		<link href="/public/static/css/index.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="/public/static/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="/public/static/js/touchslide.1.1.js"></script>
		<script type="text/javascript" src="/public/static/js/scrolltopcontrol.js"></script>
		<style>
			.p1 {  
				overflow: hidden;
				overflow-x: auto;
				white-space: nowrap;
			}
			.p1 .hengxiang{
				width: 33.3%;
				margin-right: 5px;
				display: inline-block;
			}  
			.p1 .hengxiang .special-sale-box2{
				width: 100% !important; 
			}
		</style>
		<?php if($upgrade_conditions!=1): ?>
		<style>
			.classify-menu-box1{
				width: 25% !important;
			}
		</style>
		<?php endif; ?>
	</head>
	<body>
		<div class="near-box">
			<!--头部开始-->
			<div class="yx-index-top">
				<div class="index-top-box1">
				</div>
				<div class="index-top-box2">
					<span class="fresh-toptext1">商城首页</span>
				</div>
				<a href="<?php echo url('search'); ?>" class="index-top-box1">
					<span class="index-top-img1"><img src="/public/static/picture/search3.png" alt=""></span>
				</a>
			</div>
			<!--头部结束-->
			<div class="index-bigbox">
				<!--轮播开始-->
				<div id="slideBox" class="slideBox">
					<div class="bd" id="bd">
						<ul>
							<?php if(is_array($frontend_images) || $frontend_images instanceof \think\Collection || $frontend_images instanceof \think\Paginator): $frontend_images_index = 0; $__LIST__ = $frontend_images;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$frontend_images_item): $mod = ($frontend_images_index % 2 );++$frontend_images_index;?>
								<li>
									<a class="pic" href="<?php echo $frontend_images_item['href']; ?>"><img src="/public/uploads/<?php echo $frontend_images_item['frontend_images_image']; ?>" /></a>
								</li>
							<?php endforeach; endif; else: echo "" ;endif; ?>
						</ul>
					</div>
					<div class="hd">
						<ul></ul>
					</div>
				</div>
				<!--轮播开始-->
				<!--分类导航开始-->
				<div class="classify-menu">
					<a href="<?php echo url('index/popular'); ?>" class="classify-menu-box1">
						<span class="classify-menu-img1"><img src="/public/static/picture/diamond.png" alt=""></span>
						<span class="classify-menu-text1">分销价区</span>
					</a>
					<a href="<?php echo url('index/newest'); ?>" class="classify-menu-box1">
						<span class="classify-menu-img1 img-color2"><img src="/public/static/picture/package.png" alt=""></span>
						<span class="classify-menu-text1">0元抢购</span>
					</a>
					<a href="<?php echo url('index/zerolist'); ?>" class="classify-menu-box1">
						<span class="classify-menu-img1 img-color3"><img src="/public/static/picture/classification01.png" alt=""></span>
						<span class="classify-menu-text1">1元礼品</span>
					</a>
					<a href="<?php echo url('index/groupbuy'); ?>" class="classify-menu-box1">
						<span class="classify-menu-img1 img-color4"><img src="/public/static/picture/personal-center-img102.png" alt=""></span>
						<span class="classify-menu-text1">团购区</span>
					</a>
					<?php if($upgrade_conditions==1): ?>
					<a href="<?php echo url('index/upgrade'); ?>" class="classify-menu-box1">
						<span class="classify-menu-img1 img-color6"><img src="/public/static/picture/classification01.png" alt=""></span>
						<span class="classify-menu-text1">套装区</span>
					</a>
					<?php endif; ?>
				</div>
				<!--分类导航结束-->
				<!--品牌特卖开始-->
				<a href="<?php echo url('Index/brand'); ?>">
				<div class="brand-box1">
					<span class="brand-text1">品牌特卖</span>
					<span class="brand-img1"></span>
				</div>
				</a>
				<div class="special-sale-box1">
					<p class="p1">
						<?php if(is_array($brand) || $brand instanceof \think\Collection || $brand instanceof \think\Paginator): $brand_index = 0; $__LIST__ = $brand;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$brand_item): $mod = ($brand_index % 2 );++$brand_index;?>
							<a href="<?php echo url('Index/brandlist',['id'=>$brand_item['brand_id']]); ?>" class="hengxiang">
								<span class="special-sale-box2" style="display: block"><img src="/public/uploads/<?php echo $brand_item['image']; ?>" alt=""></span>
							</a>
						<?php endforeach; endif; else: echo "" ;endif; ?>
					</p>
				</div>
				<!--品牌特卖结束-->
				<!--爆款商品开始-->
				<a href="<?php echo url('Goods/goods_list',array('cate_id'=>3)); ?>">
				<div class="brand-box1">
					<span class="brand-text1">爆款商品</span>
					<span class="brand-img1"></span>
				</div>
				</a>
				<div class="special-sale-banner">
					<img src="<?php echo $pic['popular_shop']; ?>" alt="" style="height: 105px">
				</div>
				<div class="special-sale-box3">
					<?php if(is_array($popular) || $popular instanceof \think\Collection || $popular instanceof \think\Paginator): $popular_index = 0; $__LIST__ = $popular;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$popular_item): $mod = ($popular_index % 2 );++$popular_index;?>
						<a href="<?php echo url('Goods/details',['id'=>$popular_item['goods_id']]); ?>">
							<div class="special-sale-box4">
								<span class="special-sale-img1"><img src="/public/uploads/<?php echo $popular_item['image']; ?>" alt=""></span>
								<span class="special-sale-tbox"><?php echo $popular_item['name']; ?></span>
								<!-- <div class="special-sale-tbox2"><span class="special-sale-text1">买一赠一</span></div> -->
								<?php if($popular_item['price2'] == ''): ?>
									<span class="special-sale-text2">零售价：￥<?php echo $popular_item['retail_price']; ?></span>
									<span class="special-sale-text2">分销价：￥<?php echo $popular_item['price']; ?></span>
								<?php else: ?>
									<span class="special-sale-text2">￥<?php echo $popular_item['price2']; ?> <i>￥<?php echo $popular_item['price']; ?></i></span>
								<?php endif; ?>
							</div>
						</a>
					<?php endforeach; endif; else: echo "" ;endif; ?>
				</div>
				<!--爆款商品结束-->
				<!--最新产品开始-->
				<a href="<?php echo url('Goods/goods_list',array('cate_id'=>1)); ?>">
				<div class="brand-box1">
					<span class="brand-text1">最新产品</span>
					<span class="brand-img1"></span>
				</div>
				</a>
				<div class="special-sale-banner">
					<img src="<?php echo $pic['new_shop']; ?>" alt="" style="height: 105px">
				</div>
				<div class="special-sale-box3">
					<?php if(is_array($newlist) || $newlist instanceof \think\Collection || $newlist instanceof \think\Paginator): $newlist_index = 0; $__LIST__ = $newlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$newlist_item): $mod = ($newlist_index % 2 );++$newlist_index;?>
						<a href="<?php echo url('Goods/details',['id'=>$newlist_item['goods_id']]); ?>">
							<div class="special-sale-box4">
								<span class="special-sale-img1"><img src="/public/uploads/<?php echo $newlist_item['image']; ?>" alt=""></span>
								<span class="special-sale-tbox"><?php echo $newlist_item['name']; ?></span>
								<!-- <div class="special-sale-tbox2"><span class="special-sale-text1">买一赠一</span></div> -->
								<?php if($newlist_item['price2'] == ''): ?>
									<span class="special-sale-text2">零售价：￥<?php echo $newlist_item['retail_price']; ?></span>
									<span class="special-sale-text2">分销价：￥<?php echo $newlist_item['price']; ?></span>
								<?php else: ?>
									<span class="special-sale-text2">￥<?php echo $newlist_item['price2']; ?> <i>￥<?php echo $newlist_item['price']; ?></i></span>
								<?php endif; ?>
							</div>
						</a>
					<?php endforeach; endif; else: echo "" ;endif; ?>
				</div>
				<!--最新产品结束-->
				<!--特色推荐开始-->
				<a href="<?php echo url('Goods/goods_list',array('cate_id'=>2)); ?>">
				<div class="brand-box1">
					<span class="brand-text1">特色推荐</span>
					<span class="brand-img1"></span>
				</div>
				</a>
				<div class="special-sale-banner">
					<img src="<?php echo $pic['guesslike_shop']; ?>" alt="" style="height: 105px">
				</div>
				<div class="special-sale-box3">
					<?php if(is_array($guesslike) || $guesslike instanceof \think\Collection || $guesslike instanceof \think\Paginator): $guesslike_index = 0; $__LIST__ = $guesslike;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$guesslike_item): $mod = ($guesslike_index % 2 );++$guesslike_index;?>
						<a href="<?php echo url('Goods/details',['id'=>$guesslike_item['goods_id']]); ?>">
							<div class="special-sale-box4">
								<span class="special-sale-img1"><img src="/public/uploads/<?php echo $guesslike_item['image']; ?>" alt=""></span>
								<span class="special-sale-tbox"><?php echo $guesslike_item['name']; ?></span>
								<!-- <div class="special-sale-tbox2"><span class="special-sale-text1">买一赠一</span></div> -->
								<?php if($guesslike_item['price2'] == ''): ?>
									<span class="special-sale-text2">零售价：￥<?php echo $guesslike_item['retail_price']; ?></span>
									<span class="special-sale-text2">分销价：￥<?php echo $guesslike_item['price']; ?></span>
								<?php else: ?>
									<span class="special-sale-text2">￥<?php echo $guesslike_item['price2']; ?> <i>￥<?php echo $guesslike_item['price']; ?></i></span>
								<?php endif; ?>
							</div>
						</a>
					<?php endforeach; endif; else: echo "" ;endif; ?>
				</div>
				<!--特色推荐结束-->
				<!-- 代理商广告开始 -->
				<div class="brand-box1">
					<a href="<?php echo url('index/advertising'); ?>">
						<span class="brand-text1">联盟商家优惠活动</span>
						<span class="brand-img1"></span>
					</a>
				</div>
				<div class="bigboxcent">
					<?php if(is_array($ggao) || $ggao instanceof \think\Collection || $ggao instanceof \think\Paginator): $i = 0; $__LIST__ = $ggao;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
					<a href="<?php echo url('Index/advertising_content',array('id'=>$vo['id'])); ?>" class="news-center-box1">
						<span class="news-center-img"><img src="/public/<?php echo $vo['img']; ?>"></span>
						<div class="news-center-box2">
							<div class="float-100">
								<span class="news-center-text1"><?php echo $vo['title']; ?></span>
								<span class="news-center-text2"><?php echo date("m-d H:i:s",$vo['time']); ?></span>
							</div>
							<div class="float-100">
								<span class="news-center-text3"><img src="/public/static/picture/scan.png" alt=""><?php echo $vo['address']; ?></span>
							</div>
						</div>
					</a>
				   	<?php endforeach; endif; else: echo "" ;endif; ?>
				</div>
				<!-- 代理商广告结束 -->
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
		</div>
		<script>
			TouchSlide({
				slideCell: "#slideBox",
				titCell: ".hd ul", //开启自动分页 autoPage:true ，此时设置 titCell 为导航元素包裹层
				mainCell: ".bd ul",
				effect: "leftLoop",
				autoPage: true, //自动分页
				autoPlay: true, //自动播放
			});
		</script>
	</body>
</html>
