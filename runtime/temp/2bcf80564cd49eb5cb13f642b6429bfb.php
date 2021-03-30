<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:40:"./themes/default/index/order\orders.html";i:1570612519;}*/ ?>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<meta name="viewport" id="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no" />
		<link href="/public/static/css/reset.css" rel="stylesheet" type="text/css">
		<link href="/public/static/css/indent-details.css" rel="stylesheet" type="text/css">
		<link href="/public/static/css/discount-coupon.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div class="near-box">
			<a href="javascript:;" onclick="history.go(-1)" class="jd-qrdd-topbox">确认订单</a>
			<div class="jd-qrdd-bigbox">
				<!--地址部分-->
				<div class="jd-qrdd-a1">
					<?php if($address != ''): ?>
					<input type="hidden" id="address_id" name="address_id" value="<?php echo $address['address_id']; ?>" />
					<span class="qrdd-a1-t1"><?php echo $address['name']; ?></span>
					<span class="qrdd-a1-t1"><?php echo $address['telephone']; ?></span>
					<?php if($address['default'] == 2): ?>
					<span class="qrdd-a1-t2">默认</span>
					<?php endif; ?>
					<div class="qrdd-a1-b1">
						<span class="qrdd-a1-img1"></span>
						<span class="qrdd-a1-t3">
							<?php echo get_area_name($address['province_id']); ?>
							<?php echo get_area_name($address['city_id']); ?>
							<?php echo get_area_name($address['country_id']); ?> <?php echo $address['address']; ?></span>
					</div>
					<span class="qrdd-a1-img2"></span>
					<?php else: ?>
					<span class="qrdd-a1-t1">暂未设置默认收货地址，点击设置！</span>
					<?php endif; ?>
				</div>
				<!--商品部分-->
				<div class="zjzz-buylist-goods1">
					<div class="zjzz-buylist-gtime">
						<span class="zjzz-buylist-gtime1"><i class="indent-details-img2"></i>平台自营店</span>
						<span class="zjzz-buylist-gtime2">联系客服</span>
					</div>
					<div class="zjzz-buylist-det">
						<input type="hidden" name="goods_id" id="goods_id" value="<?php echo $goods['goods_id']; ?>" />
						<img src="/public/uploads/<?php echo $goods['image']; ?>" />
						<div class="zjzz-buylist-gdetail">
							<div style="float: left;">
								<p class="name_text"><?php echo $goods['name']; ?></p>
								<p class="type_text">
									<?php if(is_array($attribute_value) || $attribute_value instanceof \think\Collection || $attribute_value instanceof \think\Paginator): $k = 0; $__LIST__ = $attribute_value;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($k % 2 );++$k;?>
									<?php echo $item['name']; ?>：<?php echo $item['value_name']; endforeach; endif; else: echo "" ;endif; ?>
								</p>
							</div>
							<span class="zjzz-buylist-gmoney">
								<?php if($vip_grade > 1): ?>
								<i class="zjzz-buylist-gm1">￥<?php echo $goods['price']; ?></i>
								<?php else: if($goods['modelis']==5): ?>
										<i class="zjzz-buylist-gm1">￥<?php echo $goods['price']; ?></i>
									<?php else: ?>
										<i class="zjzz-buylist-gm1">￥<?php echo $goods['retail_price']; ?></i>
									<?php endif; endif; ?>
									<i class="zjzz-buylist-gm2">x<?php echo $num; ?></i>
							</span>

						</div>
					</div>
					<?php if($goods['is_coupon']==1): ?>
					<div class="zjzz-buylist-gtime">
						<span onclick="setcoupon()" class="zjzz-buylist-gtime1 tcolor-grey"><i class="indent-details-img3"></i>选择优惠券</span>
						<input type="hidden" name="user_coupon_id" id="user_coupon_id" value="0" />					
						<span id="selecttext" class="zjzz-buylist-gtime2 tcolor-black"></span>
					</div>
					<?php else: ?>
					<input type="hidden" name="user_coupon_id" id="user_coupon_id" value="0" />
					<?php endif; ?>
				</div>
				<!--商品金额部分-->
				<div class="indent-details-box2">
					<span class="indent-details-text4">应付总额</span>
					<span id="zprice_text" class="indent-details-text5">￥<?php echo number_format($zprice,2); ?></span>
					<input name="zprice" id="zprice" type="hidden" value="<?php echo $zprice; ?>" />
				</div>
				<div class="indent-details-box2">
					<span class="indent-details-text4 tcolor-grey">商品总价</span>
					<span id="goodzprice_text" class="indent-details-text5 tcolor-black">￥<?php echo number_format($goodzprice,2); ?></span>
					<input name="goodzprice" id="goodzprice" type="hidden" value="<?php echo $goodzprice; ?>" />
				</div>
				<div class="indent-details-box2">
					<span class="indent-details-text4 tcolor-grey">运费</span>
					<span id="freight_text" class="indent-details-text5 tcolor-black">￥<?php echo number_format($freight,2); ?></span>
					<input name="freight" id="freight" type="hidden" value="<?php echo $freight; ?>" />
				</div>
				<!--<div class="indent-details-box2">
					<span class="indent-details-text4 tcolor-grey">发票信息</span>
					<span class="indent-details-text5 tcolor-black">不需要发票</span>
				</div>-->
				<!--订单编号部分-->
				<!--<div class="indent-details-box3">
					<p>订单编号:201711024866544846</p>
					<p>支付方式:支付宝</p>
					<p>支付交易单号:201711024866544846144</p>
					<p>下单时间:2017-11-01 21:15:23</p>
				</div>-->
				<div class="shop-cart-total">
					<span class="scart-total-text2">合计：￥</span>
					<span id="AllTotal" class="scart-total-text3"><?php echo number_format($zprice,2); ?></span>
					<a href="javascript:;" onclick="sub()" class="scart-total-text4">提交订单<i id="selectedTotal"></i></a>
					<span class="delete hide"></span>
				</div>

				<!--优惠券弹出层部分-->

				<div class="entity_box">
					<!--优惠券主体开始-->
					<?php if(is_array($couponlist) || $couponlist instanceof \think\Collection || $couponlist instanceof \think\Paginator): $index = 0; $__LIST__ = $couponlist;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$coupon): $mod = ($index % 2 );++$index;?>
					<div 
					<?php if($coupon['coupon_type'] == 1): ?>
						seltext = "-￥<?php echo $coupon['coupon_value']; ?>" 
					<?php else: ?> 
						seltext = "<?php echo number_format($coupon['coupon_value']); ?>折" 
					<?php endif; ?> 
					class="coupon-bigbox" limit = "<?php echo $coupon['coupon_limit']; ?>" stype = "<?php echo $coupon['coupon_type']; ?>" svalue = "<?php echo $coupon['coupon_value']; ?>" user_coupon_id = "<?php echo $coupon['user_coupon_id']; ?>" >
						<div class="coupon-box2">
							<span class="coupon-semicircle1"></span>
							<span class="coupon-semicircle2"></span>
							<span class="coupon-line"></span>
							<!--现金券内容开始-->
							<div class="coupon-box3">
								<span style="text-align: left;" class="coupon-text1">可用</span>
								<?php if($coupon['coupon_type'] == 1): ?>
								<span class="coupon-text2 ">￥<?php echo $coupon['coupon_value']; ?></span>
								<?php else: ?>
								<span class="coupon-text2"><?php echo number_format($coupon['coupon_value']); ?>折</span>
								<?php endif; if($coupon['coupon_limit'] != 0): ?>
								<span class="coupon-text3">满<?php echo $coupon['coupon_limit']; ?>元使用</span>
								<?php else: ?>
								<span class="coupon-text3">无使用条件</span>
								<?php endif; ?>
							</div>
							<div class="coupon-box4">
								<span class="coupon-text4"><?php echo $coupon['describe']; ?></span>
								<span class="coupon-text5"><?php echo date('Y-m-d H:i:s',$coupon['expire_time']); ?> 到期</span>
							</div>
						</div>
					</div>
					<?php endforeach; endif; else: echo "" ;endif; ?>
					<!--优惠券主体结束-->
				</div>

			</div>
		</div>
	</body>
	<script src="/public/static/js/jquery-1.8.3.min.js"></script>
	<script src="/public/static/js/layer/layer.js"></script>
	<script>
		function setcoupon() {
			$(".entity_box").addClass("am-modal-active");
			if ($(".sharebg").length > 0) {
				$(".sharebg").addClass("sharebg-active");
			} else {
				$("body").append('<div class="sharebg"></div>');
				$(".sharebg").addClass("sharebg-active");
			}
			$(".sharebg-active,.coupon-bigbox").click(function() {
				$(".entity_box").removeClass("am-modal-active");
				setTimeout(function() {
					$(".sharebg-active").removeClass("sharebg-active");
					$(".sharebg").remove();
				}, 300);
			})
		}


		$(document).ready(function() {
			$('.coupon-bigbox').each(function() {
				$(this).click(function() {
					//重置
					$('#goodzprice').val(<?php echo $goodzprice; ?>);
					$('#goodzprice_text').text(<?php echo $goodzprice; ?>);
					$('#zprice').val(<?php echo $zprice; ?>);
					$('#zprice_text').text(<?php echo $zprice; ?>);
					$('#AllTotal').text(<?php echo $zprice; ?>);
					
					var index = $(this).index();
					var name = $('.coupon-bigbox').eq(index).attr('seltext');
					var limit = $('.coupon-bigbox').eq(index).attr('limit');
					var type = $('.coupon-bigbox').eq(index).attr('stype');
					var value = $('.coupon-bigbox').eq(index).attr('svalue');
					var user_coupon_id = $('.coupon-bigbox').eq(index).attr('user_coupon_id');
					if(($('#goodzprice').val() - limit) >= 0){
						$('#selecttext').text(name);
					}else{
						layer.msg('购买商品价值达到' + limit + '元才可以使用该券哦');
						return false;
					}
					if(type == 1){
						var price = $('#goodzprice').val() - value;
						price = decimal(price,2);
						var zprice = parseFloat(price) + parseFloat($('#freight').val());
						zprice = decimal(zprice,2);
						$('#goodzprice').val(price);
						$('#goodzprice_text').text('￥' + price);
						$('#zprice').val(zprice);
						$('#zprice_text').text('￥' + zprice);
						$('#AllTotal').text(zprice);
					}else if(type == 2){
						var price = $('#goodzprice').val() * (value / 10);
						price = decimal(price,2);
						var zprice = parseFloat(price) + parseFloat($('#freight').val());
						zprice = decimal(zprice,2);
						$('#goodzprice').val(price);
						$('#goodzprice_text').text('￥' + price);
						$('#zprice').val(zprice);
						$('#zprice_text').text('￥' + zprice);
						$('#AllTotal').text(zprice);
					}
					$('#user_coupon_id').val(user_coupon_id);
					//console.log($('#user_coupon_id').val());
				});
			});

		});
		
		function decimal(num,v){
			var vv = Math.pow(10,v);
			return Math.round(num * vv) / vv;
		}

		//生成订单
		function sub() {
			var attribute_value_id = ''; 
			<?php if(is_array($attribute_value) || $attribute_value instanceof \think\Collection || $attribute_value instanceof \think\Paginator): $k = 0; $__LIST__ = $attribute_value;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$item): $mod = ($k % 2 );++$k;?>
				attribute_value_id += <?php echo $item['attribute_value_id']; ?> + ',';
			<?php endforeach; endif; else: echo "" ;endif; ?>
			var orderdata = [];
			orderdata[0] = [<?php echo $goods['goods_id']; ?>, <?php echo $num; ?>, attribute_value_id];
			$.post(
				"<?php echo url('Order/subOrder'); ?>", {
					address_id: $('#address_id').val(),
					goods_id: $('#goods_id').val(),
					price: $('#zprice').val(),
					goodzprice: $('#goodzprice').val(),
					freight: $('#freight').val(),
					orderdata: orderdata,
					user_coupon_id: $('#user_coupon_id').val()
				},
				function(msg) {
					if (msg.success) {
						location.href = "<?php echo url('Pay/payment'); ?>?id=" + msg.data;
					} else {
						layer.msg(msg.text);
						return false;
					}
				}
			);
		}
	</script>
</html>
