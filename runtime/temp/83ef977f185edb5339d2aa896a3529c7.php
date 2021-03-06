<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:40:"./themes/default/index/user\upgrade.html";i:1570611931;}*/ ?>
<!DOCTYPE html>
<html>
<head>
<title>升级分销商</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<meta name="viewport" id="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no"/>
<link rel="stylesheet" href="/public/static/css/ydui.css" type="text/css"/>
<link rel="stylesheet" href="/public/static/css/demo.css" type="text/css"/>
<link href="/public/static/css/reset.css" rel="stylesheet" type="text/css">
<link href="/public/static/css/receiving-adress.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/public/static/js/jquery-1.8.3.min.js"></script>
<script src="/public/static/js/ydui.flexible.js"></script>
<script src="/public/static/js/layer/layer.js"></script>
<style>
#goods_list{
	height: 45px;
    width: 100%;
    line-height: 45px;
    display: block;
}
</style>
</head>
<body>
<div class="near-box">
	<div class="header">
		<a href="javascript:;" onclick="history.go(-1)" class="left"></a>
		升级分销商
	</div>
	<div class="bigbox">
		 <div class="receiv-text1" style="color:red;">说明：给体验用户升级将扣除相应数量的积分！</div>
		 <div class="receiv-box1"><input type="text" id="user_phone" name="user_phone" value="" class="receiv-input1" placeholder="请输入会员账号/手机号"></div>
		 <div class="receiv-box1 select">
			<select name="goods" id="goods_list">
				<option value="0">请选择商品</option>
				<?php if(is_array($goods_list) || $goods_list instanceof \think\Collection || $goods_list instanceof \think\Paginator): $i = 0; $__LIST__ = $goods_list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
					<option value="<?php echo $vo['goods_id']; ?>"><?php echo $vo['name']; ?>&nbsp;￥<?php echo $vo['price']; ?></option>
				<?php endforeach; endif; else: echo "" ;endif; ?>
			</select>
		</div>
		 <div class="receiv-text1">填写升级用户正确收货信息！</div>
		 <!-- <input type="hidden" name="address_id" id="address_id" value="<?php echo \think\Request::instance()->param('id'); ?>"> -->
         <div class="receiv-box1"><input id="name" type="text" name="name" value="" class="receiv-input1" placeholder="收货人姓名（请使用真实姓名）"></div>
         <div class="receiv-box1"><input type="number" id="telephone" name="telephone" value="" class="receiv-input1" placeholder="手机号码"></div>
         <div class="delivery-layer-box">
    		<div class="cell-item">
				<div class=" cell-arrow">
					<a href="javascript:;" class="btn btn-info btn-lg active" role="button" id="sel_city">点击选取省市区县</a>
					<input type="hidden" id="province_id" value="" />
					<input type="hidden" id="city_id" value="" />
					<input type="hidden" id="country_id" value="" />
				</div>
            </div>
	    </div>
	    <div class="receiv-box2"><textarea id="address" class="receiv-input2" placeholder="详细地址"></textarea></div>
         <button id="edit" onclick="sub()" class="set-text1">确认提交</button>
	</div>

</div>
<script src="/public/static/js/picker.min.js"></script>
<script>
function sub(){
	var user_phone = $('#user_phone').val();
	var name = $('#name').val();
	var telephone = $('#telephone').val();
	var address = $('#address').val();
	var province_id = $('#province_id').val();
	var city_id = $('#city_id').val();
	var country_id = $('#country_id').val();
	var goods = $('#goods_list option:selected').val();
	if(goods==0){
		layer.msg('请选择商品');
		return false;
	}
	if(user_phone==''){
		layer.msg('请输入会员账号或手机号');
		return false;
	}
	if(name == ''){
		layer.msg('请输入收货人姓名');
		return false;
	}
	if(telephone == ''){
		layer.msg('请输入联系电话');
		return false;
	}
	if(address == ''){
		layer.msg('请输入详细地址');
		return false;
	}
	
	$.ajax({
		type:'post',
		url:"<?php echo url('User/upgrade'); ?>",
		data:{
			user_phone:user_phone,
			name:name,
			telephone:telephone,
			address:address,
			province_id:province_id,
			city_id:city_id,
			country_id:country_id,
			goods:goods
		},
		success:function(msg){
			if (msg.success) {
				layer.msg(msg.text);
				setTimeout('url()',1000);
			} else {
				layer.msg(msg.text);
			}
		}
	});
}
var city = <?php echo json_encode($area); ?>;
	var nameEl = document.getElementById('sel_city');
	
	var first = []; /* 省，直辖市 */
	var second = []; /* 市 */
	var third = []; /* 镇 */
	
	var selectedIndex = [0, 0, 0]; /* 默认选中的地区 */
	
	var checked = [0, 0, 0]; /* 已选选项 */
	
	function creatList(obj, list){
	  obj.forEach(function(item, index, arr){
	  var temp = new Object();
	  temp.text = item.name;
	  temp.value = index;
	  list.push(temp);
	  })
	}
	
	creatList(city, first);
	
	if (city[selectedIndex[0]].hasOwnProperty('sub')) {
	  creatList(city[selectedIndex[0]].sub, second);
	} else {
	  second = [{text: '', value: 0}];
	}
	
	if (city[selectedIndex[0]].sub[selectedIndex[1]].hasOwnProperty('sub')) {
	  creatList(city[selectedIndex[0]].sub[selectedIndex[1]].sub, third);
	} else {
	  third = [{text: '', value: 0}];
	}
	
	var picker = new Picker({
	    data: [first, second, third],
		selectedIndex: selectedIndex,
	    title: '地址选择'
	});
	
	picker.on('picker.select', function (selectedVal, selectedIndex) {
	  var text1 = first[selectedIndex[0]].text;
	  var text2 = second[selectedIndex[1]].text;
	  var text3 = third[selectedIndex[2]] ? third[selectedIndex[2]].text : '';
	
	    nameEl.innerText = text1 + ' ' + text2 + ' ' + text3;
	});
	
	picker.on('picker.change', function (index, selectedIndex) {
	  if (index === 0){
	    firstChange();
	  } else if (index === 1) {
	    secondChange();
	  }
	
	function firstChange() {
	    second = [];
	    third = [];
	    checked[0] = selectedIndex;
	    var firstCity = city[selectedIndex];
	    if (firstCity.hasOwnProperty('sub')) {
	      creatList(firstCity.sub, second);
	
	      var secondCity = city[selectedIndex].sub[0]
	      if (secondCity.hasOwnProperty('sub')) {
	        creatList(secondCity.sub, third);
	      } else {
	        third = [{text: '', value: 0}];
	        checked[2] = 0;
	      }
	    } else {
	      second = [{text: '', value: 0}];
	      third = [{text: '', value: 0}];
	      checked[1] = 0;
	      checked[2] = 0;
	    }
	
	    picker.refillColumn(1, second);
	    picker.refillColumn(2, third);
	    picker.scrollColumn(1, 0)
	    picker.scrollColumn(2, 0)
	  }
	
	function secondChange() {
	    third = [];
	    checked[1] = selectedIndex;
	    var first_index = checked[0];
	    if (city[first_index].sub[selectedIndex].hasOwnProperty('sub')) {
	      var secondCity = city[first_index].sub[selectedIndex];
	      creatList(secondCity.sub, third);
	      picker.refillColumn(2, third);
	      picker.scrollColumn(2, 0)
	    } else {
	      third = [{text: '', value: 0}];
	      checked[2] = 0;
	      picker.refillColumn(2, third);
	      picker.scrollColumn(2, 0)
	    }
	  }
	
	});
	
	picker.on('picker.valuechange', function (selectedVal, selectedIndex) {
		$('#province_id').val(city[selectedVal[0]]['id']);
		$('#city_id').val(city[selectedVal[0]]['sub'][selectedVal[1]]['id']);
		$('#country_id').val(city[selectedVal[0]]['sub'][selectedVal[1]]['sub'][selectedVal[2]]['id']);
	});
	
	nameEl.addEventListener('click', function () {
	    picker.show();
	});
</script>
</body>
</html>