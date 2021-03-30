<?php
namespace app\index\controller;
use app\common\controller\HomeBase;
use think\Session;
use think\Db;
use think\Request;
class User extends HomeBase
{
	public function index()
	{
		return $this->fetch();
	}
	
	//	设置
	public function setting()
	{
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		
		return $this->fetch();
	}
	
	//邀请好友
	public function invitation()
	{
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$user = Db::name('user')->where('user_id',Session::get('user_id'))->find();
		$user['invitation_user'] = Db::name('user')->where('invitation_id',Session::get('user_id'))->select();
		$user['invitation_num'] = Db::name('user')->where('invitation_id',Session::get('user_id'))->count();
		$invite_background = Db::name('config')->where('name="invite_background"')->value('value');
		$request = Request::instance();
        $domain=$request->domain();

		$savePath = APP_PATH . '/../Public/qrcode/';
		$webPath = 'public/qrcode/';
		$qrData = $domain . '/index/login/register?id=' . Session::get('user_id');
		$qrLevel = 'H';
		$qrSize = '8';
		$savePrefix = 'NickBai';
	
		if($filename = createQRcode($savePath, $qrData, $qrLevel, $qrSize, $savePrefix)){
			$pic = $webPath . $filename;
		}
		//dump($user);die;
		$this->assign([
			'invite_background'=>$invite_background,
			'user'=>$user,
			'pic'=>$pic,
			'qrData' =>$qrData,
		]);
		return $this->fetch();
	}
	
	//	钱包
	public function wallet()
	{
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$wallet = Db::name('wallet')->where('uid',Session::get('user_id'))->find();
		$shouyi_cost = Db::name('config')->where('name="shouyi_cost"')->value('value');
		$wallet['settlement'] = $wallet['settlement']*100/(100-$shouyi_cost);
		//dump($wallet);die;
		$huozeng = Db::name('user')->where('invitation_id',Session::get('user_id'))->count();
		$huozeng = (int)($huozeng/2);
		$taozhuang_count = Db::name('order')
						   ->alias('o')
						   ->join('order_goods g','g.order_id=o.order_id')
						   ->where(array('o.uid'=>Session::get('user_id'),'pay_type'=>3))
						   ->count();
		
		$total = $wallet['principal'] + $wallet['interest'];
		$huozeng = $huozeng-$taozhuang_count;
		if($huozeng<0) $huozeng=0;
		$this->assign([
			'wallet'=>$wallet,
			'total'=>$total,
			'huozeng'=>$huozeng,
			'taozhuang_count'=>$taozhuang_count
		]);
		return $this->fetch();
	}
	
	// 发布广告
	public function faadvertising()
	{
		if(request()->isPost()){
			$title = trim(input('title'));
			if(empty($title)){
				return ['error'=>false,'text'=>'标题不能为空']; 
			}
			$content=trim(input('content'));
			if(empty($content)){
				return ['error'=>false,'text'=>'内容不能为空']; 
			}
			$phone = trim(input('phone'));
			if(empty($phone)){
				return ['error'=>false,'text'=>'手机号不能为空']; 
			}
			$address=trim(input('address'));
			if(empty($address)){
				return ['error'=>false,'text'=>'地址不能为空']; 
			}
			
			$is_ggao = Db::name('user')->where('user_id',Session::get('user_id'))->value('is_ggao');
			if($is_ggao==0){
				return ['error'=>false,'text'=>'限制发布广告'];
			}
			if($_FILES['img']['size']!=0){
				$info = $this->upload_img('faadvertising');
				if($info['status']==1){
					$datas['img'] ='uploads/faadvertising/'.$info['data'];
				}else{
					return ['error'=>false,'text'=>$info['data']];
				}
			}
			$datas['title'] = $title;
			$datas['content'] = $content;
			$datas['address'] = $address;
			$datas['time'] = time();
			$datas['uid'] = Session::get('user_id');
			$datas['phone'] = $phone;
			if($datas){
				$add = Db::name('ggao')->insert($datas);
				if($add){
					return ['success'=>true,'text'=>'提交成功，请耐心等待平台审核'];
				}else{
					return ['error'=>false,'text'=>'提交失败'];
				}
			}
		}
		return $this->fetch();
	}
	
	// 转账
	public function transfer()
	{
		if(request()->isPost()){
			$uid = Session::get('user_id');
			$data = input('post.');
			if(!captcha_check($data['captcha'])){
				return ['error'=>false,'text'=>'验证码不正确'];
			};
			$where['user_phone|uid'] = $data['user_phone'];
			$userinfo = Db::name('user')->where($where)->find();
			if(!$userinfo){
				return ['error'=>false,'text'=>'对方账号有误'];
			}
			$uinfo = Db::name('user')->where('user_id='.$uid)->field('pay_password,user_phone,uid,user_id')->find();
			if($userinfo['user_phone']==$uinfo['user_phone']||$userinfo['uid']==$uinfo['uid']){
				return ['error'=>false,'text'=>'不能转给自己'];
			}
			if($uinfo['pay_password']==''){
				return ['error'=>false,'text'=>'请先设置安全密码'];
			}
			$pay_password = md5($data['pay_password']);
			if($uinfo['pay_password']!=$pay_password){
				return ['error'=>false,'text'=>'安全密码错误'];
			}
			$yue = Db::name('wallet')->where('uid='.$uid)->value('principal');
			if($yue<$data['trans_num']){
				return ['error'=>false,'text'=>'账户积分不足'];
			}
			$inc_user = Db::name('wallet')->where(array('uid'=>$userinfo['user_id']))->setInc('principal',$data['trans_num']);
			$dec_user = Db::name('wallet')->where(array('uid'=>$uinfo['user_id']))->setDec('principal',$data['trans_num']);
			if($inc_user && $dec_user){
				$finance = [
					'uid'=>Session::get('user_id'),
					'type'=>9,
					'price'=>$data['trans_num'],
					'creation_time'=>time(),
					'state'=>2,
					'complete_time'=>time(),
				];
				Db::name('finance')->insert($finance);
				$finances = [
					'uid'=>$userinfo['user_id'],
					'type'=>10,
					'price'=>$data['trans_num'],
					'creation_time'=>time(),
					'state'=>2,
					'complete_time'=>time(),
				];
				Db::name('finance')->insert($finances);
				return ['success'=>true,'text'=>'转账成功'];
			}else{
				return ['error'=>true,'text'=>'转账失败'];
			}
		}
		return $this->fetch();
	}
	
	// 分销商升级
	public function upgrade()
	{
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		
		if(request()->isPost()){
			$data = input('post.');
			// var_dump($data);die();
		
			$toid['user_phone|uid'] = $data['user_phone'];
			$have = Db::name('user')->where($toid)->field('user_id,uid,user_phone,vip_grade,user_name,invitation_id')->find();
			if(!$have){
				return ['error'=>false,'text'=>'不存在该会员'];
			}
			if($have['user_id']==Session::get('user_id')){
				return ['error'=>false,'text'=>'不能为自己升级'];
			}
			$price = Db::name('goods')->where(array('goods_id'=>$data['goods']))->value('price');
			$prices = $price;
			$fenxiao_discount = Db::name('config')->where('name="fenxiao_discount"')->value('value');
			if($have['vip_grade']!=1){
				return ['error'=>false,'text'=>'该会员非体验用户'];
			}
			$price = $price*$fenxiao_discount/10;
			$yue = Db::name('wallet')->where('uid',Session::get('user_id'))->value('principal');
			if($yue<$price){
				return ['error'=>false,'text'=>'账户积分不足'];
			}

			$goods = Db::name('goods')->where(array('goods_id'=>$data['goods']))->find();
			if($goods['quantity']<=0){
				return ['error'=>false,'text'=>'库存不足'];
			}
			$order = [
				'order_num_alias'=>time().rand(10000,99999),
				'uid'=>$have['user_id'],
				'return_points'=>0,
				'name'=>$have['user_name'],
				'tel'=>$have['user_phone'],
				'shipping_name'=>$data['name'],
				'shipping_tel'=>$data['telephone'],
				'shipping_city_id'=>$data['city_id'],
				'shipping_country_id'=>$data['country_id'],
				'shipping_province_id'=>$data['province_id'],
				'order_status_id'=>1,
				'creation_time'=>time(),
				'price'=>$goods['price'],
				'freight'=>0,
				'number_price'=>0,
				'points_price'=>0,
				'is_points_goods'=>0,
				'is_number_goods'=>0,
				'is_yue_goods'=>1,
				'shipping_address'=>$data['address'],
				'pay_time'=>time()
			]; 
			$order_id = Db::name('order')->insertGetId($order);


			if($order_id){
				$order_goods = [
					'modelis'=>5,
					'price'=>$goods['price'],
					'order_id'=>$order_id,
					'goods_id'=>$goods['goods_id'],
					'num'=>1
				];
				Db::name('order_goods')->insert($order_goods);

				//升级用户
				Db::name('user')->where('user_id',$have['user_id'])->update(['vip_grade'=>2]);
				$dec = Db::name('wallet')->where('uid',Session::get('user_id'))->setDec('principal',$price);	//扣除相应金额
				Db::name('goods')->where('goods_id',$goods['goods_id'])->setDec('quantity');

				$ordercontroller = controller('Order');
				$ordercontroller->isupgrade_order($prices,$have['user_id'],$have['invitation_id'],1);
				//添加记录
				$finance = [
					'price'=>$price,
					'uid'=>Session::get('user_id'),
					'type'=>11,
					'creation_time'=>time(),
					'state'=>2,
					'pay_uid'=>$have['user_id']
				];
				$fin = Db::name('finance')->insert($finance);
				if($dec&&$fin){
					return ['success'=>true,'text'=>'提交成功'];
				}else{
					return ['error'=>false,'text'=>'提交失败'];
				}
			}else{
				return ['error'=>false,'text'=>'提交失败'];
			}
		}
		$area = [];
		$area_province = Db::name('area')->where(array('area_parent_id'=>0,'area_deep'=>1))->select();
		foreach($area_province as $area_province_key => $area_province_value){
			$area[$area_province_key]['name'] = $area_province_value['area_name'];
			$area[$area_province_key]['id'] = $area_province_value['area_id'];
			$area_city = Db::name('area')->where(array('area_parent_id'=>$area_province_value['area_id'],'area_deep'=>2))->select();
			foreach($area_city as $area_city_key => $area_city_value){
				$area[$area_province_key]['sub'][$area_city_key]['name'] = $area_city_value['area_name'];
				$area[$area_province_key]['sub'][$area_city_key]['id'] = $area_city_value['area_id'];
				$area_country = Db::name('area')->where(array('area_parent_id'=>$area_city_value['area_id'],'area_deep'=>3))->select();
				foreach($area_country as $area_country_key => $area_country_value){
					$area[$area_province_key]['sub'][$area_city_key]['sub'][$area_country_key]['name'] = $area_country_value['area_name'];
					$area[$area_province_key]['sub'][$area_city_key]['sub'][$area_country_key]['id'] = $area_country_value['area_id'];
				}
			}
		}
		$goods_list = Db::name('goods')->where(array('status'=>1,'modelis'=>5,'quantity'=>array('gt',0)))->order('date_added desc')->select();
		$this->assign('goods_list',$goods_list);
		$this->assign('area',$area);
		return $this->fetch();
	}
	
	//账单
	public function bill()
	{
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$list = Db::name('finance')->where(array('uid'=>Session::get('user_id'),'type'=>['in','1,2,3,4,6,7,8,9,10,11']))->limit(50)->order('creation_time desc')->select();
		$this->assign([
			'list' => $list,
		]);
		return $this->fetch();
	}
	
	//收益
	public function profit()
	{
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$shouyi_cost = Db::name('config')->where('name="shouyi_cost"')->value('value');
		$list = Db::name('finance')->where(array('uid'=>Session::get('user_id'),'type'=>['in','12']))->limit(200)->order('creation_time desc')->select();
		foreach ($list as $k => $v) {
			$userinfo = Db::name('user')->where('user_id',$v['pay_uid'])->field('user_phone,uid')->find();
			$list[$k]['user_phone'] = $userinfo['user_phone'];
			$list[$k]['user_uid'] = $userinfo['uid'];
			if($v['shouyi_type']==2||$v['modelis']==5){
				$list[$k]['price'] = $v['price']*100/(100-$shouyi_cost);
			}
			if($v['modelis']==2 || $v['modelis']==3 || $v['modelis']==4 || $v['modelis']==1){
				if($v['shouyi_type']==1){
					unset($list[$k]);
				}
			}
		}
		$this->assign([
			'list' => $list,
		]);
		return $this->fetch();
	}
	
	//提现
	public function withdrawal()
	{
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		if(request()->isPost()){
			$price = input('post.price');
			$tixian_min = Db::name('config')->where('name="tixian_min"')->value('value');
			if($price<$tixian_min){
				return ['error'=>false,'text'=>'提现金额不能小于{$tixian_min}'];
			}
			$wallet = Db::name('wallet')->where('uid',Session::get('user_id'))->find();
			if($price > $wallet['principal']){
				return ['error'=>false,'text'=>'可提现积分不足'];
			}
			$pay_password = md5(input('post.pay_password'));
			$user = Db::name('user')->where('user_id',Session::get('user_id'))->find();
			if($pay_password != $user['pay_password']){
				return ['error'=>false,'text'=>'安全密码不正确'];
			}
			$captcha = input('post.captcha');
			if(!captcha_check($captcha)){
				return ['error'=>false,'text'=>'验证码不正确'];
			};
			$user_bank_id = Db::name('user_bank')->where(array('uid'=>Session::get('user_id'),'default'=>1))->value('user_bank_id');
			if(empty($user_bank_id)){
				return ['error'=>false,'text'=>'请设置默认银行卡'];
			}
			$data = [
    			'price'=>$price,
    			'uid'=>Session::get('user_id'),
    			'user_bank_id'=>$user_bank_id,
    			'type'=>2,
    			'creation_time'=>time(),
    			'state'=>1
    		];
    		if(Db::name('finance')->insert($data)){
    			Db::name('wallet')->where('uid',Session::get('user_id'))->setDec('principal',$price);
    			return ['success'=>true,'text'=>'提交成功，请耐心等待平台审核'];
    		}else{
    			return ['error'=>false,'text'=>'提交失败'];
    		}
		}
		$tixian_min = Db::name('config')->where('name="tixian_min"')->value('value');
		$this->assign('tixian_min',$tixian_min);
		return $this->fetch();
	}
	
	//充值
	public function recharge()
	{
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$this->assign('bank_name',Db::name('config')->where('name','bank_name')->value('value'));
		$this->assign('bank_name2',Db::name('config')->where('name','bank_name2')->value('value'));
		$this->assign('bank_user',Db::name('config')->where('name','bank_user')->value('value'));
		$this->assign('bank_num',Db::name('config')->where('name','bank_num')->value('value'));
		
		if(request()->isPost()){
			$price = input('post.price');
			$pay_password = md5(input('post.pay_password'));
			$user = Db::name('user')->where('user_id',Session::get('user_id'))->find();
			if($pay_password != $user['pay_password']){
				return ['error'=>false,'text'=>'安全密码不正确'];
			}
			$file = $this->request->file('img');
			//dump($file);die;
	        $info = $file->validate(['ext'=>'jpg,png,gif'])->move(ROOT_PATH . 'public' . DS . 'uploads'. DS . 'user');
	        if($info){
	            $filePath = 'user/'.$info->getSaveName();
	            
	            $user_bank_id = Db::name('user_bank')->where(array('uid'=>Session::get('user_id'),'default'=>1))->value('user_bank_id');
	            if(empty($user_bank_id)){
	            	return ['error'=>false,'text'=>'请设置默认银行卡'];
	            }
	    		$data = [
	    			'price'=>$price,
	    			'voucher'=>$filePath,
	    			'uid'=>Session::get('user_id'),
	    			'user_bank_id'=>$user_bank_id,
	    			'type'=>1,
	    			'creation_time'=>time(),
	    			'state'=>1
	    		];
	    		if(Db::name('finance')->insert($data)){
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
	
	//	优惠券
	public function coupon()
	{
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$user_coupon = Db::name('user_coupon')
		->alias('uc')
		->join('coupon c','c.coupon_id = uc.coupon_id')
		->where('uc.uid',Session::get('user_id'))
		->select();
		foreach($user_coupon as $key => $value){
			if($value['expire_time'] <= time()){
				Db::name('user_coupon')->where('user_coupon_id',$value['user_coupon_id'])->update(['state'=>3]);
			}
		}
		
		$user_coupon1 = Db::name('user_coupon')
		->alias('uc')
		->join('coupon c','c.coupon_id = uc.coupon_id')
		->where(['uc.uid'=>Session::get('user_id'),'uc.state'=>1])
		->select();
		
		$user_coupon2 = Db::name('user_coupon')
		->alias('uc')
		->join('coupon c','c.coupon_id = uc.coupon_id')
		->where(['uc.uid'=>Session::get('user_id'),'uc.state'=>2])
		->select();
		
		$user_coupon3 = Db::name('user_coupon')
		->alias('uc')
		->join('coupon c','c.coupon_id = uc.coupon_id')
		->where(['uc.uid'=>Session::get('user_id'),'uc.state'=>3])
		->select();
		
		$this->assign([
			'user_coupon1' => $user_coupon1,
			'user_coupon2' => $user_coupon2,
			'user_coupon3' => $user_coupon3,
		]);
		
		return $this->fetch();
	}
	
	//	地址
	public function address()
	{
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$address = Db::name('address')->where('uid',Session::get('user_id'))->select();
		$this->assign([
			'address'=>$address
		]);
		return $this->fetch();
	}
	
	//修改地址
	public function setaddress()
	{
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		if(request()->isPost()){
			$addressData['name'] = input('post.name');
			$addressData['telephone'] = input('post.telephone');
			$addressData['address'] = input('post.address');
			$addressData['default'] = input('post.Default');
			$addressData['province_id'] = input('post.province_id');
			$addressData['city_id'] = input('post.city_id');
			$addressData['country_id'] = input('post.country_id');
			if(input('post.Default') == 2){
				Db::name('address')->where('uid',Session::get('user_id'))->update(['default'=>1]);
			}
			if(Db::name('address')->where(['uid'=>Session::get('user_id'),'address_id'=>input('post.address_id')])->update($addressData)){
				return ['success'=>true,'text'=>'修改成功'];
			}else{
				return ['success'=>false,'text'=>'修改失败'];
			}
		}
		
		$address = Db::name('address')->where('address_id',input('param.id'))->find();
		$area = [];
		$area_province = Db::name('area')->where(array('area_parent_id'=>0,'area_deep'=>1))->select();
		foreach($area_province as $area_province_key => $area_province_value){
			$area[$area_province_key]['name'] = $area_province_value['area_name'];
			$area[$area_province_key]['id'] = $area_province_value['area_id'];
			$area_city = Db::name('area')->where(array('area_parent_id'=>$area_province_value['area_id'],'area_deep'=>2))->select();
			foreach($area_city as $area_city_key => $area_city_value){
				$area[$area_province_key]['sub'][$area_city_key]['name'] = $area_city_value['area_name'];
				$area[$area_province_key]['sub'][$area_city_key]['id'] = $area_city_value['area_id'];
				$area_country = Db::name('area')->where(array('area_parent_id'=>$area_city_value['area_id'],'area_deep'=>3))->select();
				foreach($area_country as $area_country_key => $area_country_value){
					$area[$area_province_key]['sub'][$area_city_key]['sub'][$area_country_key]['name'] = $area_country_value['area_name'];
					$area[$area_province_key]['sub'][$area_city_key]['sub'][$area_country_key]['id'] = $area_country_value['area_id'];
				}
			}
		}
		// dump($address);die;
		$this->assign([
			'address'=>$address,
			'area'=>$area
		]);
		return $this->fetch();
	}
	
	//添加地址
	public function addaddress()
	{
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		if(request()->isPost()){
			$addressData['name'] = input('post.name');
			$addressData['telephone'] = input('post.telephone');
			$addressData['address'] = input('post.address');
			$addressData['default'] = input('post.Default');
			$addressData['province_id'] = input('post.province_id');
			$addressData['city_id'] = input('post.city_id');
			$addressData['country_id'] = input('post.country_id');
			$addressData['uid'] = Session::get('user_id');
			if(input('post.Default') == 2){
				Db::name('address')->where('uid',Session::get('user_id'))->update(['default'=>1]);
			}
			if(Db::name('address')->insert($addressData)){
				return ['success'=>true,'text'=>'添加成功'];
			}else{
				return ['success'=>false,'text'=>'添加失败'];
			}
		}
		
	}
	
	//删除地址
	public function deladdress(){
		if(request()->isPost()){
			if(!Session::has('user_id')){
				$this->redirect('Login/login');
			}
			$address_id = input('post.address_id');
			if(Db::name('address')->where('address_id',$address_id)->delete()){
				return ['success'=>true,'text'=>'删除成功'];
			}else{
				return ['success'=>false,'text'=>'删除失败'];
			}
		}
	}
	
	//	售后服务
	public function service()
	{
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$article=Db::name('article')->where('status=1')->order('id desc')->find();
		$this->assign('article',$article);
		return $this->fetch();
	}
	
	public function notice(){
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$where['status'] = 1;
		$where['cate'] = 1;
		$list = Db::name('article')->where($where)->order('id desc')->select();
		$this->assign('list',$list);
		return $this->fetch();
	}
	//常见问题
	public function logistics()
	{
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$where['status'] = 1;
		$where['cate'] = 2;
		$list = Db::name('article')->where($where)->order('id desc')->select();
		$this->assign('list',$list);
		return $this->fetch();
	}

	public function getsteam(){
		$info = $this->getsubuser(1);
		$userarr =array_filter(explode('-',$info));
		if(in_array('7',$userarr)){
			var_dump($userarr);die();
		}else{
			var_dump('not found');die();
		}
	}

	public function mysteam(){
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$user = Db::name('user')->where('user_id',Session::get('user_id'))->find();
		$info = $this->getchilduser($user['user_id']);
		$infos = $this->getuserlist($user['user_id']);
		// $userlist = Db::name('user')->where('invitation_id',Session::get('user_id'))->select();
		// $push_arr = [];
		// foreach($userlist as $k=>$v){
		// 	$push_arr[] = Db::name('user')->where('invitation_id',$v['user_id'])->select();

		// }
		$mysteam = [];
		$mysteamcout = [];
		if(!empty($info)){
			foreach($info as $k=>$v){
				if($v['vip_grade']>1){
					$mysteamcout[] = $v;
				}
			}
		}
		if(!empty($infos)){
			foreach($infos as $k=>$v){
				$mysteam[] = $v;
			}
		}
		$vip_two = count($mysteamcout);
		$user['invitation_user'] = $mysteam;
		$user['invitation_num'] = Db::name('user')->where('invitation_id',Session::get('user_id'))->count();
		$this->assign([
			'user'=>$user,
			'vip_two'=>$vip_two
		]);
		return $this->fetch();
	}

	public function getchilduser($pid,$level=0){
		static $arr;
		$user = Db::name('user')->select();
		$pid_vip_grade = Db::name('user')->where('user_id',Session::get('user_id'))->value('vip_grade');
        foreach($user as $k => $v){
		
			if($v['invitation_id'] == $pid){
				$v['level'] = $level;
				$arr[] = $v;
				if($v['vip_grade']<$pid_vip_grade){
					$this->getchilduser($v['user_id'],$level+1);
				}
            }
        }
        return $arr;
	}

	public function getuserlist($pid,$level=0){
		static $arr;
		$user = Db::name('user')->select();
		$pid_vip_grade = Db::name('user')->where('user_id',Session::get('user_id'))->value('vip_grade');
        foreach($user as $k => $v){
			if($v['invitation_id'] == $pid){
				$v['level'] = $level;
				$arr[] = $v;
				// if($pid_vip_grade<3&&$v['vip_grade']<$pid_vip_grade){
					$this->getuserlist($v['user_id'],$level+1);
				// }
            }
        }
        return $arr;
	}
	public function myggao(){
		$list = Db::name('ggao')->where('uid',Session::get('user_id'))->order('id desc')->select();

		$this->assign('list',$list);
		return $this->fetch();
	}
	
	public function myggao_detail(){
		$id = input('param.id');

		$info = Db::name('ggao')->where('id',$id)->find();
		$this->assign('info',$info);
		return $this->fetch();
	}
}

?>