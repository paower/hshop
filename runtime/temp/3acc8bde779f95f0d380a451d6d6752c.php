<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:44:"./themes/default/index/goods\goods_list.html";i:1569743820;}*/ ?>
<!DOCTYPE html>
<html>
<head>
<title>品牌</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="viewport" id="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no"/>
<link href="/public/static/css/reset.css" rel="stylesheet" type="text/css">
<link href="/public/static/css/index.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/public/static/js/jquery-1.8.3.min.js"></script>
</head>
<body style="background: #fff;">
<div class="near-box">
    <div class="header">
        <a href="javascript:;" onclick="history.go(-1)" class="left"></a>
        <?php echo $title; ?>
    </div>
	<div class="special-sale-banner" style="margin-top: 50px">
        <img src="<?php echo $pic; ?>" alt="" style="height: 105px">
    </div>
    <div class="special-sale-box3">
        <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $popular_index = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$popular_item): $mod = ($popular_index % 2 );++$popular_index;?>
            <a href="<?php echo url('Goods/details',['id'=>$popular_item['goods_id']]); ?>">
                <div class="special-sale-box4">
                    <span class="special-sale-img1"><img src="/public/uploads/<?php echo $popular_item['image']; ?>" alt=""></span>
                    <span class="special-sale-tbox"><?php echo $popular_item['name']; ?></span>
                    <!-- <div class="special-sale-tbox2"><span class="special-sale-text1">买一赠一</span></div> -->
                    <span class="special-sale-text2">零售价：￥<?php echo $popular_item['retail_price']; ?></span>
                    <span class="special-sale-text2">分销价：￥<?php echo $popular_item['price']; ?></span>
                    
                </div>
            </a>
        <?php endforeach; endif; else: echo "" ;endif; ?>
    </div>
</div>
<script>
   function onSearch(){
		$(".changestyle").each(function(){
			var xx=$(this).html();  
			$(this).replaceWith(xx);
		});
		var str=$("#table").html();
		var txt=$("#search_text").val();
        //不为空
        if($.trim(txt)!=""){
			// var re="<b class='changestyle'>"+txt+"</b>";
            $(".news-center-box1").hide().filter(":contains('"+txt+"')").show(); 
          }
		else{
			$(".news-center-box1").show();
		}
      }
</script>
</body>
</html>