<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:53:"./themes/default/index/index\advertising_content.html";i:1570523236;}*/ ?>
﻿<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="viewport" id="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no"/>
<link href="/public/static/css/reset.css" rel="stylesheet" type="text/css">
<link href="/public/static/css/index.css" rel="stylesheet" type="text/css">
<link href="/public/static/css/discounts.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="near-box">
      <!--头部开始-->
	  <div class="header">
	  	 <a href="javascript:;" onclick="history.go(-1)" class="left"></a>
	  	 <span class="advertitle"><?php echo $info['title']; ?></span>
	  </div>
	  <!--头部结束-->
      <div class="discounts-bigbox">
          <div class="rule-title" style="border-bottom:0px;"><?php echo $info['title']; ?></div>
		  <span class="rule-title" style="font-size:12px; height:15px; line-height:15px;margin-top:0px;"><?php echo date("Y-m-d H:i:s",$info['time']); ?></span>
          <div class="rule-box1">
          	  <p><?php echo $info['content']; ?></p>
			  <div class="discounts-banner1"><img src="/public/<?php echo $info['img']; ?>" alt=""></div>
          </div>
		  <div class="float-100">
			  <span class="news-center-text3" style="padding-left:13px;">
				<img src="/public/static/picture/scan.png" alt=""><?php echo $info['address']; ?></span>
		   </div>
      </div>
      <!--bigbox结束-->
</div>
<!-- <script type="text/javascript" src="js/scrolltopcontrol.js"></script> -->
</body>
</html>