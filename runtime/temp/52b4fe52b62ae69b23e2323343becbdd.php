<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:39:"./themes/default/index/pay\payment.html";i:1570437618;}*/ ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>支付订单</title>
	<link rel="stylesheet" href="/public/static/css/payment.css" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="/public/static/css/zhifu.css">
	<script type="text/javascript" src="/public/static/js/jquery-1.8.3.min.js" ></script>
	<script src="/public/static/js/layer/layer.js"></script>
</head>
	
<body>
<!--头部  star-->
<header style="color:#fff">
	<a href="javascript:;" onclick="history.go(-1)">
		<div class="_left">
			<img src="/public/static/picture/left.png">
		</div>
		<span>支付订单</span>
	</a>
</header>
<!--头部 end-->
<!--内容 star-->
<div class="contaniner fixed-cont">
    <div class="payTime">
    	<input type="hidden" id="order_id" value="<?php echo \think\Request::instance()->param('id'); ?>" />
    	<li><span>订单总额</span></li>
        <li><strong><font id="price">￥<?php echo number_format($pay_nums,2); ?></font></strong></li>
        <li>订单号:<?php echo $order['order_num_alias']; ?></li>
        <input type="hidden" value="1" name="pay_type">
    </div>
    
    <!--支付 star-->
	<div class="pay">
		<div class="show">
            <?php if($order['is_number_goods'] == 1): ?>
                <li onclick="pay_type(3)"><label><img src="/public/static/picture/yue.png" >体验用户兑换&nbsp;(数量:<?php echo $wallet['number']; ?>)<input name="Fruit" type="radio" value="3" <?php if($is_number_goods==1): ?>checked<?php endif; ?>/><span></span></label> </li>
            <?php endif; if($order['is_points_goods'] == 1): ?>
                <li onclick="pay_type(2)"><label><img src="/public/static/picture/yue.png" >购物券支付&nbsp;(剩余:<?php echo $wallet['interest']; ?>)<input name="Fruit" type="radio" value="2" /><span></span></label> </li>
            <?php endif; if($order['is_yue_goods'] == 1): ?>
			    <li onclick="pay_type(1)"><label><img src="/public/static/picture/yue.png" >积分支付&nbsp;(剩余:<?php echo $wallet['principal']; ?>)<input name="Fruit" type="radio" value="1" <?php if($is_number_goods!=1): ?>checked<?php endif; ?>/><span></span></label> </li>
            <?php endif; ?>
            <!-- <li><label><img src="/public/static/picture/zhifubao.png" >支付宝支付<input name="Fruit" type="radio" value="" /><span></span></label> </li>
    		<li><label><img src="/public/static/picture/weixin.png" >微信支付<input name="Fruit" type="radio" value="" /><span></span></label> </li>
    		<li class="center"><a href="#" onClick="showHideCode()">查看更多支付方式↓</a></li> -->
		</div>
		<!--<div class="showList" id = "showdiv" style="display:none;">
			<li><label><img src="/public/static/picture/yinhang.png" >银行卡<input name="Fruit" type="radio" value="" /><span></span></label> </li>
            
            <li style="background:none" ></li>
		</div>-->
	</div> 
    <!--支付 end--> 
    
    
</div>

    
<div class="book-recovery-bot2 ljzf_but" id="footer">
	<a href="#">
		<div class="payBottom">
			<li class="textfr">确认支付:</li>
		    <li class="textfl"><span>¥<?php echo number_format($pay_nums,2); ?></span></li>
		</div>
	</a>
</div> 
<!--内容 end-->

<!--浮动层-->
<div class="ftc_wzsf">
    <div class="srzfmm_box">
        <div class="qsrzfmm_bt clear_wl">
            <img src="/public/static/images/xx_03.jpg" class="tx close fl">
            <img src="/public/static/images/jftc_03.png" class="tx fl">
            <span class="fl">请输入支付密码</span></div>
        <div class="zfmmxx_shop">
            <div class="zhifu_price">¥<?php echo number_format($pay_nums,2); ?></div></div>
        <ul class="mm_box">
            <li></li><li></li><li></li><li></li><li></li><li></li>
        </ul>
    </div>
    <div class="numb_box">
        <div class="xiaq_tb">
            <img src="/public/static/images/jftc_14.jpg" height="10"></div>
        <ul class="nub_ggg">
            <li><a href="javascript:void(0);" class="zf_num">1</a></li>
            <li><a href="javascript:void(0);" class="zj_x zf_num">2</a></li>
            <li><a href="javascript:void(0);" class="zf_num">3</a></li>
            <li><a href="javascript:void(0);" class="zf_num">4</a></li>
            <li><a href="javascript:void(0);" class="zj_x zf_num">5</a></li>
            <li><a href="javascript:void(0);" class="zf_num">6</a></li>
            <li><a href="javascript:void(0);" class="zf_num">7</a></li>
            <li><a href="javascript:void(0);" class="zj_x zf_num">8</a></li>
            <li><a href="javascript:void(0);" class="zf_num">9</a></li>
            <li><a href="javascript:void(0);" class="zf_empty">清空</a></li>
            <li><a href="javascript:void(0);" class="zj_x zf_num">0</a></li>
            <li><a href="javascript:void(0);" class="zf_del">删除</a></li>
        </ul>
    </div>
    <div class="hbbj"></div>
</div>
        

<script type="text/javascript">
function showHideCode(){
 	$("#showdiv").toggle();
}
function pay_type(id){
    if(id==1){
        $('#price').text('￥<?php echo number_format($pay_nums,2); ?>');
        $('.textfl').text('￥<?php echo number_format($pay_nums,2); ?>');
        $('.zhifu_price').text('￥<?php echo number_format($pay_nums,2); ?>');
        $('input[name="pay_type"]').val(id);
    }else if(id==2){
        $('#price').html('<?php echo $order['points_price']; ?><span style="font-size:14px">&nbsp;积分</span>');
        $('.textfl').html('<?php echo $order['points_price']; ?><span style="font-size:14px">&nbsp;积分+1积分余额</span>');
        $('.zhifu_price').html('<?php echo $order['points_price']; ?><span style="font-size:14px">&nbsp;积分</span>');
        $('input[name="pay_type"]').val(id);
    }else if(id=3){
        $('#price').html('<?php echo $order['number_price']; ?><span style="font-size:14px">&nbsp;体验用户</span>');
        $('.textfl').html('<?php echo $order['number_price']; ?><span style="font-size:14px">&nbsp;体验用户+1积分余额</span>');
        $('.zhifu_price').html('<?php echo $order['number_price']; ?><span style="font-size:14px">&nbsp;体验用户</span>');
        $('input[name="pay_type"]').val(id);
    }
}
$(function(){
    //出现浮动层
    $(".ljzf_but").click(function(){
        $(".ftc_wzsf").show();
    });
    if(<?php echo $is_number_goods; ?>==1){
        pay_type(3);
    }
    //关闭浮动
    $(".close").click(function(){
        $(".ftc_wzsf").hide();
        $(".mm_box li").removeClass("mmdd");
        $(".mm_box li").attr("data","");
        i = 0;
    });
        //数字显示隐藏
    $(".xiaq_tb").click(function(){
        $(".numb_box").slideUp(500);
    });
    $(".mm_box").click(function(){
        $(".numb_box").slideDown(500);
    });
        //----
    var i = 0;
    $(".nub_ggg li .zf_num").click(function(){
            
        if(i<6){
            $(".mm_box li").eq(i).addClass("mmdd");
            $(".mm_box li").eq(i).attr("data",$(this).text());
            i++
            if (i==6) {
              	setTimeout(function(){
	                var data = "";
	                    $(".mm_box li").each(function(){
	                    data += $(this).attr("data");
	                });
                    var pay_type = $('input[name="pay_type"]').val();
	                var order_id = $('#order_id').val();
					$.ajax({
						type:"post",
						url:"<?php echo url('Pay/pay'); ?>",
						data:{order_id:order_id,pay_password:data,pay_type:pay_type},
						async:true,	
						success:function(msg){
							if (msg.success) {
								layer.msg(msg.text);
								location.href = "<?php echo url('Pay/payOk'); ?>?id=" + order_id;
							} else {
								layer.msg(msg.text);
							}
						}
					});
              	},100);
            };
        } 
    });
        
    $(".nub_ggg li .zf_del").click(function(){
        if(i>0){
            i--
            $(".mm_box li").eq(i).removeClass("mmdd");
            $(".mm_box li").eq(i).attr("data","");
        }
    });

    $(".nub_ggg li .zf_empty").click(function(){
        $(".mm_box li").removeClass("mmdd");
        $(".mm_box li").attr("data","");
        i = 0;
    });
     
});

</script>

</body>
</html>