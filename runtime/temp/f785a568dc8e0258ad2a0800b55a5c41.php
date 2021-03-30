<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:41:"./themes/default/index/goods\details.html";i:1571044352;}*/ ?>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="viewport" id="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no"/>
<link href="/public/static/css/reset.css" rel="stylesheet" type="text/css"/>
<link href="/public/static/css/video.css" rel="stylesheet" type="text/css"/>
<link href="/public/static/css/goods-details.css" rel="stylesheet" type="text/css"/>
<script src="/public/static/js/jquery-1.8.3.min.js"></script>
<script src="/public/static/js/layer/layer.js"></script>
<script src="/public/static/js/pingzi_video.js"></script>
<style>
	#video{
		width: 90%;
    	background-color: #FFB34E;
    	height: 40px;
    	border-radius: 5px;
	}
</style>
</head>
<body>
<div class="near-box">
	<div class="gdetails-header" style="width: 100%">
		<a href="javascript:;" onclick="history.go(-1)" class="gdetails-hleft"></a>
		<div class="gdetails-htbox">
			<?php echo $goods['name']; ?>
		</div>
		<!--<span class="gdetails-hshare"></span>-->
	</div>
	<div class="gdetails-bigbox">
		 <!--轮播部分-->
		<div id="slideBox" class="slideBox">
		        <div class="bd">
		            <ul>
		            	<?php if(is_array($goods_image) || $goods_image instanceof \think\Collection || $goods_image instanceof \think\Paginator): $k = 0; $__LIST__ = $goods_image;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($k % 2 );++$k;?>
		                	<li><a href="javascript:void(0)"><img src="/public/uploads/<?php echo $item['image']; ?>" /></a></li>
		              	<?php endforeach; endif; else: echo "" ;endif; ?>
		            </ul>
		        </div>
		        <div class="hd">
		            <ul></ul>
		        </div>
		</div>
	    <!--轮播部分-->
	    <!--商品价格部分-->
		<div class="gdetails-price" style="width: 100%">
			<div class="gdetails-price-box1">
			
					<span class="gdetails-price-text1">零售价 :￥<?php echo $goods['retail_price']; ?></span><br/>
					<span class="gdetails-price-text1">
						
						<?php if($goods['modelis']==2): ?>
						抢购价
						<?php elseif($goods['modelis']==3): ?>
						礼品价
						<?php elseif($goods['modelis']==4): ?>
						团购价
						<?php elseif($goods['modelis']==5): ?>
						优惠价
						<?php else: ?>
						分销价
						<?php endif; ?>
					:￥<?php echo $goods['price']; ?></span>
			</div>
			<div class="gdetails-price-box1">
				<div class="gdetails-price-text5"><?php echo $goods_description['summary']; ?></div>
			</div>
		</div>
	    <!--商品价格部分-->
		<!--商品规格部分-->
		<?php if(is_array($attribute) || $attribute instanceof \think\Collection || $attribute instanceof \think\Paginator): $index = 0; $__LIST__ = $attribute;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($index % 2 );++$index;?>
		<div class="gdetails-price" style="width: 100%">
				<div class="recommend-box2-text1">
					<i><?php echo $item['name']; ?>： </i>
					<?php if(is_array($item['attribute_value']) || $item['attribute_value'] instanceof \think\Collection || $item['attribute_value'] instanceof \think\Paginator): $index2 = 0; $__LIST__ = $item['attribute_value'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item2): $mod = ($index2 % 2 );++$index2;?>
						<i attribute_value_id="<?php echo $item2['attribute_value_id']; ?>" class="sub_sbox <?php if($index2 == 1): ?>checked<?php endif; ?>"><?php echo $item2['value_name']; ?></i>
					<?php endforeach; endif; else: echo "" ;endif; ?>
				</div>
		</div>
		<?php endforeach; endif; else: echo "" ;endif; ?>
		<!--商品规格部分-->
		<!--商品数量-->
		<div class="gdetails-price"  style="width: 100%">
			<div class="recommend-box2-text1">
				<i>购买数量：</i>
				<div class="shop-cart-box3">
					<span class="shop-cart-subtract"></span>
					<input type="number" size="4" value="0" id="tb_count" class="shop-cart-numer">
					<span class="shop-cart-add"></span>
				</div>
			</div>
			<div class="recommend-box2-text1">
            	 <i>库存：<?php echo $goods['quantity']; ?></i>
        	</div>
		</div>
		
		<!--商品数量-->
	    <!--图文详情部分-->
	    <div class="recommend-box1" onclick="showHideCode()">商品详情&nbsp;<i style="">∨</i></div>
	    <div class="recommend-box2"  id="showdiv" style="width: 100%;display: none">
	    	<span class="recommend-box2-text1"><i>生产地： </i><?php echo $goods['location']; ?></span>
	    	<span class="recommend-box2-text1"><i>品牌： </i><?php echo $goods_brand['name']!=''?$goods_brand['name']:'无品牌'; ?></span>
	    	<span class="recommend-box2-text1"><i>重量： </i><?php echo round($goods['weight'],2);?><?php echo $goods['weight_class_id']; ?></span>
			<span class="recommend-box2-text1"><i>尺寸： </i>
				<?php 
					echo round($goods['length'],2).'x';
					echo round($goods['width'],2).'x';
					echo round($goods['height'],2);
				?>
			</span>
			<span class="recommend-box2-text1"><i>商品型号： </i><?php echo $goods['model']; ?></span>
	    	<span class="recommend-box2-text1"><i>生产地： </i><?php echo $goods['location']; ?></span>
	    </div>
		<?php if($goods['video'] != '0' and $goods['video'] != ''): ?>
		<div class="recommend-box1"><button id="video" class="m-video" data-src="<?php echo $goods['video']; ?>">查看视频</button></div>
		<?php endif; ?>
    	<div class="recommend-box1">图文详情</div>
    	<div class="image-text-xq-img"><?php echo htmlspecialchars_decode($goods_description['description']); ?></div>
	    <!--图文详情部分-->
	</div>
	<!--加入购物车部分-->
	<div class="goods-details-bottom">
		<a href="<?php echo url('index/index'); ?>" class="gd-collect">
			<span class="gd-collect-img1"></span>
			<span class="gd-collect-text1">首页</span>
		</a>
		<a href="<?php echo url('index/shpcart'); ?>" class="gd-collect">
			<span class="gd-collect-img1 img2">
				<?php if($cartnum != 0 || $cartnum != ''): ?>
					<i class="add-num cartnum"><?php echo $cartnum; ?></i>
				<?php endif; ?>
			</span>
			<span class="gd-collect-text1">购物车</span>
		</a>
		<div class="gd-collect-sx"></div>
		<button onclick="addCart()" class="gd-collect-btn1 addcar">加入购物车</button>
		<button onclick="buy()" class="gd-collect-btn1 btn2">立即购买</button>
	</div>

</div>
<script src="/public/static/js/touchslide.1.1.js"></script>
<script type="text/javascript" src="/public/static/js/ydui.citys.js"></script> 
<script type="text/javascript" src="/public/static/js/ydui.js"></script>
<script src="/public/static/js/goods-details.js"></script>
</body>
<script type="text/javascript">

$('.sub_sbox').click(function(){
	$(this).addClass('checked').siblings().removeClass('checked');
});
function showHideCode(){
		$("#showdiv").toggle();
	}
//加入购物车
function addCart(){
	<?php if($goods['is_yue_goods'] ==0): ?>
		layer.msg('非积分支付商品');
		setTimeout(function(){
			location.reload();
		},1500);
	<?php else: ?>
		
		var attribute_value_id = "";
		var len = <?php echo count($attribute); ?>;
		for(var i = 0; i < len; i++){	
			attribute_value_id += $('.checked').eq(i).attr('attribute_value_id') + ',';
		}
		var num = $('#tb_count').val();
		if(num == 0){
			layer.msg('请选择购买数量');
			return false;
		}
		if(num><?php echo $goods['quantity']; ?>){
			layer.msg('选择的数量不正确');
			return false;
		}
		if(num><?php echo $goods['quantitys']; ?>){
			layer.msg('限购数量一个');
			return false;
		}
		var goods_id = <?php echo $goods['goods_id']; ?>;
		$.post(
			"<?php echo url('Goods/addCart'); ?>",
			{
				attribute_value_id:attribute_value_id,
				num:num,
				goods_id:goods_id,
			},
			function(msg){
				$('.cartnum').text(msg.cartnum);
				if (msg.success) {
					layer.msg(msg.text);
				} else {
					layer.msg(msg.text);
				}
			}
		);
	<?php endif; ?>
}

//立即购买
function buy(){
	<?php if($qiangg['qiangg']==0): ?>
		if(<?php echo $qiangg['qiangg']; ?>==0){
			layer.msg('请在<?php echo $qiangg['qiangg_start_time']; ?>~<?php echo $qiangg['qiangg_end_time']; ?>间进行抢购');
			return false;
		}
	<?php endif; ?>
	var attribute = "";
	var len = <?php echo count($attribute); ?>;
	for(var i = 0; i < len; i++){	
		attribute += $('.checked').eq(i).attr('attribute_value_id') + ',';
	}
	//console.log(attribute);
	var num = $('#tb_count').val();
	if(num == 0){
		layer.msg('请选择购买数量');
		return false;
	}
	if(num><?php echo $goods['quantity']; ?>){
		layer.msg('选择的数量不正确');
		return false;
	}
	if(num><?php echo $goods['quantitys']; ?>){
		layer.msg('限购数量一个');
		return false;
	}
	var goods = <?php echo $goods['goods_id']; ?>;
	location.href="<?php echo url('order/orders'); ?>?id="+goods+"&num="+num+"&attribute="+attribute;
};

//商品数量按钮
$(".shop-cart-add").click(function() {
    var multi = 0;
    var vall = $(this).prev().val();
    var kuc = <?php echo $goods['quantity']; ?>;
    if(vall < kuc){
    	vall++;
    }
    $(this).prev().val(vall);
});
$(".shop-cart-subtract").click(function() {
    var multi = 0;
    var vall = $(this).next().val();
    vall--;
    if(vall <= 0) {
        vall = 0;
    }
    $(this).next().val(vall);
});
</script>
</html>