<?php
namespace app\index\controller;
use app\common\controller\HomeBase;
use app\index\model\Index as Idx;
use think\Session;
use think\Cookie;
use think\Db;
use think\Request;

class Index extends HomeBase
{
	protected function _initialize() {
		//网站是否关闭
		$app_close = Db::name('config')->where('name="WEB_SITE_CLOSE"')->value('value');
		
		if($app_close==0){
			$this->redirect('/Index/Login/login');
		}
		if(Session::has('user_id')){
			$upgrade_conditions = Db::name('user')->where('user_id='.Session::get('user_id'))->value('vip_grade');
		}else{
			$upgrade_conditions = 0;
		}
		$this->assign('upgrade_conditions',$upgrade_conditions);
	}
	//	首页
    public function index()
    {
		$brand = Db::name('brand')->order('sort asc')->select();
		
		$guesslike = Db::name('goods')->where(['status'=>1,'is_tuijian'=>1])->order('date_added desc')->limit(12)->select();
		foreach($guesslike as $key => $value){
			$guesslike[$key]['price2'] = Db::name('goods_discount')->where('goods_id',$value['goods_id'])->value('price');
			
		}
		
		$newlist = Db::name('goods')->where(['status'=>1])->order('date_added desc')->limit(12)->select();
		foreach($newlist as $key => $value){
			$newlist[$key]['price2'] = Db::name('goods_discount')->where('goods_id',$value['goods_id'])->value('price');
		}
		
		$popular = Db::name('goods')->where(['status'=>1,'popular'=>1])->order('date_added desc')->limit(12)->select();
		foreach($popular as $key => $value){
			$popular[$key]['price2'] = Db::name('goods_discount')->where('goods_id',$value['goods_id'])->value('price');
		}
		
		$frontend_images = Db::name('frontend_images')->order('frontend_images_weight asc')->select();
		
		$pic = array(
			'guesslike_shop'=>Db::name('config')->where('name="guesslike_shop"')->value('value'),
			'new_shop'=>Db::name('config')->where('name="new_shop"')->value('value'),
			'popular_shop'=>Db::name('config')->where('name="popular_shop"')->value('value')
		);
		//代理商广告
		$wheres['end_time'] = array('egt',time());
		$wheres['status'] = 1;
		$ggao = Db::name('ggao')->where($wheres)->limit(3)->order('id desc')->select();
		$this->assign([
			'brand' => $brand,
			'guesslike' => $guesslike,
			'newlist' => $newlist,
			'popular' => $popular,
			'frontend_images' => $frontend_images,
			'ggao'=>$ggao,
			'pic'=>$pic
		]);
		
		return $this->fetch();
    }
	
	public function brand(){
		$list = Db::name('brand')->order('sort asc')->select();
		$this->assign('list',$list);
		return $this->fetch();
	}
	//id随机
	public function random($num,$table,$id)
	{
		$countcus = Db::name($table)->count();
		$max = Db::name($table)->max($id);
		$min = Db::name($table)->min($id);
		if($countcus < $num){
			$num = $countcus;
		}
		$i = 1;
		$flag = 0;
		$ary = array();
		while($i <= $num){
			$rundnum = rand($min, $max);
			if($flag != $rundnum){
				//过滤重复 
				if(!in_array($rundnum,$ary)){
					$ary[] = $rundnum;
					$flag = $rundnum;
				}else{
					$i--;
				}
				$i++;
			}
		}
		return Db::name($table)->where($id,'in',$ary,'or')->select();
	}
	
	
	public function brandlist()
	{
		$brand_id = input('param.id');
		$brandlist = Db::name('goods_brand')
		->alias('gb')
		->join('goods g','g.goods_id = gb.goods_id')
		->where('gb.brand_id',$brand_id)
		->order('g.date_added desc')
		->select();
		foreach($brandlist as $key => $value){
			$brandlist[$key]['price2'] = Db::name('goods_discount')->where('goods_id',$value['goods_id'])->value('price');
		}
		
		$brand = Db::name('brand')->where('brand_id',$brand_id)->find();
		//dump($brandlist);die;
		$this->assign([
			'brandlist' => $brandlist,
			'brand' => $brand
		]);
		return $this->fetch();
	}
	
	// 代理商广告
	public function advertising(){
		$where['end_time'] =  array('egt',time());
		$where['status'] = 1;
		$list=Db::name('ggao')->where($where)->order('id desc')->select();
		$this->assign('list',$list);
		return $this->fetch();
	}
	
	// 广告详情
	public function advertising_content(){
		$id = input('id');
		$info = Db::name('ggao')->where('id='.$id)->find();
		$this->assign('info',$info);
		return $this->fetch();
	}
	
	//  分类
    public function classify()
    {	
		if(Request::instance()->isAjax()){
			$type = input('post.type');
			if($type == 1){
				$categoryParent = Db::name('category')->where(['pid'=>0])->order('sort_order asc')->select();
				return ['categoryParent' => $categoryParent];
			}
			if($type == 2){
				$pid = input('post.id');
				$categorySub = Db::name('category')->where(['pid'=>$pid])->order('sort_order asc')->select();
				
				$order = input('post.order');
				if(empty($order)){
					$order = 'g.sort_order asc';
				}
				if($pid == 0){
					$goodsList = Db::name('goods')->select();
				}else{
					$goodsList = Db::name('goods_to_category')
					->alias('gc')
					->join('category c','c.id = gc.category_id')
					->join('goods g','gc.goods_id = g.goods_id')
					->where(['gc.category_id'=>$pid])
					->order($order)
					->select();
				}
				return ['categorySub' => $categorySub,'goodsList' => $goodsList];
			}
		}
		
		return $this->fetch();
    }
    
	//  购物车
	public function shpcart()
	{
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$cart = Db::name('cart')
		->alias('ca')
		->join('goods g','g.goods_id = ca.goods_id')
		->where('ca.uid',Session::get('user_id'))
		->select();
		foreach($cart as $key => $value){
			$goods_discount = Db::name('goods_discount')->where('goods_id',$value['goods_id'])->find();
			if(!empty($goods_discount)){
				$cart[$key]['price'] = $goods_discount['price'];
			}
			
			$attribute_value_arr = explode(',',chop($value['attribute_value_id'],','));
			$len = count($attribute_value_arr);
			$attribute_value = [];
			for($i = 0; $i < $len; $i++){
				$attribute_value[$i] = Db::name('attribute_value')->where('attribute_value_id',$attribute_value_arr[$i])->find();
			}
			$cart[$key]['attribute_value'] = $attribute_value;
		}
		
		//dump($cart);die;
		$this->assign([
			'cart'=>$cart,
		]);
		return $this->fetch();
	}
	
	//购物车删除
	public function cartDel()
	{
		$map['uid'] = Session::get('user_id');
		$map['cart_id'] = ['in',input('param.cart_id')];
		if(Db::name('cart')->where($map)->delete()){
			return ['success'=>true,'text'=>'删除成功'];
		}else{
			return ['error'=>false,'text'=>'删除失败'];
		}
	}
	
	//	我的
	public function pcenter()
	{
		$idx = new Idx();
		if(!Session::has('user_id')){
			$user_name = '未登录';
			$user_phone = ''; 
			$user_photo = '/public/static/images/touxiang.png';
			$vip_grade = 0;
			$user_id = 0;
		}else{
			$user_id=Session::get('user_id');
			$res=$idx->m_one('user',['user_id'=>$user_id]);
			$user_name = $res['user_name'];
			$user_phone = $res['user_phone'];
			$vip_grade = $res['vip_grade'];
			$user_photo = $res['user_photo']!=''? '/public/uploads/'.$res['user_photo'] : '/public/static/images/touxiang.png';
		}
		
		$this->assign([
			'user_name'=>$user_name,
			'user_phone'=>$user_phone,
			'user_photo'=>$user_photo,
			'vip_grade'=>$vip_grade,
			'user_id'=>$user_id
		]);
		return $this->fetch();
	}
	
	//头像上传
	public function imgUps()
	{
	    if (Request::instance()->isAjax()) {
	        $uid = Session::get('user_id');
	        $dataflow = trim(input('post.dataflow'));
	        $base64 = str_replace('data:image/jpeg;base64,', '', $dataflow);
	        $img = base64_decode($base64);
	        //保存地址
	        $imgDir = './public/uploads/heads/';
	        //要生成的圖片名字
	        $filename = md5(time() . mt_rand(10, 99)) . ".png"; //新圖片名稱
	        $newFilePath = $imgDir . $filename;
	        $res = file_put_contents($newFilePath, $img);//返回的是字節數
			$filename = 'heads/' . $filename;
	        if ($res > 1000) {
	            //修改頭像
	            $res_change = Db::name('user')->where(['user_id' => $uid])->setField('user_photo', $filename);
	            if ($res_change) {
					return ['text'=>'头像修改成功','type'=>1];
	            } else {
					return ['text'=>'头像修改失败','type'=>0];
	            }
	        } else {
				return ['text'=>'头像修改失败','type'=>0];
	        }
	    }
	}
	
	//	搜索
	public function search()
	{
		// Cookie::delete('name','search_');
		$search_text = Cookie::get('name','search_');
		//dump($search_text);die;
		if(request()->isPost()){
			$search_text = input('post.search_text');
			$goodslist = Db::name('goods')->where('name','like','%' . $search_text . '%')->field('goods_id')->select();
			$goods_id = '';
			foreach($goodslist as $key => $value){
				$goods_id .= $value['goods_id'] . ',';
			}
			
			if(empty($goodslist)){
				return ['success' => false,'text' => '未找到改商品'];
			}else{
				if(Cookie::has('name','search_')){
					$text = Cookie::get('name','search_');
					if(count($text) == 8){
						array_pop($text);
					}
					array_unshift($text,$search_text);
					$text = array_unique($text);
				}else{
					$text = [$search_text];
				}
				Cookie::set('name',$text,['prefix'=>'search_','expire'=>86400]);
				return ['success' => true,'text' => $goods_id];
			}
		}
		$this->assign([
			'search_text'=>$search_text
		]);
		return $this->fetch();
	}
	
	//  搜索结果列表
	public function searchList(){
		$goods_id = input('param.id');
		$goodslist = Db::name('goods')->where('goods_id','in',$goods_id)->select();
		foreach($goodslist as $key => $value){
			$goodslist[$key]['price2'] = Db::name('goods_discount')->where('goods_id',$value['goods_id'])->value('price');
		}
		$this->assign([
			'goodslist'=>$goodslist
		]);
		return $this->fetch();
	}
	
	//  平价
	public function popular()
	{
		$popular = Db::name('goods')->where(['status'=>1,'modelis'=>1])->order('date_added desc')->select();
		foreach($popular as $key => $value){
			$popular[$key]['price2'] = Db::name('goods_discount')->where('goods_id',$value['goods_id'])->value('price');
		}
		$popular_pic = Db::name('config')->where('name="fenxiao_pic"')->value('value');
		$this->assign([
			'popular'=>$popular,
			'popular_pic'=>$popular_pic
		]);
		
		return $this->fetch();
	}
	
	//0元抢购
	public function newest()
	{
		$newlist = Db::name('goods')->where(['status'=>1,'modelis'=>2])->order('date_added desc')->select();
		foreach($newlist as $key => $value){
			$newlist[$key]['price2'] = Db::name('goods_discount')->where('goods_id',$value['goods_id'])->value('price');
		}
		$newlist_pic = Db::name('config')->where('name="qianggou_pic"')->value('value');
		$this->assign([
			'newlist'=>$newlist,
			'newlist_pic'=>$newlist_pic
		]);
		return $this->fetch();
	}
	
	//零元
	public function zerolist(){
		$zerolist = Db::name('goods')->where(['status'=>1,'modelis'=>3])->order('date_added desc')->select();
		$zerolist_pic = Db::name('config')->where('name="yiyuan_pic"')->value('value');
		$this->assign('zerolist',$zerolist);
		$this->assign('zerolist_pic',$zerolist_pic);
		return $this->fetch();
	}

	//团购区
	public function groupbuy(){
		$grouplist = Db::name('goods')->where(['status'=>1,'modelis'=>4])->order('date_added desc')->select();
		$grouplist_pic = Db::name('config')->where('name="tuangou_pic"')->value('value');
		$this->assign('grouplist',$grouplist);
		$this->assign('grouplist_pic',$grouplist_pic);
		return $this->fetch();
	}
	//优惠券
	public function coupon(){
		if(request()->isPost()){
			if(!Session::has('user_id')){
				$this->redirect('Login/login');
			}
			$coupon_id = input('post.coupon_id');
			$coupon = Db::name('coupon')->where('coupon_id',$coupon_id)->find();
			if($coupon['coupon_surplus_num'] == 0){
				return ['success'=>false,'text'=>'已经领完了'];
			}
			if($coupon['expire_time'] <= time()){
				return ['success'=>false,'text'=>'该优惠券已过期'];
			}
			$user_coupon = Db::name('user_coupon')->where(['uid'=>Session::get('user_id'),'coupon_id'=>$coupon_id])->find();
			if(!empty($user_coupon)){
				return ['success'=>false,'text'=>'已领取过该优惠券'];
			}
			$user_coupon_data = [
				'uid' => Session::get('user_id'),
				'coupon_id' => $coupon_id,
				'coupon_number' => $coupon['conpon_prefix'] . rand(100000,999999),
				'state' => 1
			];
			if(Db::name('user_coupon')->insert($user_coupon_data)){
				Db::name('coupon')->where('coupon_id',$coupon_id)->setDec('coupon_surplus_num',1);
				return ['success'=>true,'text'=>'领取成功'];
			}else{
				return ['success'=>false,'text'=>'领取失败'];
			}
		}
		$map = [
			'expire_time'=>['gt',time()],
			'coupon_surplus_num'=>['gt',0]
		];
		$coupon = Db::name('coupon')->where($map)->select();
		$this->assign([
			'coupon' => $coupon
		]);
		return $this->fetch();
	}

	public function upgrade(){
		$list = Db::name('goods')->where(array('status'=>1,'modelis'=>5))->order('date_added desc')->select();
		$upgrade_pic = Db::name('config')->where('name="upgrade_pic"')->value('value');
		$this->assign('upgrade_pic',$upgrade_pic);
		$this->assign('list',$list);
		return $this->fetch();
	}

	public function regis_xieyi(){
		$info = Db::name('config')->where('name="regis_xieyi"')->value('value');
		// var_dump($info);die();
		$this->assign('info',$info);
		return $this->fetch();
	}
}
