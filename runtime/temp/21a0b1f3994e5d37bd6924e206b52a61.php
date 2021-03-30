<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:36:"./shop/admin\view\goods\general.html";i:1570871138;s:46:"D:\web\hshop2\shop\admin\view\public\base.html";i:1562121180;}*/ ?>
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
		<small>
			<i class="ace-icon fa fa-angle-double-right"></i>
			<?php echo $crumbs; ?>
		</small>			
	<button type="submit" style="float:right;" id='send' form="form-goods"  class="btn button btn-sm btn-primary">提交</button>
	</h1>
</div>
	<div class="row">
	<div class="col-xs-12">	
		<div class="panel-body">
        <form action="<?php echo url('Goods/edit_general'); ?>" method="post" enctype="multipart/form-data" id="form-goods" class="form-horizontal">
        
        <?php if(\think\Request::instance()->param('id')): ?>
			<input name="goods_id" type="hidden" value="<?php echo \think\Request::instance()->param('id'); ?>" />
		<?php endif; ?>
          <ul class="nav nav-tabs">
          	
          	<li class="active"><a href="#tab-data" data-toggle="tab">基本信息</a></li>
			<li><a href="#tab-general" data-toggle="tab">商品描述</a></li>
			<?php if($goods['modelis'] == 2): ?>
			<li><a href="#tab-time" data-toggle="tab">抢购时间</a></li>
			<?php endif; ?>
          </ul>
          <div class="tab-content">
          		
	          	<!-- 基本信息 START -->
	          	<div class="tab-pane active" id="tab-data">
	          		
	          		<div class="form-group required">
		                <label class="col-sm-2 control-label" for="input-image">
		                <span title="" data-toggle="tooltip" data-original-title="上传800x800的图片">缩略图：</span>
		                </label>
		                
		                <div class="col-sm-10" id="thumb">
		                  <a id="thumb-image" href="#" data-toggle="image" class="img-thumbnail">
		                  		<?php if(!empty($goods['image'])): ?>
		                  			<img src="/public/uploads/<?php echo $goods['image']; ?>" style="width:100px"/>
			                  	<?php else: ?>
			                  		<img src="/public/static/image/no_image_100x100.jpg" />
			                  	<?php endif; ?>
								</a>
		                  <input type="hidden" name="image" value="<?php echo $goods['image']; ?>" id="input-image" />
		            </div>
		            
		            </div>   
		            
		            <div class="form-group required">
						<label class="col-sm-2 control-label" for="input-name2">商品名称：</label>
						<div class="col-sm-10">
							<input id="input-name2" class="form-control" type="text" placeholder="商品名称" value="<?php echo $goods['name']; ?>" name="name">
						</div>
					</div>
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-name2">视频链接：</label>
						<div class="col-sm-10">
							<input id="input-name2" class="form-control" type="text" placeholder="视频链接" value="<?php echo $goods['video']; ?>" name="video">
						</div>
					</div>
		            <div class="form-group">
						<label class="col-sm-2 control-label" for="input-length-class">所属模块：</label>
						<div class="col-sm-10">
							
							<select id="modelis" class="form-control" name="modelis" >
									<option value="1" <?php if($goods['modelis'] == 1): ?>selected<?php endif; ?>>分销价区</option>
									<option value="2" <?php if($goods['modelis'] == 2): ?>selected<?php endif; ?>>0元抢购</option>
									<option value="3" <?php if($goods['modelis'] == 3): ?>selected<?php endif; ?>>1元礼品</option>
									<option value="4" <?php if($goods['modelis'] == 4): ?>selected<?php endif; ?>>团购区</option>
									<option value="5" <?php if($goods['modelis'] == 5): ?>selected<?php endif; ?>>升级商品</option>
							</select>
						</div>
					</div>
		            <div class="form-group required">
						<label class="col-sm-2 control-label" for="input-meta-title2">商品型号：</label>
						<div class="col-sm-10">
							<input id="input-meta-title2" class="form-control" type="text" placeholder="商品型号" value="<?php echo $goods['model']; ?>" name="model">
						</div>
					</div>
					
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-meta-title2">库存单位：</label>
						<div class="col-sm-10">
							<input id="input-meta-title2" class="form-control" type="text" placeholder="库存单位" value="<?php echo $goods['sku']; ?>" name="sku">
						</div>
					</div>
					
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-meta-title2">生产地：</label>
						<div class="col-sm-10">
							<input id="input-meta-title2" class="form-control" type="text" placeholder="商品位置" value="<?php echo $goods['location']; ?>" name="location">
						</div>
					</div>
					
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-meta-title2">零售价格：</label>
						<div class="col-sm-10">
							<input id="input-meta-title2" class="form-control" type="text" placeholder="零售价格" value="<?php echo $goods['retail_price']; ?>" name="retail_price">
						</div>
					</div>
					
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-meta-title2" id="modelistext">
						<?php if($goods['modelis']==2): ?>
						抢购价格
						<?php elseif($goods['modelis']==3): ?>
						礼品价格
						<?php elseif($goods['modelis']==4): ?>
						团购价格
						<?php elseif($goods['modelis']==5): ?>
						优惠价格
						<?php else: ?>
						分销价格
						<?php endif; ?>
						：</label>
						<div class="col-sm-10">
							<input id="input-meta-title2" class="form-control" type="text" placeholder="价格" value="<?php echo $goods['price']; ?>" name="price">
						</div>
					</div>
					
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-meta-title2">商品数量：</label>
						<div class="col-sm-10">
							<input id="input-meta-title2" class="form-control" type="text" placeholder="商品数量" value="<?php echo $goods['quantity']; ?>" name="quantity">
						</div>
					</div>
					
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-meta-title2">购买可得购物券：</label>
						<div class="col-sm-10">
							<input id="input-meta-title2" class="form-control" type="text" placeholder="购买可得购物券" value="<?php echo $goods['points']; ?>" name="points">
						</div>
					</div>
					
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-meta-title2">兑换所需购物券：</label>
						<div class="col-sm-10">
							<input id="input-meta-title2" class="form-control" type="text" placeholder="兑换所需购物券" value="<?php echo $goods['pay_points']; ?>" name="pay_points">
						</div>
					</div>
					
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-meta-title2">可用邀请名单：</label>
						<div class="col-sm-10">
							<input id="input-meta-title2" class="form-control" type="text" placeholder="可用邀请名单" value="<?php echo $goods['pay_number']; ?>" name="pay_number">
						</div>
					</div>

					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-meta-title2">最小订定量：</label>
						<div class="col-sm-10">
							<input id="input-meta-title2" class="form-control" type="text" placeholder="最小起定量" value="<?php echo $goods['minimum']; ?>" name="minimum">
						</div>
					</div>
					
					

					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-subtract">扣减库存：</label>
						
							<div class="col-sm-10">
								<label class="radio-inline">
								<input type="radio" checked="checked" value="1" name="subtract">是</label>
								<label class="radio-inline">
								<input type="radio" value="0" name="subtract">否</label>
							</div>
						
					</div>
		            
		           
					
					<div class="form-group">
						<label class="col-sm-2 control-label">需要配送：</label>
						<div class="col-sm-10">
							<label class="radio-inline">
							<input type="radio" checked="checked" value="1" name="shipping">是</label>
							<label class="radio-inline">
							<input type="radio" value="0" name="shipping">否</label>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label">是否爆款：</label>
						<div class="col-sm-10">
							<label class="radio-inline">
							<input type="radio" checked="checked" value="1" name="popular">是</label>
							<label class="radio-inline">
							<input type="radio" value="0" name="popular">否</label>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">是否推荐：</label>
						<div class="col-sm-10">
							<label class="radio-inline">
							<input type="radio" checked="checked" value="1" name="is_tuijian">是</label>
							<label class="radio-inline">
							<input type="radio" value="0" name="is_tuijian">否</label>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">可用优惠券：</label>
						<div class="col-sm-10">
							<label class="radio-inline">
							<input type="radio" checked="checked" value="1" name="is_coupon">是</label>
							<label class="radio-inline">
							<input type="radio" value="0" name="is_coupon">否</label>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">可用积分支付：</label>
						
							<div class="col-sm-10">
								<label class="radio-inline">
								<input type="radio" checked="checked" value="1" name="is_yue_goods">是</label>
								<label class="radio-inline">
								<input type="radio" value="0" name="is_yue_goods">否</label>
							</div>
						
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">可用购物券兑换：</label>
						<div class="col-sm-10">
							<label class="radio-inline">
							<input type="radio" checked="checked" value="1" name="is_points_goods">是</label>
							<label class="radio-inline">
							<input type="radio" value="0" name="is_points_goods">否</label>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">可用邀请名单：</label>
						<div class="col-sm-10">
							<label class="radio-inline">
							<input type="radio" checked="checked" value="1" name="is_number_goods">是</label>
							<label class="radio-inline">
							<input type="radio" value="0" name="is_number_goods">否</label>
						</div>
					</div>
					<div class="form-group required">
						<label class="col-sm-2 control-label" for="input-meta-title2">重量：</label>
						<div class="col-sm-10">
							<input id="input-meta-title2" class="form-control" type="text" placeholder="重量" value="<?php echo $goods['weight']; ?>" name="weight">
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-length-class">重量单位：</label>
						<div class="col-sm-10">
							
							<select id="input-length-class" class="form-control" name="weight_class_id">
								<?php if(is_array($weight_class) || $weight_class instanceof \think\Collection || $weight_class instanceof \think\Paginator): $i = 0; $__LIST__ = $weight_class;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?>
									<option <?php if(isset($goods)&&($v['weight_class_id'] == $goods['weight_class_id'])): ?>selected="selected"<?php endif; ?> value="<?php echo $v['weight_class_id']; ?>"  ><?php echo $v['title']; ?></option>
								<?php endforeach; endif; else: echo "" ;endif; ?>
							</select>
						</div>
					</div>
		            
		            <div class="form-group">
						<label class="col-sm-2 control-label" for="input-length">尺寸(L x W x H)：</label>
						<div class="col-sm-10">
							<div class="row">
								<div class="col-sm-4">
									<input id="input-length" class="form-control" type="text" placeholder="长度" value="<?php echo (isset($goods['length']) && ($goods['length'] !== '')?$goods['length']:''); ?>" name="length">
								</div>
								<div class="col-sm-4">
									<input id="input-width" class="form-control" type="text" placeholder="宽度" value="<?php echo (isset($goods['width']) && ($goods['width'] !== '')?$goods['width']:''); ?>" name="width">
								</div>
								<div class="col-sm-4">
									<input id="input-height" class="form-control" type="text" placeholder="高度" value="<?php echo (isset($goods['height']) && ($goods['height'] !== '')?$goods['height']:''); ?>" name="height">
								</div>
							</div>
						</div>
					</div>


					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-length-class">尺寸单位：</label>
						<div class="col-sm-10">
							
							<select id="input-length-class" class="form-control" name="length_class_id">
								<?php if(is_array($length_class) || $length_class instanceof \think\Collection || $length_class instanceof \think\Paginator): $i = 0; $__LIST__ = $length_class;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?>
									<option <?php if(isset($goods)&&($v['length_class_id'] == $goods['length_class_id'])): ?>selected="selected"<?php endif; ?> value="<?php echo $v['length_class_id']; ?>"><?php echo $v['title']; ?></option>
								<?php endforeach; endif; else: echo "" ;endif; ?>
							</select>
						</div>
					</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-length-class">运费模板：</label>
						<div class="col-sm-10">
							
							<select id="input-length-class" class="form-control" name="length_class_id">
								<option value="0" <?php if($goods['length_class_id']==0): ?>selected<?php endif; ?>>包邮</option>
								<?php if(is_array($transport) || $transport instanceof \think\Collection || $transport instanceof \think\Paginator): $i = 0; $__LIST__ = $transport;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
									<option value="<?php echo $vo['id']; ?>" <?php if($goods['length_class_id']==$vo['id']): ?>selected<?php endif; ?>><?php echo $vo['title']; ?></option>
								<?php endforeach; endif; else: echo "" ;endif; ?>
							</select>
						</div>
					</div>
		            
		            <div class="form-group">
						<label class="col-sm-2 control-label">商品状态：</label>
						<div class="col-sm-10">
							<label class="radio-inline">
							<input type="radio" checked="checked" value="1" name="status">启用</label>
							<label class="radio-inline">
							<input type="radio" value="2" name="status">停用</label>
						</div>
					</div>
		            
		            <div class="form-group required">
						<label class="col-sm-2 control-label" for="input-meta-title2">排序：</label>
						<div class="col-sm-10">
							<input id="input-meta-title2" class="form-control" type="text" placeholder="排序" value="<?php echo $goods['sort_order']; ?>" name="sort_order">
						</div>
					</div>
		            
	          	</div>
	          	<!-- 基本信息 END -->
	          	
	          	<!-- 商品描述  START -->
	          	<div class="tab-pane" id="tab-general">	          		
					
					<div class="form-group">
	                    <label class="col-sm-2 control-label" for="input-description">商品简介：</label>
	                    <div class="col-sm-10">
	                      <textarea name="description[summary]" class="form-control" rows="5" id="summary"><?php echo (isset($description['summary']) && ($description['summary'] !== '')?$description['summary']:''); ?></textarea>	
	                    </div>
                  	</div>
					
					<div class="form-group">
	                    <label class="col-sm-2 control-label" for="input-description">商品详情：</label>
	                    <div class="col-sm-10">
	                      <textarea name="description[description]" id="editor1"><?php echo (isset($description['description']) && ($description['description'] !== '')?$description['description']:''); ?></textarea>	
	                    </div>
                  	</div>
		
					
					<!-- <div class="form-group"> -->
						<!-- <label class="col-sm-2 control-label" for="input-meta-description2">Meta标签描述：</label> -->
						<!-- <div class="col-sm-10"> -->
							<!-- <textarea id="input-meta-description2" class="form-control" placeholder="Meta标签描述" rows="5" name="description[meta_description]"><?php echo (isset($description['meta_description']) && ($description['meta_description'] !== '')?$description['meta_description']:''); ?></textarea> -->
						<!-- </div> -->
					<!-- </div> -->
					<!-- <div class="form-group"> -->
						<!-- <label class="col-sm-2 control-label" for="input-meta-keyword2">Meta标签关键词：</label> -->
						<!-- <div class="col-sm-10"> -->
							<!-- <textarea id="input-meta-keyword2" class="form-control" placeholder="Meta标签关键词" rows="5" name="description[meta_keyword]"><?php echo (isset($description['meta_keyword']) && ($description['meta_keyword'] !== '')?$description['meta_keyword']:''); ?></textarea> -->
						<!-- </div> -->
					<!-- </div> -->
					
					
					
				  </div>
				  <div class="tab-pane" id="tab-time">	          		
					
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-description">开始时间：</label>
						<div class="col-sm-10">
							<div class="col-sm-4">
								<input id="input-length" class="form-control" type="text" placeholder="开始时间" value="<?php echo (isset($goods['qiangg_start_time']) && ($goods['qiangg_start_time'] !== '')?$goods['qiangg_start_time']:''); ?>" name="qiangg_start_time">
							</div>
						</div>
						</div>
					
					<div class="form-group">
						<label class="col-sm-2 control-label" for="input-description">结束时间：</label>
						<div class="col-sm-10">
							<div class="col-sm-4">
								<input id="input-length" class="form-control" type="text" placeholder="结束时间" value="<?php echo (isset($goods['qiangg_end_time']) && ($goods['qiangg_end_time'] !== '')?$goods['qiangg_end_time']:''); ?>" name="qiangg_end_time">
							</div>	
						</div>
						</div>
					</div>
	          	<!-- 商品描述 END -->  
	          	
        
          </div>
        </form>
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

			
<script src="/public/static/js/ckeditor/ckeditor.js"></script> 
<script type="text/javascript" charset="utf-8" src="/public/Ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="/public/Ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="/public/Ueditor/lang/zh-cn/zh-cn.js"></script>
<script>
$(function(){
	<?php if(\think\Request::instance()->param('id')): ?>
				Oscshop.setValue("status", <?php echo (isset($goods['status']) && ($goods['status'] !== '')?$goods['status']:1); ?>);		
				Oscshop.setValue("subtract",<?php echo (isset($goods['subtract']) && ($goods['subtract'] !== '')?$goods['subtract']:1); ?>);		
				Oscshop.setValue("shipping",<?php echo (isset($goods['shipping']) && ($goods['shipping'] !== '')?$goods['shipping']:1); ?>);
				Oscshop.setValue("popular",<?php echo (isset($goods['popular']) && ($goods['popular'] !== '')?$goods['popular']:1); ?>);
				Oscshop.setValue("is_coupon",<?php echo (isset($goods['is_coupon']) && ($goods['is_coupon'] !== '')?$goods['is_coupon']:1); ?>);
				Oscshop.setValue("is_number_goods",<?php echo (isset($goods['is_number_goods']) && ($goods['is_number_goods'] !== '')?$goods['is_number_goods']:1); ?>);
				Oscshop.setValue("is_points_goods",<?php echo (isset($goods['is_points_goods']) && ($goods['is_points_goods'] !== '')?$goods['is_points_goods']:1); ?>);
				Oscshop.setValue("is_yue_goods",<?php echo (isset($goods['is_yue_goods']) && ($goods['is_yue_goods'] !== '')?$goods['is_yue_goods']:1); ?>);
				
				Oscshop.setValue("is_tuijian",<?php echo (isset($goods['is_tuijian']) && ($goods['is_tuijian'] !== '')?$goods['is_tuijian']:1); ?>);
	<?php endif; ?>
});	
var ue = UE.getEditor('editor1', {
    toolbars: [
        [
            'undo', //撤销
            'bold', //加粗
            'underline', //下划线
            'preview', //预览
            'horizontal', //分隔线
            'inserttitle', //插入标题
            'cleardoc', //清空文档
            'fontfamily', //字体
            'fontsize', //字号
            'paragraph', //段落格式
            'simpleupload', //单图上传
            'insertimage', //多图上传
            'attachment', //附件
            'music', //音乐
            'inserttable', //插入表格
            'emotion', //表情
            'insertvideo', //视频
            'justifyleft', //居左对齐
            'justifyright', //居右对齐
            'justifycenter', //居中对
            'justifyjustify', //两端对齐
            'forecolor', //字体颜色
            'fullscreen', //全屏
            'edittip ', //编辑提示
            'customstyle', //自定义标题
            'template', //模板
            'source',//源代码
             ]
        ]
    ,scaleEnabled:true,initialFrameWidth: '100%',initialFrameHeight:430});
$('#send').click(function(){
	
	var name=$('input[name="name"]').val();
	// var summary = $('textarea[name="goods_description[summary]"]').val();
	
	if(name==''){
		alert('商品名称必填');
		return false;
	}	
	if(summary==''){
		alert('11');
		return false;
	}
	return true;
}); 

$('#modelis').change(function () {
   var ids =  $("#modelis option:selected").val();   
	if(ids==2){
		$('#modelistext').text('抢购价：');
	}else if(ids==3){
		$('#modelistext').text('礼品价：');
	}else if(ids==4){
		$('#modelistext').text('团购价：');
	}else{
		$('#modelistext').text('分销价格：');
	}
})
CKEDITOR.replace('description', {
	filebrowserImageUploadUrl: '<?php echo url("FileManager/ckupload"); ?>',	
	toolbar: [
				[ 'Source', 'Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript', '-', 'RemoveFormat' ],
				[ 'FontSize', 'TextColor', 'BGColor' ],
				[ 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock','Image','Format']
			]	
});

</script>

	</body>
</html>
