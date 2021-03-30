<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:39:"./themes/default/index/index\brand.html";i:1569736301;}*/ ?>
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
        品牌列表
    </div>
	<div class="bigboxcent" style="margin-top:48px;" class="table">
		<?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
	   <a href="<?php echo url('Index/brandlist',['id'=>$vo['brand_id']]); ?>" class="news-center-box1">
		   <span class="news-center-img"><img src="/public/uploads/<?php echo $vo['image']; ?>"></span>
		   <div class="news-center-box2">
			   <div class="float-100">
				  <span class="news-center-text1"><?php echo $vo['name']; ?></span>
				  <!-- <span class="news-center-text2"><?php echo $vo['image']; ?></span> -->
			   </div>
			   <!-- <div class="float-100">
				  <span class="news-center-text3"><img src="/public/static/picture/scan.png" alt=""></span>
			   </div> -->
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