<?php
namespace app\index\controller;
use app\common\controller\HomeBase;
use think\Session;
use think\Db;
use exp\exp;
class Order extends HomeBase
{
    public function index()
    { 
    	return $this->fetch();
    }   
    
	//  生成订单
    public function orders()
    {
    	if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$data = input('param.');
		$goods_id = $data['id'];
		$num = $data['num'];
		$attribute = $data['attribute'];

		$goods = Db::name('goods')->where('goods_id',$goods_id)->find();
		$attribute_value = Db::name('attribute_value')->where('attribute_value_id','in',$attribute)->select();
		
		// $goods_discount = Db::name('goods_discount')->where('goods_id',$goods_id)->find();
		
		$address = Db::name('address')->where(['uid'=>Session::get('user_id'),'default'=>2])->find();
		if(!$address){
			$this->redirect('User/address');
		}
		$transport_id_sprice = 0;
		if($goods['length_class_id']!=0){
			$transport = Db::name('transport_extend')->where(array('transport_id'=>$goods['length_class_id']))->select();
			$transport_id_sprice = Db::name('transport_extend')->where(array('transport_id'=>$goods['length_class_id']))->order('id asc')->value('sprice');
			
			foreach($transport as $transkey=>$transvalue){
				if($transvalue['area_id']!=''){
					if(strpos($transvalue['top_area_id'],strval($address['province_id']))){
						$transport_id_sprice = $transvalue['sprice'];
						break;
					}
				}
			}
		}
		$vip_grade = Db::name('user')->where('user_id='.Session::get('user_id'))->value('vip_grade');
		if($vip_grade>1){
			// $goods_discount = false;
			$goodzprice = $goods['price'] * $num ;
		}else{
			if($goods['modelis']==5){
				$goodzprice = $goods['price'] * $num;
			}else{
				$goodzprice = $goods['retail_price'] * $num;
			}
		}
		$zprice = $goodzprice + $transport_id_sprice;
		
		$couponlist = Db::name('user_coupon')
		->alias('uc')
		->join('coupon c','c.coupon_id = uc.coupon_id')
		->where(['uc.uid'=>Session::get('user_id'),'uc.state'=>1])
		->select();
		
		$vip_grade = Db::name('user')->where(['user_id'=>Session::get('user_id')])->value('vip_grade');
		
		$this->assign([
			'vip_grade'=>$vip_grade,
			'goods'=>$goods,
			'num'=>$num,
			'attribute_value'=>$attribute_value,
			// 'goods_discount'=>$goods_discount,
			'goodzprice'=>$goodzprice,
			'freight'=>$transport_id_sprice,
			'zprice'=>$zprice,
			'address'=>$address,
			'couponlist'=>$couponlist
		]);
    	return $this->fetch();
    }
    
    //生成订单2
    public function ordersTwo()
    {
		$data = input('get.');
		
    	$cart_id = input('param.id');
    	$num = explode(',',chop(input('param.num'),','));
    	$c_id = explode(',',chop($cart_id,','));
    	if(count($num) == count($c_id)){
    		$id_len = count($c_id);
    		for($i = 0; $i < $id_len; $i++){
    			Db::name('cart')->where('cart_id',$c_id[$i])->update(['num'=>$num[$i]]);
    		}
    	}else{
    		echo "<script>
    			alert('商品对应数量出错！！');
    		</script>";die;
    	}
    	$goods = Db::name('cart')
		->alias('ca')
		->join('goods g','g.goods_id = ca.goods_id')
		->where('ca.cart_id','in',$cart_id)
		->select();
		$goodzprice = 0;
		$freight = 0;
		$coupon_count = 0;
		$address = Db::name('address')->where(['uid'=>Session::get('user_id'),'default'=>2])->find();
		if(empty($address)){
			$this->redirect('User/address');
		}
		// var_dump($address);die();
		foreach($goods as $key => $value){
			$goods_discount = Db::name('goods_discount')->where('goods_id',$value['goods_id'])->find();
			if($value['length_class_id']!=0){
				$freight_left = Db::name('transport_extend')->where(array('transport_id'=>$value['length_class_id']))->order('id asc')->value('sprice');
				$transport = Db::name('transport_extend')->where(array('transport_id'=>$value['length_class_id']))->select();				
				foreach($transport as $transkey=>$transvalue){
					if($transvalue['area_id']!=''){
						if(strpos($transvalue['top_area_id'],strval($address['province_id']))){
							$freight_left = $transvalue['sprice'];
							break;
						}
					}
				}
				
			}else{
				$freight_left = 0;
			}
			// var_dump($freight_left);
			if(!empty($goods_discount)){
				$goods[$key]['price'] = $goods_discount['price'];
			}
			$goodzprice += $value['num'] * $goods[$key]['price'];
			
			$attribute_value_arr = explode(',',chop($value['attribute_value_id'],','));
			$len = count($attribute_value_arr);
			$attribute_value = [];
			for($i = 0; $i < $len; $i++){
				$attribute_value[$i] = Db::name('attribute_value')->where('attribute_value_id',$attribute_value_arr[$i])->find();
			}
			$goods[$key]['attribute_value'] = $attribute_value;
			if($value['is_coupon']==1){
				$coupon_count++;
			}
			$freight+=$freight_left;
		}
		// var_dump($freight);die();
    	$zprice = $goodzprice + $freight;
    	
    	
		
		$couponlist = Db::name('user_coupon')
		->alias('uc')
		->join('coupon c','c.coupon_id = uc.coupon_id')
		->where(['uc.uid'=>Session::get('user_id'),'uc.state'=>1])
		->select();
		
    	$this->assign([
			'coupon_count'=>$coupon_count,
			'address'=>$address,
			'goods'=>$goods,
			'goodzprice'=>$goodzprice,
			'freight'=>$freight,
			'zprice'=>$zprice,
			'cart_id'=>$cart_id,
			'couponlist'=>$couponlist
		]);
    	return $this->fetch('orders2');
    }
    
    // 订单提交
    public function subOrder()
    {
    	if(request()->isPost()){
			$date=input('post.');
			if(isset($date['cart_id'])){
				$isDel = true;
				$cart_id = explode(',',chop($date['cart_id'],','));
			}else{
				$isDel = false;
			}
			if(isset($date['user_coupon_id'])){
				$user_coupon_id = $date['user_coupon_id'];
			}else{
				$user_coupon_id = 0;
			}
			$orderdata = $date['orderdata'];
			//$user_coupon_id = $date['user_coupon_id'];

			$lingdian = strtotime(date('Y-m-d',time()));
			$shier = $lingdian+86399;

			$goods_modelis = Db::name('goods')->where('goods_id',$date['goods_id'])->value('modelis');
			if($goods_modelis==2){

				$have = Db::name('order')
						->alias('o')
						->join('order_goods g','g.order_id=o.order_id')
						->where(['o.uid'=>Session::get('user_id'),'o.pay_time'=>array('between',array($lingdian,$shier)),'g.modelis'=>2])
						->count();
				if($have>0){
					return ['success'=>false,'text'=>'今日限购'];
				}
			}
		
			$return_points = 0;
			if(is_int($date['goods_id'])){
				$goods = Db::name('goods')->where('goods_id',$date['goods_id'])->find();
				$return_points = $goods['points'] * $orderdata[0][1];
			}else{
				$goods_id = chop($date['goods_id'],',');
				$goods_id = explode(',',$goods_id);
				$id_len = count($goods_id);
				for($i = 0; $i < $id_len; $i++){
					$goods = Db::name('goods')->where('goods_id',$goods_id[$i])->find();
					$return_points += $goods['points'] * $orderdata[$i][1];
				}
			}
			$is_points_goods = 0;
			$is_number_goods = 0;
			$is_yue_goods = 0;
			$pay_number = 0;
			$pay_points =0;
			$vip_grade = Db::name('user')->where('user_id',Session::get('user_id'))->value('vip_grade');
			$pid = Db::name('user')->where('user_id',Session::get('user_id'))->value('invitation_id');
			foreach($goods_id as $key=>$value){
				$is_goods = Db::name('goods')->where('goods_id',$value)->field('pay_number,pay_points,is_points_goods,is_number_goods,price,retail_price,modelis,is_yue_goods')->find();
				if($is_goods['is_points_goods']==1){
					$is_points_goods++;
					$pay_points+=$is_goods['pay_points'];
				}
				if($is_goods['is_yue_goods']==1){
					$is_yue_goods++;
				}
				if($is_goods['is_number_goods']==1){
					$is_number_goods++;
					$pay_number+=$is_goods['pay_number'];
				}
				if($vip_grade==1){
					$goods_price[] = $is_goods['retail_price'];
				}else{
					$goods_price[] = $is_goods['price'];
				}
				$modelis[] = $is_goods['modelis'];
				// if($is_goods['modelis']==5){
				// 	$this->isupgrade_order($is_goods['price'],Session::get('user_id'),$pid,$vip_grade);
				// }
			}
			
			$goods_count = count($goods_id);
			if($is_yue_goods!=$goods_count){
				$goods['is_yue_goods']=0;
			}else{
				$goods['is_yue_goods']=1;
			}
			if($is_points_goods!=$goods_count){
				$goods['is_points_goods']=0;
			}else{
				$goods['is_points_goods']=1;
				$goods['pay_points'];
			}
			if($is_number_goods!=$goods_count){
				$goods['is_number_goods']=0;
			}else{
				$goods['is_number_goods']=1;
				$goods['pay_number'];
			}
			$address = Db::name('address')->where('address_id',$date['address_id'])->find();
			$user = Db::name('user')->where('user_id',Session::get('user_id'))->find();
			
			$order = [
				'order_num_alias'=>time().rand(10000,99999),
				'uid'=>Session::get('user_id'),
				'return_points'=>$return_points,
				'name'=>$user['user_name'],
				'tel'=>$user['user_phone'],
				'shipping_name'=>$address['name'],
				'address_id'=>$date['address_id'],
				'shipping_tel'=>$address['telephone'],
				'shipping_city_id'=>$address['city_id'],
				'shipping_country_id'=>$address['country_id'],
				'shipping_province_id'=>$address['province_id'],
				'order_status_id'=>3,
				'creation_time'=>time(),
				'price'=>$date['goodzprice'],
				'freight'=>$date['freight'],
				'number_price'=>$goods['pay_number'],
				'points_price'=>$goods['pay_points'],
				'is_points_goods'=>$goods['is_points_goods'],
				'is_number_goods'=>$goods['is_number_goods'],
				'is_yue_goods'=>$goods['is_yue_goods']
			]; 
			$order_id = Db::name('order')->insertGetId($order);
			$booleanNum = 0;
			foreach($orderdata as $key => $value){
				if($value[0] == $orderdata[$key][0]){
					$order_goods = [
						'modelis'=>$modelis[$key],
						'price'=>$goods_price[$key],
						'order_id'=>$order_id,
						'goods_id'=>$value[0],
						'num'=>$orderdata[$key][1],
						'attribute_value_id'=>$orderdata[$key][2],
					];
					if(Db::name('order_goods')->insert($order_goods) != 1){
						$booleanNum++;
						Db::name('order')->where('order_id',$order_id)->delete();
						Db::name('order_goods')->where('order_id',$order_id)->delete();
					}else{
						$goodsData = Db::name('goods')->where('goods_id',$value[0])->find();
						if(($goodsData['quantity'] - $orderdata[$key][1]) < 0){
							return ['success'=>false,'text'=>'库存不足'];
						}else{
							Db::name('goods')->where('goods_id',$value[0])->setDec('quantity',$orderdata[$key][1]);
						}
					};
				}else{
					$booleanNum++;
					Db::name('order')->where('order_id',$order_id)->delete();
				}
				
			}
			// if(in_array('5',$modelis)){
			// 	Db::name('user')->where('user_id',Session::get('user_id'))->update(['vip_grade'=>2]);	
				
			// }
			if($booleanNum == 0){
				//删除购物车
				if($isDel){
					Db::name('cart')->where('cart_id','in',$cart_id)->delete();
				}
				if($user_coupon_id != 0){
					Db::name('user_coupon')->where('user_coupon_id',$user_coupon_id)->update(['state' => 2]);
				}
				return ['success'=>true,'data'=>$order_id];
			}else{
				return ['success'=>false,'text'=>'提交失败'];
			}
		}
    }
	
	
	//升级订单
	public function isupgrade_order($price,$uid,$pid,$vip_grade){
		//增加批发奖励
		$gid = Db::name('user')->where('user_id',$pid)->field('user_id,invitation_id,vip_grade')->find();
		$gid_vip_grade = Db::name('user')->where('user_id',$gid['invitation_id'])->value('vip_grade');
		$upgrade_retail = Db::name('config')->where('name="upgrade_retail"')->value('value');
		$upgrade_wholesale = Db::name('config')->where('name="upgrade_wholesale"')->value('value');
		$shouyi_cost = Db::name('config')->where('name="shouyi_cost"')->value('value');
		$jiamengshang = Db::name('config')->where('name="jiamengshang"')->value('value');//加盟商
		$qudaili = Db::name('config')->where('name="qudaili"')->value('value');//区代理
		$pid_get_num = $price*$upgrade_retail/100;
		$gid_get_num = $price*$upgrade_wholesale/100;
		$pid_get_num = $pid_get_num-$pid_get_num*$shouyi_cost/100;
		$gid_get_num = $gid_get_num-$gid_get_num*$shouyi_cost/100;
		if($gid['vip_grade']>1){
			Db::name('wallet')->where('uid',$pid)->setInc('principal',$pid_get_num);
			Db::name('wallet')->where('uid',$pid)->setInc('accumulate',$pid_get_num);
			$this->financeadd($pid_get_num,$pid,12,1,5,$uid,1);
		}
		if($gid_vip_grade>1){
			Db::name('wallet')->where('uid',$gid['invitation_id'])->setInc('principal',$gid_get_num);
			Db::name('wallet')->where('uid',$gid['invitation_id'])->setInc('accumulate',$gid_get_num);
			$this->financeadd($gid_get_num,$gid['invitation_id'],12,2,5,$uid,1);
		}
		//区代加盟收益
		$dataarr = $this->sort($uid,$vip_grade);
		
		$qdlarr = $dataarr['qdlarr'];
		$jmsarr = $dataarr['jmsarr'];
		if(!empty($qdlarr)){
			
			foreach ($qdlarr as $qdlk => $qdlv) {
				$price_qdl = $price*$qudaili/100;
				$price_qdl = $price_qdl-$price_qdl*$shouyi_cost/100;
				$me_vip_grade = Db::name('user')->where('user_id',$qdlv)->value('vip_grade');
				$user_pid = Db::name('user')->where('user_id',$qdlv)->field('invitation_id')->find();
				$pid_vip_grade = Db::name('user')->where('user_id',$user_pid['invitation_id'])->value('vip_grade');	
				Db::name('wallet')->where('uid',$qdlv)->setInc('accumulate',$price_qdl);
				$inc_qdl = Db::name('wallet')->where('uid',$qdlv)->setInc('principal',$price_qdl);
				if($inc_qdl){
					$this->financeadd($price_qdl,$qdlv,12,3,5,$uid,1);
				} 
				
					break;
				
				
			}
		}
		if(!empty($jmsarr)){
			
			foreach ($jmsarr as $jmsk => $jmsv) {
				$price_jms = $price*$jiamengshang/100;
				$price_jms = $price_jms-$price_jms*$shouyi_cost/100;
				$wo_vip_grade = Db::name('user')->where('user_id',$jmsv)->value('vip_grade');
				$user_pids = Db::name('user')->where('user_id',$jmsv)->field('invitation_id')->find();
				$pid_vip_grades = Db::name('user')->where('user_id',$user_pids['invitation_id'])->value('vip_grade');
				Db::name('wallet')->where('uid',$jmsv)->setInc('accumulate',$price_jms);
				$inc_jms = Db::name('wallet')->where('uid',$jmsv)->setInc('principal',$price_jms);
				if($inc_jms){
					$this->financeadd($price_jms,$jmsv,12,4,5,$uid,1);
				}
				
					break;
				
			}
		}
	}


    //订单详情
    public function details()
    {
    	if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$order_id = input('param.id');
		$order = Db::name('order')
		->alias('o')
		->join('address ar','ar.address_id = o.address_id','LEFT')
		->field('o.*,ar.name as name2,ar.telephone,ar.address,ar.city_id,ar.country_id,ar.province_id,ar.default as def')
		->where('o.order_id',$order_id)
		->find();
		$order['goods_list'] = Db::name('order_goods')
		->alias('og')
		->join('goods g','g.goods_id = og.goods_id')
		->where('og.order_id',$order_id)
		->select();
		// var_dump($order);die();
		foreach($order['goods_list'] as $key => $value){
			$goods_discount = Db::name('goods_discount')->where('goods_id',$value['goods_id'])->find();
     		if(!empty($goods_discount)){
     			$order['goods_list'][$key]['price'] = $goods_discount['price'];
     		}
     		$order['goods_list'][$key]['attribute_value'] = Db::name('attribute_value')->where('attribute_value_id','in',$value['attribute_value_id'])->select();
		}
		
		// dump($order);die;
		$this->assign([
			'order'=>$order,
		]);

    	return $this->fetch();
    }
    
    //订单列表
    public function orderlist()
    {
    	if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$all_list = Db::name('order')
		->alias('o')
		->join('order_status os','os.order_status_id = o.order_status_id')
		->field('os.name as name2,o.*')
		->where('o.uid',Session::get('user_id'))
		->order('o.creation_time desc')
		->select();
		foreach($all_list as $key => $value){
			$all_list[$key]['count'] = Db::name('order_goods')->where('order_id',$value['order_id'])->sum('num');
			$all_list[$key]['goods_list'] = Db::name('order_goods')
			->alias('og')
			->join('goods g','g.goods_id = og.goods_id')
			->where('order_id',$value['order_id'])
			->select();
			
			foreach($all_list[$key]['goods_list'] as $key1 => $value1){
				$all_list[$key]['goods_list'][$key1]['price'] = Db::name('order_goods')->where('order_goods_id',$value1['order_goods_id'])->value('price');
		   	}
		}
		// dump($all_list);die;
		$dfk_list = Db::name('order')->where(['uid' => Session::get('user_id'),'order_status_id'=>3])->order('creation_time desc')->select();
		foreach($dfk_list as $key => $value){
			$dfk_list[$key]['count'] = Db::name('order_goods')->where('order_id',$value['order_id'])->sum('num');
			$dfk_list[$key]['goods_list'] = Db::name('order_goods')
			->alias('og')
			->join('goods g','g.goods_id = og.goods_id')
			->where('order_id',$value['order_id'])
			->select();
			
			foreach($dfk_list[$key]['goods_list'] as $key1 => $value1){
				$dfk_list[$key]['goods_list'][$key1]['price'] = Db::name('order_goods')->where('order_goods_id',$value1['order_goods_id'])->value('price');
		   	}
		}
		
		$dfh_list = Db::name('order')->where(['uid' => Session::get('user_id'),'order_status_id'=>1])->order('creation_time desc')->select();
		foreach($dfh_list as $key => $value){
			$dfh_list[$key]['count'] = Db::name('order_goods')->where('order_id',$value['order_id'])->sum('num');
			$dfh_list[$key]['goods_list'] = Db::name('order_goods')
			->alias('og')
			->join('goods g','g.goods_id = og.goods_id')
			->where('order_id',$value['order_id'])
			->select();
			
			foreach($dfh_list[$key]['goods_list'] as $key1 => $value1){
	     		$dfh_list[$key]['goods_list'][$key1]['price'] = Db::name('order_goods')->where('order_goods_id',$value1['order_goods_id'])->value('price');
			}
			
		}
		$dsh_list = Db::name('order')->where(['uid' => Session::get('user_id'),'order_status_id'=>4])->order('creation_time desc')->select();
		foreach($dsh_list as $key => $value){
			$dsh_list[$key]['count'] = Db::name('order_goods')->where('order_id',$value['order_id'])->sum('num');
			$dsh_list[$key]['goods_list'] = Db::name('order_goods')
			->alias('og')
			->join('goods g','g.goods_id = og.goods_id')
			->where('order_id',$value['order_id'])
			->select();
			
			foreach($dsh_list[$key]['goods_list'] as $key1 => $value1){
				$dsh_list[$key]['goods_list'][$key1]['price'] = Db::name('order_goods')->where('order_goods_id',$value1['order_goods_id'])->value('price');
		   	}
		}
		
		$dpj_list = Db::name('evaluate')
		->alias('e')
		->join('order o','o.order_id = e.order_id')
		->join('goods g','g.goods_id = e.goods_id')
		->where(['e.uid' => Session::get('user_id'),'e.pj_state'=>1])
		->order('e.generate_time desc')
		->select();
		$dpj_count = Db::name("evaluate")->where(['uid' => Session::get('user_id'),'pj_state'=>1])->count();
		
		$ypj_list = Db::name('evaluate')
		->alias('e')
		->join('order o','o.order_id = e.order_id')
		->join('goods g','g.goods_id = e.goods_id')
		->where(['e.uid' => Session::get('user_id'),'e.pj_state'=>2])
		->order('e.generate_time desc')
		->select();
		
		$this->assign([
			'all_list' => $all_list,
			'dfk_list' => $dfk_list,
			'dfh_list' => $dfh_list,
			'dsh_list' => $dsh_list,
			'dpj_list' => $dpj_list,
			'ypj_list' => $ypj_list,
			'dpj_count' => $dpj_count
		]);
    	return $this->fetch();
    }
    
    //查看物流
    public function tracking()
    {
    	if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$order_id = input('param.order_id');
		$order = Db::name('order')
		->alias('o')
		->where(array('order_id'=>$order_id))
		->join('exp_com e ','e.no=o.com_exp')
		->field('o.com_exp,o.exp_no,o.creation_time,o.pay_time,e.com')
		->find();
		
		$params = array(
			'key' => 'ee126e8492c2a8e2e8b57299275741d4',
			'com' => $order['com_exp'], 
			'no'  => $order['exp_no'] 
		);
		$exp = new exp($params['key']);  
		$result = $exp->query($params['com'],$params['no']); 
		if($result['error_code'] == 0){
			$list = $result['result']['list'];
		}else{
			$list = array(
				array(
					'datetime'=>date('Y-m-d H:i:s',time()),
					'remark'=>'暂未获取到物流信息,原因（'.$result['reason'].'）'
				)
			);
		}
		
		$create_order = array(
			array(
				"datetime"=>date('Y-m-d H:i:s',$order['pay_time']),
				'remark'=>'您提交了订单，请等待系统确认'
			)
		);
		$list = array_reverse($list);
		$list = array_merge($list,$create_order);
		$this->assign('list',$list);
		$this->assign('order',$order);
    	return $this->fetch();
    }
    
    //退款
    public function refund()
    {
    	if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$order_id = input('param.id');
		$order = Db::name('order')->where('order_id',$order_id)->find();
		$order['goods_list'] = Db::name('order_goods')
		->alias('og')
		->join('goods g','g.goods_id = og.goods_id')
		->where('og.order_id',$order_id)
		->select();
		foreach($order['goods_list'] as $key => $value){
			$goods_discount = Db::name('goods_discount')->where('goods_id',$value['goods_id'])->find();
     		if(!empty($goods_discount)){
     			$order['goods_list'][$key]['price'] = $goods_discount['price'];
     		}
     		$order['goods_list'][$key]['attribute_value'] = Db::name('attribute_value')->where('attribute_value_id','in',$value['attribute_value_id'])->select();
		}
		//dump($order);die;
		$this->assign([
			'order'=>$order,
		]);
		
		if(request()->isPost()){
			$order_id = input('post.order_id');
			$refund_content = input('post.refund_content');
			$refund_image = $this->request->file('refund_image');
	        $info = $refund_image->validate(['ext'=>'jpg,png,gif'])->move(ROOT_PATH . 'public' . DS . 'uploads'. DS . 'user');
	        if($info){
	            $filePath = 'user/'.$info->getSaveName();   
	    		$data = [
	    			'refund_content'=>$refund_content,
	    			'refund_image'=>$filePath,
	    			'order_status_id'=>7
	    		];
	    		if(Db::name('order')->where('order_id',$order_id)->update($data)){
	    			return ['success'=>true,'text'=>'提交成功，请耐心等待平台审核'];
	    		}else{
	    			return ['error'=>false,'text'=>'提交失败'];
	    		}
	        }else{
	            return ['error'=>false,'text'=>'图片上传出错'];
	        }
		}
		
		
    	return $this->fetch();
    }
    
    //确认收货
    public function confirm()
    {
    	if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		if(request()->isPost()){
			$order_id = input('post.order_id');
			if(Db::name('order')->where('order_id',$order_id)->update(['order_status_id'=>6])){
				$goods = Db::name('order_goods')->where('order_id',$order_id)->select();
				$have_upgrade=0;
				foreach($goods as $key => $value){
					if($value['modelis']!=3){
						$model_price[$key]['modelis'] = $value['modelis'];
						$model_price[$key]['price'] = $value['price'];
					}
					if($value['modelis']==5){
						$have_upgrade++;
					}
					$evaluate = [
						'order_id'=>$order_id,
						'goods_id'=>$value['goods_id'],
						'uid'=>Session::get('user_id'),
						'pj_state'=>1,
						'generate_time'=>time()
					];
					Db::name('evaluate')->insert($evaluate);
				}
				Db::name('reward')->where('order_id',$order_id)->update(['status'=>1]);
				//升级
				$vip_grade = Db::name('user')->where('user_id',Session::get('user_id'))->value('vip_grade');
				$pid = Db::name('user')->where('user_id',Session::get('user_id'))->value('invitation_id');
				$pid_vip_grade = Db::name('user')->where('user_id',$pid)->value('vip_grade');
				$uid = Session::get('user_id');
				// $this->order_modelis($model_price,$pid);
				if($pid_vip_grade>=2){
					$this->order_modelis($model_price,$pid,$uid,$type=2);
				}
				$this->qdl_jms($uid,$model_price,$type=2);
				return ['success'=>true,'text'=>'确认成功'];
			}else{
				return ['error'=>false,'text'=>'确认失败'];
			}
		}
    }
	
	public function testqdl(){
		// $pid,$pifa_price,$modelis,$pay_uid
		$uid = 4;
		$price = 100;
		$modelis = 5;
		$pay_uid = 1;
		$info = $this->qdl_jms($uid,$price,$modelis);
	}

    //评价
    public function pj()
    {
    	if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$evaluate_id = input('param.id');
		$evaluate = Db::name('evaluate')
		->alias('ev')
		->join('goods g','g.goods_id = ev.goods_id')
		->where('evaluate_id',$evaluate_id)
		->find();
		$this->assign([
			'evaluate'=>$evaluate,
		]);
		
		if(request()->isPost()){
			$evaluate_id = input('post.evaluate_id');
			$content = input('post.content');
			$is_anonymous = input('post.is_anonymous');
			$rate = input('post.rate');
			$pj_image = $this->request->file('pj_image');
	        $info = $pj_image->validate(['ext'=>'jpg,png,gif'])->move(ROOT_PATH . 'public' . DS . 'uploads'. DS . 'user');
	        if($info){
	            $filePath = 'user/'.$info->getSaveName();   
	    		$data = [
	    			'is_anonymous'=>$is_anonymous,
	    			'content'=>$content,
	    			'pj_image'=>$filePath,
	    			'pj_state'=>2,
	    			'rate'=>$rate,
	    			'pj_time'=>time(),
	    		];
	    		if(Db::name('evaluate')->where(array('uid'=>Session::get('user_id'),'evaluate_id'=>$evaluate_id))->update($data)){
	    			return ['success'=>true,'text'=>'评价成功'];
	    		}else{
	    			return ['error'=>false,'text'=>'评价失败'];
	    		}
	        }else{
	            return ['error'=>false,'text'=>'图片上传出错'];
	        }
		}
    	return $this->fetch();
    }
    
	//查看评价
	public function evaluation()
    {
    	if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$evaluate_id = input('param.id');
		$evaluate = Db::name('evaluate')
		->alias('ev')
		->join('goods g','g.goods_id = ev.goods_id')
		->where('evaluate_id',$evaluate_id)
		->find();
		$this->assign([
			'evaluate'=>$evaluate,
		]);
    	return $this->fetch();
	}
	
	//订单取消
	public function quxiao(){
		$order_id = input('param.order_id');
		$del = Db::name('order')->where('order_id',$order_id)->delete();
		$dels = Db::name('order_goods')->where('order_id',$order_id)->delete();

		if($del && $dels){
			return ['success'=>true,'text'=>'取消订单成功'];
		}else{
			return ['error'=>false,'text'=>'取消失败'];
		}
	}
} 
?>