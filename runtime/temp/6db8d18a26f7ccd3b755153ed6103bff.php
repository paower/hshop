<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:39:"./themes/default/index/user\myggao.html";i:1569381629;}*/ ?>
﻿<!DOCTYPE html>
<html>
<head>
<title>我的广告</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="viewport" id="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no"/>
<link href="/public/static/css/reset.css" rel="stylesheet" type="text/css">
<link href="/public/static/css/index.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/public/static/js/jquery-1.8.3.min.js"></script>
</head>
<body style="background: #fff;">
<div class="near-box">
	<div class="d7-sousuo-top">
		<a href="javascript:;" onclick="history.go(-1)" class="d7-sousuo-t1"></a>
		<span class="d7-sousuo-t2">
			我的广告
		</span>
		<!-- <span class="d7-sousuo-t3" onclick="onSearch()"></span> -->
	</div>
	<div class="bigboxcent" style="margin-top:48px;" class="table">
		<?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
	   <a href="<?php echo url('User/myggao_detail',array('id'=>$vo['id'])); ?>" class="news-center-box1">
		   <span class="news-center-img"><img src="/public/<?php echo $vo['img']; ?>"></span>
		   <div class="news-center-box2">
			   <div class="float-100">
				  <span class="news-center-text1"><?php echo $vo['title']; ?></span>
				  <span class="news-center-text2"><?php echo date("y-m-d",$vo['time']); ?></span>
			   </div>
			   <div class="float-100">
				  <span class="news-center-text3">
					  审核状态：
					  <?php if($vo['status'] == 1): ?>
					  通过
					  <?php elseif($vo['status'] == 0): ?>
					  未审核
					  <?php elseif($vo['status'] == 2): ?>
					  未通过
					  <?php endif; ?>
				  </span>
			   </div>
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