<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:42:"./themes/default/index/order\tracking.html";i:1569049142;}*/ ?>
<!DOCTYPE html>
<html>
<head>
<title>查看物流</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="viewport" id="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no"/>
<link href="/public/static/css/reset.css" rel="stylesheet" type="text/css">
<link href="/public/static/css/order-tracking.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="near-box">
    <a href="javascript:;" onclick="history.go(-1)" class="jd-ddgz-topbox">
         <span class="jdddgz-top-t1">查看物流</span>
    </a>
    <!--此处是订单内容部分-->
    <div class="jd-ddgz-bigbox">
        <div class="ddgz-a1">
            <span class="ddgz-a1-t1">订单编号：<i><?php echo $order['exp_no']; ?></i></span>
            <span class="ddgz-a1-t1">快递公司：<i><?php echo $order['com']; ?></i></span>
        </div>
        
        <div class="ddgz-a2">
            <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $k = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($k % 2 );++$k;if($k==1): ?>
            <div class="ddgz-a2-b1 first">
                <span class="ddgz-a2-yuan"></span>
                <span class="ddgz-a2-t1"><?php echo $vo['remark']; ?></span>
                <span class="ddgz-a2-t2"><?php echo $vo['datetime']; ?></span>
            </div>
            <?php else: ?>
            <div class="ddgz-a2-b1">
                <span class="ddgz-a2-yuan"></span>
                <span class="ddgz-a2-t1"><?php echo $vo['remark']; ?></span>
                <span class="ddgz-a2-t2"><?php echo $vo['datetime']; ?></span>
            </div>
            <?php endif; endforeach; endif; else: echo "" ;endif; ?>
        </div>
    </div>    
</div>
</body>

</html>
