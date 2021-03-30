<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:40:"./themes/default/index/index\search.html";i:1565596004;}*/ ?>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<meta name="viewport" id="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no" />
		<link rel="stylesheet" href="/public/static/css/reset.css" type="text/css"/>
		<link href="/public/static/css/d7-isousuo.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="/public/static/js/jquery-1.8.3.min.js" ></script>
		<script src="/public/static/js/layer/layer.js"></script>
		<title></title>
	</head>
	<body>
		<div class="d7-sousuo-wear">
			
			<div class="d7-sousuo-top">
				<a href="javascript:;" onclick="history.go(-1)" class="d7-sousuo-t1"></a>
				<span class="d7-sousuo-t2">
					<input id="search_text" type="text" placeholder="搜索商品" name="search_text">
				</span>
				<span class="d7-sousuo-t3" onclick="onSearch()"></span>
			</div>
		
			<div class="d7-sousuo-mid">
				<span class="d7-sousuo-tit">最近搜索</span>
				<?php if($search_text !=''): $len = count($search_text); for($i = 0; $i < $len; $i++){ ?>
						<?php echo "<span class='d7-sousuo-jl1'>" . $search_text[$i] . "</span>"; } else: ?>
					<span class="d7-sousuo-tit">暂无</span>
				<?php endif; ?>
			</div>
		</div>
		<script>
			$(function(){
				$('.d7-sousuo-jl1').each(function(){
					$(this).click(function(){
						var text = $(this).text();
						$('#search_text').val(text);
					})
				})
			});
			
			function onSearch(){
				var search_text = $('#search_text').val();
				if(search_text == ''){
					layer.msg('请输入查询内容！');
					return false;
				}
				$.ajax({
					url: "<?php echo url('Index/search'); ?>",
					type: 'POST',
					data: {search_text:search_text},
					success:function (msg) {
						if (msg.success) {
							// console.log(msg.text);
							location.href="<?php echo url('Index/searchList'); ?>?id=" + msg.text;
						} else {
							layer.msg(msg.text);
						}
					}
				}) 
			}
		</script>
	</body>
</html>
