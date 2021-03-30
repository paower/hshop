<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:39:"./themes/default/index/user\notice.html";i:1568110134;}*/ ?>
﻿<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="viewport" id="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no"/>
<link href="/public/static/css/pay.css" rel="stylesheet" type="text/css">
<script src="/public/static/js/jquery-1.8.3.min.js"></script>

</head>
<body>
<div class="near-box">
   <a href="javascript:;" onclick="history.go(-1)" class="fund-top">系统公告</a>
   <div class="fund-bogbox">
     <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
      <div class="pay-a1">
        <div class="pay-a1-b1" data-click="false">
        	<span class="pay-a1-t1"><?php echo $vo['title']; ?></span>
        	<span class="pay-a1-i1"></span>
        </div>
        <div class="pay-a1-t2"><?php echo $vo['content']; ?></div>
      </div>
      <?php endforeach; endif; else: echo "" ;endif; ?>
    </div>
</div>
<script type="text/javascript">

$('.pay-a1-b1').click(function(){
        var oClickName = $(this).attr('data-click');
        // console.log(oClickName);
        // return;
        if(oClickName=='true'){
           $(this).siblings('div').slideUp(300);
           $(this).attr('data-click','false')
        }else{
           $(this).siblings('div').slideDown(300);
           $(this).attr('data-click','true')
        }
    });

</script>
</body>
</html>