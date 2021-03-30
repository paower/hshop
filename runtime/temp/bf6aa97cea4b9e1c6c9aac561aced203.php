<?php if (!defined('THINK_PATH')) exit(); /*a:2:{s:42:"./themes/default/index/index\classify.html";i:1569810027;s:72:"C:\phpStudy\PHPTutorial\WWW\hshop2\themes\default\index\public\foot.html";i:1569501494;}*/ ?>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<meta name="viewport" id="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no" />
		<link href="/public/static/css/reset.css" rel="stylesheet" type="text/css">
		<link href="/public/static/css/classify.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="/public/static/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="/public/static/js/vue.js"></script>
		<script src="/public/static/js/layer/layer.js"></script>
	</head>
	<body>
		<div class="near-box">
			<div class="yx-index-top">
			<div class="index-top-box2">
					 <span class="fresh-toptext1">分类</span>
				 </div>
				<a href="<?php echo url('search'); ?>" class="index-top-box1">
					<span class="index-top-img1"><img src="/public/static/picture/search3.png" alt=""></span>
				</a>
			</div>
			<div class="classify-bigbox">
				<div class="classify-left">
					<div class="classify-perch"></div>
					<span class="classify-text1" v-bind:class="{'pitch-on2':isPcate}" v-on:click="switchMenu(0)">全部</span>
					<span v-for="(item,index) in categoryParent" class="classify-text1" v-on:click="changePitch(index),switchMenu(item.id)" v-bind:class="{'pitch-on2':index == pitchIndex}">{{item.name}}</span>
					<div class="classify-perch2"></div>
				</div>
				<div class="classify-right content2">
					<div class="classify-perch-r"></div>
					<div class="classify-right-title">
						<span class="classifyrt-text1" v-on:click="comprehensive()" v-bind:class="{'tcolor-yellow':isColor}">综合排序</span>
						<span class="classifyrt-text1 price" v-on:click="changePrice()">按价格
							<i class="sort-img" v-bind:class="{'img3':isImg3,'sort-img2':isImg2}"></i>
						</span>
						<span class="classifyrt-text1 list-show" v-on:click="showSub()">分类</span>
					</div>
					<div class="classify-list" v-show="show">
						<span class="classify-list-text1" v-bind:class="{'pitch-on-cl':isPitch}" v-on:click="changeAll()">全部分类</span>
						<span class="classify-list-text1" v-for="(item,index) in categorySub" v-on:click="changeSub(item.id,index)" v-bind:class="{'pitch-on-cl':index == pitchIndex2}">{{item.name}}</span>
					</div>
					<!--商品列表循环-->
					<div class="classify-box1" v-for="(item,index) in goodsList">
						<a v-bind:href="'<?php echo url("goods/details"); ?>?id='+item.goods_id" class="classify-box1-img1"><img v-bind:src="'/public/uploads/'+item.image" alt=""></a>
						<div class="classify-box2">
							<a v-bind:href="'<?php echo url("goods/details"); ?>?id='+item.goods_id" class="classify-box2-text1">{{item.name}}</a>
							<span class="classify-box2-text2">零售价：￥{{item.retail_price}}</span>
							<span class="classify-box2-text2">分销价：￥{{item.price}}</span>
						</div>
					</div>
					<!--商品列表循环-->
					<div class="classify-perch2"></div>
				</div>
			</div>
		</div>
		<!--底部-->
		<?php if($upgrade_conditions!=1): ?>
<style>
    .kaola-bottom-box1{
        width: 25% !important;
    }
</style>
<?php endif; ?>
<div class="kaola-bottom">
    <a href="<?php echo url('index'); ?>" class="kaola-bottom-box1" id="home">
        <span class="kaola-bottom-img1"><img src="/public/static/picture/home2.png"></span>
        <span class="kaola-bottom-text1">首页</span>
    </a>
    <a href="<?php echo url('classify'); ?>" class="kaola-bottom-box1" id="cate">
        <span class="kaola-bottom-img1"><img src="/public/static/picture/classification.png"></span>
        <span class="kaola-bottom-text1">分类</span>
    </a>
    <a href="<?php echo url('shpcart'); ?>" class="kaola-bottom-box1" id="cart">
        <span class="kaola-bottom-img1"><img src="/public/static/picture/shop-cart1.png"></span>
        <span class="kaola-bottom-text1 ">购物车</span>
    </a>
    <?php if($upgrade_conditions==1): ?>
        <a href="<?php echo url('index/upgrade'); ?>" class="kaola-bottom-box1">
            <span class="kaola-bottom-img1"><img src="/public/static/picture/shop-cart1.png"></span>
            <span class="kaola-bottom-text1 ">我要分销</span>
        </a>
    <?php endif; ?>
    <a href="<?php echo url('pcenter'); ?>" class="kaola-bottom-box1" id="my">
        <span class="kaola-bottom-img1"><img src="/public/static/picture/people1.png"></span>
        <span class="kaola-bottom-text1">我的</span>
    </a>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        var path = window.location.pathname;
        var home = $('#home').attr('href');
        var cate = $('#cate').attr('href');
        var cart = $('#cart').attr('href');
        var my = $('#my').attr('href');
        if(path==home||path=='/'){
            $('#home').find('img').attr('src','/public/static/picture/home.png');
            $('#home').find('.kaola-bottom-text1').addClass('text2');
        }else if(path==cate){
            $('#cate').find('img').attr('src','/public/static/picture/classification1.png');
            $('#cate').find('.kaola-bottom-text1').addClass('text2');
        }else if(path==cart){
            $('#cart').find('img').attr('src','/public/static/picture/shop-cart2.png');
            $('#cart').find('.kaola-bottom-text1').addClass('text2');
        }else if(path==my||path=='/index/index/pcenter'){
            $('#my').find('img').attr('src','/public/static/picture/people2.png');
            $('#my').find('.kaola-bottom-text1').addClass('text2');
        }

    });
</script>

		<script type="text/javascript">
			var vue = new Vue({
				el: '.classify-bigbox',
				data: {
					categoryParent: '',
					pitchIndex: -1,
					pitchIndex2: -1,
					categorySub: '',
					show: false,
					goodsList: '',
					isPitch: true,
					isPcate:true,
					initial: '',
					isImg2: false,
					isImg3: false,
					isColor: false,
				},
				mounted() {
					var _self = this;
					$.ajax({
						url: "<?php echo url('Index/classify'); ?>",
						type: 'POST',
						data:{
							type: 1,
						},
						success: function(msg) {
							_self.categoryParent = msg.categoryParent;
							_self.switchMenu(0);
						}
					});
				},
				methods: {
					showSub(){
						this.show = !this.show;
					},
					changePrice(){
						if(this.isImg2 == false && this.isImg3 == false){
							this.isImg3 = !this.isImg3;
							this.isColor = false;
							this.sortPrice();
							return;
						}
						this.isImg2 = !this.isImg2;
						this.isImg3 = !this.isImg3;
						this.isColor = false;
						this.sortPrice();
					},
					comprehensive(){
						var _self = this;
						if(!_self.isColor){
							layer.load(1);
							setTimeout(function(){
								_self.isImg2 = false;
								_self.isImg3 = false;
								_self.isColor = !_self.isColor;
								_self.goodsList = _self.goodsList.sort(_self.sortBy('goods_id',2));
								layer.closeAll('loading');
							}, 200);
						}
					},
					sortPrice(){
						var _self = this;
						var order = 0;
						if(_self.isImg2){
							order = 1;//desc
						}
						if(_self.isImg3){
							order = 2;//asc
						}
						layer.load(1);
						setTimeout(function(){
							_self.goodsList = _self.goodsList.sort(_self.sortBy('price',order));
							layer.closeAll('loading');
						}, 200);
					},
					sortBy(key,type){
						if(type == 2){
							type = -1;
						}
						return function(a,b){
							a = a[key];
							b = b[key];
							if(a < b){
								return type * -1;
							}
							if(a > b){
								return type * 1;
							}
							return 0;
						}
					},
					changeAll(){
						var _self = this;
						if(!_self.isPitch){
							layer.load(1);
							setTimeout(function(){
								_self.goodsList = _self.initial;
								_self.isPitch = true;
								_self.pitchIndex2 = -1;
								_self.show = !_self.show;
								_self.isImg2 = false;
								_self.isImg3 = false;
								_self.isColor = false;
								layer.closeAll('loading');
							}, 200);
						}
					},
					changeSub(id,index){
						var _self = this;
						_self.show = !_self.show;
						_self.pitchIndex2 = index;
						_self.isPitch = false;
						_self.isImg2 = false;
						_self.isImg3 = false;
						_self.isColor = false;
						$.ajax({
							url: "<?php echo url('Index/classify'); ?>",
							type: 'POST',
							data:{
								type: 2,
								id: id
							},
							success: function(msg) {
								layer.load(1);
								setTimeout(function(){
									_self.goodsList = msg.goodsList;
									layer.closeAll('loading');
								}, 200);
							}
						});
					},
					switchMenu(id){
						var _self = this;
						if(id!=0){
							_self.isPcate = false;
						}else{
							_self.isPcate = true;
							_self.pitchIndex = -1;
						}
						_self.show = false;
						_self.isPitch = true;
						_self.pitchIndex2 = -1;
						_self.isImg2 = false;
						_self.isImg3 = false;
						_self.isColor = false;
						$.ajax({
							url: "<?php echo url('Index/classify'); ?>",
							type: 'POST',
							data:{
								type: 2,
								id: id
							},
							success: function(msg) {
								layer.load(1);
								setTimeout(function(){
									_self.categorySub = msg.categorySub;
									_self.goodsList = msg.goodsList;
									_self.initial = msg.goodsList;
									
									layer.closeAll('loading');
								}, 200);
							}
						});
					},
					changePitch(index){
						this.pitchIndex = index;
					},
				}
			})
		</script>
	</body>
</html>
