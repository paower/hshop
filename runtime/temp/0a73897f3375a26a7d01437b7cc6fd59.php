<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:38:"./shop/admin\view\settings\reward.html";i:1570452972;s:46:"D:\web\hshop2\shop\admin\view\public\base.html";i:1562121180;}*/ ?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title><?php echo \think\Config::get('SITE_NAME'); ?>-后台管理中心</title>

		<meta name="description" content="<?php echo \think\Config::get('SITE_NAME'); ?>" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="/public/static/js/bt/bootstrap.min.css" />
		<link rel="stylesheet" href="/public/static/view_res/admin/ace/font-awesome/4.2.0/css/font-awesome.min.css" />
		
		<!--城市选择器-->
		<!--<link rel="stylesheet" href="/public/static/css/pick-pcc.min.1.0.1.css">-->

		<!-- ace styles -->
		<link rel="stylesheet" href="/public/static/view_res/admin/ace/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="/public/static/view_res/admin/ace/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="/public/static/view_res/admin/ace/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="/public/static/view_res/admin/ace/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="/public/static/view_res/admin/ace/js/html5shiv.min.js"></script>
		<script src="/public/static/view_res/admin/ace/js/respond.min.js"></script>
		<![endif]-->
		<style>
			.table thead > tr > td, .table tbody > tr > td {
			    vertical-align: middle;
			}	
			.table thead td span[data-toggle="tooltip"]:after, label.control-label span:after {
				font-family: FontAwesome;
				color: #1E91CF;
				content: "\f059";
				margin-left: 4px;
			}
		</style>
		
		
			
		
		
		
		<script src="/public/static/js/jquery/jquery-2.0.3.min.js"></script>
		<script src="/public/static/js/jquery/jquery-migrate-1.2.1.min.js"></script>
			
		
		<script src="/public/static/artDialog/artDialog.js"></script>
		<link href="/public/static/artDialog/skins/default.css" rel="stylesheet" type="text/css" />			
		
		<script>
			var filemanager_url="<?php echo url('admin/FileManager/index'); ?>";
		</script>
		<script src="/public/static/js/oscshop_common.js"></script>
	</head>

	<body class="no-skin">
		<div id="navbar" class="navbar navbar-default    navbar-collapse       h-navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="<?php echo url('admin/Index/index'); ?>" class="navbar-brand">
						<small>							
							<?php echo \think\Config::get('SITE_NAME'); ?> 后台管理
						</small>
					</a>
					<button class="pull-right navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#sidebar">
						<span class="sr-only">Toggle sidebar</span>

						<span class="icon-bar"></span>

						<span class="icon-bar"></span>

						<span class="icon-bar"></span>
					</button>
				</div>

				<div class="navbar-buttons navbar-header pull-right  collapse navbar-collapse" role="navigation">
					<ul class="nav ace-nav">

						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								
								<span class="user-info">
									<?php echo session('user_auth.username'); ?>
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								
								<li>
									<a target="_blank" href="<?php echo \think\Request::instance()->root(true); ?>">网站前台</a>
								</li>
								
								<li>
									<a href="<?php echo url('admin/User/edit',array('id'=>session('user_auth.uid'))); ?>">修改密码</a>
								</li>
								
								<li><a href="<?php echo url('admin/Index/clear'); ?>">清空缓存</a></li>

								<li>
									<a href="<?php echo url('admin/Index/logout'); ?>">退出系统</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>

			
			</div><!-- /.navbar-container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>
			
			<div id="sidebar" class="sidebar h-sidebar navbar-collapse collapse">
				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
				</script>
				
				<ul class="nav nav-list">
					<li class="hover">
						<a target="_blank" href="<?php echo \think\Request::instance()->root(true); ?>">
							<i class="menu-icon fa fa fa-home fa-lg"></i>
							<span class="menu-text">前台 </span>
							<b class="arrow fa fa-angle-down"></b>
						</a>
						<b class="arrow"></b>
					</li>
					
					<?php if(is_array($admin_menu) || $admin_menu instanceof \think\Collection || $admin_menu instanceof \think\Paginator): $i = 0; $__LIST__ = $admin_menu;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$m): $mod = ($i % 2 );++$i;?>					
					<li class="hover <?php if(isset($breadcrumb1) AND ($breadcrumb1 == $m["title"])): ?> active open <?php endif; ?>">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa <?php echo $m['icon']; ?>"></i>
							<span class="menu-text"> <?php echo $m['title']; ?> </span>
							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>
						<?php if(isset($m['children'])): ?>
						<ul class="submenu">
							
							<?php if(is_array($m['children']) || $m['children'] instanceof \think\Collection || $m['children'] instanceof \think\Paginator): if( count($m['children'])==0 ) : echo "" ;else: foreach($m['children'] as $key=>$vo): ?>   
							<li class="hover">
								<a href="<?php echo \think\Request::instance()->root(true); ?>/<?php echo $vo['url']; ?>">
									<i class="menu-icon fa fa-caret-right"></i>
									<?php echo $vo['title']; if(isset($vo['children'])): ?>
										<b class="arrow fa fa-angle-down"></b>
									<?php endif; ?>
								</a>

								<b class="arrow"></b>
								
									<?php if(isset($vo['children'])): ?>
										<ul class="submenu">
											<?php if(is_array($vo['children']) || $vo['children'] instanceof \think\Collection || $vo['children'] instanceof \think\Paginator): if( count($vo['children'])==0 ) : echo "" ;else: foreach($vo['children'] as $key=>$v2): ?> 
												<li class="hover">
													<a href="<?php echo \think\Request::instance()->root(true); ?>/<?php echo $v2['url']; ?>">
														<i class="menu-icon fa fa-caret-right"></i>
														<?php echo $v2['title']; ?>
													</a>
			
													<b class="arrow"></b>
												</li> 
											<?php endforeach; endif; else: echo "" ;endif; ?> 
										</ul>	
									<?php endif; ?>
								
							</li>
							<?php endforeach; endif; else: echo "" ;endif; ?>
							
						</ul>
						<?php endif; ?>
					</li>
					<?php endforeach; endif; else: echo "" ;endif; ?>
					
				</ul><!-- /.nav-list -->

				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
				</script>
			</div>

			<div class="main-content">
				<div class="main-content-inner">
					<div class="page-content">
						
<div class="page-header">
	<h1>
		<?php echo $breadcrumb1; ?>
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			<?php echo $breadcrumb2; ?>
		</small>
	</h1>
</div>
<div class="row">
	<div class="col-xs-12">
		<div class="form-horizontal">

			<legend>奖励参数 </legend>
			<!-- <div class="form-group"> -->
				<!-- <label class="col-sm-2 control-label no-padding-left">升级所需积分 </label> -->
				<!-- <div class="col-sm-10"> -->
					<!-- <div class="clearfix"> -->
						<!-- <input class="col-xs-10 col-sm-10 form-control" name="upgrade_price" type="text" value="<?php echo $upgrade_price; ?>"> -->
					<!-- </div> -->
				<!-- </div> -->
			<!-- </div> -->

			<div class="form-group">
				<label class="col-sm-2 control-label no-padding-left">升级零售奖(%) </label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="col-xs-10 col-sm-10 form-control" name="upgrade_retail" type="text" value="<?php echo $upgrade_retail; ?>">
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label no-padding-left">升级批发奖(%) </label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="col-xs-10 col-sm-10 form-control" name="upgrade_wholesale" type="text" value="<?php echo $upgrade_wholesale; ?>">
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label no-padding-left">给会员升级分销商折扣(折) </label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="col-xs-10 col-sm-10 form-control" name="fenxiao_discount" type="text" value="<?php echo $fenxiao_discount; ?>">
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="col-sm-2 control-label no-padding-left">分销价区零售奖(%) </label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="col-xs-10 col-sm-10 form-control" name="pingjia_retail" type="text" value="<?php echo $pingjia_retail; ?>">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label no-padding-left">分销价区批发奖(%) </label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="col-xs-10 col-sm-10 form-control" name="pingjia_wholesale" type="text" value="<?php echo $pingjia_wholesale; ?>">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label no-padding-left">团购区零售奖(%)</label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="col-xs-10 col-sm-10 form-control" name="tuan_retail" type="number" value="<?php echo $tuan_retail; ?>">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label no-padding-left">团购区批发奖(%)</label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="col-xs-10 col-sm-10 form-control" name="tuan_wholesale" type="number" value="<?php echo $tuan_wholesale; ?>">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label no-padding-left">0元抢购零售奖(%)</label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="col-xs-10 col-sm-10 form-control" name="qiang_retail" type="number" value="<?php echo $qiang_retail; ?>">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label no-padding-left">0元抢购批发奖(%)</label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="col-xs-10 col-sm-10 form-control" name="qiang_wholesale" type="number" value="<?php echo $qiang_wholesale; ?>">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label no-padding-left">收益手续费(%)</label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="col-xs-10 col-sm-10 form-control" name="shouyi_cost" type="number" value="<?php echo $shouyi_cost; ?>">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label no-padding-left">最低提现</label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="col-xs-10 col-sm-10 form-control" name="tixian_min" type="number" value="<?php echo $tixian_min; ?>">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label no-padding-left">合伙股东名下总销量收益(%)</label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="col-xs-10 col-sm-10 form-control" name="jiamengshang" type="number" value="<?php echo $jiamengshang; ?>">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label no-padding-left">区代理名下总销量收益(%) </label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="col-xs-10 col-sm-10 form-control" name="qudaili" type="number" value="<?php echo $qudaili; ?>">
					</div>
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-1 control-label no-padding-left"> </label>
			<div class="col-sm-11">
				<button form="form" type="submit" id="send" class="btn btn-sm btn-primary">提交</button>
			</div>
		</div>
	</div>
</div>

					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->



			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if IE]>
		<script type="text/javascript">
		 window.jQuery || document.write("<script src='/public/static/view_res/admin/ace/js/jquery1x.min.js'>"+"<"+"/script>");
		</script>
		<![endif]-->

		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='/public/static/view_res/admin/ace/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
		<script type="text/javascript">
		 window.jQuery || document.write("<script src='/public/static/view_res/admin/ace/js/jquery1x.min.js'>"+"<"+"/script>");
		</script>
		<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='/public/static/view_res/admin/ace/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="/public/static/js/bt/bootstrap.min.js"></script>

		<!-- ace scripts -->
		<script src="/public/static/view_res/admin/ace/js/ace-elements.min.js"></script>
		<script src="/public/static/view_res/admin/ace/js/ace.min.js"></script>

		
<script>
	$(function() {
		Oscshop.setValue("storage_user_action", '<?php echo \think\Config::get('storage_user_action'); ?>');
		Oscshop.setValue("member_login_type", '<?php echo \think\Config::get('member_login_type'); ?>');
		Oscshop.setValue("reg_check", '<?php echo \think\Config::get('reg_check'); ?>');
	});
	$('#send').click(function() {
		$.post(
			"<?php echo url('Settings/savejl'); ?>",
			$(
				'input[type=\'text\'],input[type=\'number\'],input[type=\'hidden\'],input[type=\'radio\']:checked,textarea,select'
			),
			function(d) {
				art.dialog({
					content: d.success,
					lock: true,
					ok: function() {
						reloadPage(window);
						return false;
					}
				});
			}
		);
	});
</script>

	</body>
</html>
