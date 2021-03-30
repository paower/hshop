<?php
namespace app\index\controller;
use app\common\controller\HomeBase;
use think\Session;
use think\Db;
class Goods extends HomeBase
{
    public function index()
    {    		
		
		if(!$list=osc_goods()->get_goods_info((int)input('param.id'))){
			$this->error('商品不存在！！');
		}
		
		$this->assign('SEO',['title'=>$list['goods']['name'].'-'.config('SITE_TITLE'),
		'keywords'=>$list['goods']['meta_keyword'],
		'description'=>$list['goods']['meta_description']]);
		
		osc_goods()->update_goods_viewed((int)input('param.id'));
		
		$this->assign('goods',$list['goods']);
		$this->assign('image',$list['image']);
		$this->assign('options',$list['options']);
		$this->assign('discount',$list['discount']);
		$this->assign('mobile_description',$list['mobile_description']);
		
		return $this->fetch();
   
    }
	
	public function goods_list(){
		$cate_id = input('param.cate_id');//1最新；2特色 3爆款
		if($cate_id==1){
			$list = Db::name('goods')->where(['status'=>1])->order('date_added desc')->select();
			$pic = Db::name('config')->where('name="new_shop"')->value('value');
			$this->assign('title','最新产品');
		}elseif($cate_id==2){
			$pic = Db::name('config')->where('name="guesslike_shop"')->value('value');
			$list = Db::name('goods')->where(['status'=>1,'is_tuijian'=>1])->order('date_added desc')->select();
			$this->assign('title','特色推荐');
		}else{
			$pic = Db::name('config')->where('name="popular_shop"')->value('value');
			$list = Db::name('goods')->where(['status'=>1,'popular'=>1])->order('date_added desc')->select();
			$this->assign('title','爆款商品');
		}
		$this->assign('pic',$pic);
		$this->assign('list',$list);
		return $this->fetch();
	}
	//  商品详情
	public function details()
	{
		// if(!Session::has('user_id')){
		// 	$this->redirect('Login/login');
		// }
		if(input('param.id') ==	''){
			$this->redirect('Index/classify');
		}
		$goods_id = input('param.id');
		$goods = Db::name('goods')->where('goods_id',$goods_id)->find();
		$have_upgrade = Db::name('order_goods')->where('modelis=5')->count();
		// var_dump($have_upgrade);die();
		// if()
		$goods['quantitys'] = $goods['quantity'];
		if($goods['modelis']==3 && $goods['quantity']>=0){
			$goods['quantitys'] = 1;
		}
		$goods_image = Db::name('goods_image')->where('goods_id',$goods_id)->order('sort_order asc')->select();
		$goods_discount = Db::name('goods_discount')->where('goods_id',$goods_id)->find();
		if(empty($goods_discount)){
			$goods_discount = false;
		}
		if($goods['modelis']==5 && $goods['quantity']>=0){
			$goods['quantitys'] = 1;
		}
		if($goods['modelis']==2 && $goods['quantity']>=0){
			$goods['quantitys'] = 1;
		}
		$map=[];
		$goods_attribute = Db::name('goods_attribute')->where('goods_id',$goods_id)->select();
		foreach($goods_attribute as $key => $value){
			$attribute_value = Db::name('attribute_value')->where('attribute_value_id',$value['attribute_value_id'])->find();
			array_push($map,$attribute_value['attribute_id']);
		}
		$map = array_unique($map);
		$map = array_values($map);
		$attribute = Db::name('attribute')->where('attribute_id','in',implode(',',$map))->select();
		$attributeData = Db::name('goods_attribute')
		->alias('ga')
		->join('goods g','g.goods_id = ga.goods_id')
		->join('attribute_value av','av.attribute_value_id = ga.attribute_value_id')
		->where(['g.goods_id'=>$goods_id])
		->field('av.*')
		->select();
		foreach($attribute as $key => $value){
			$attribute[$key]['attribute_value'] = [];
			foreach($attributeData as $key1 => $value1){
				if($value['attribute_id'] == $value1['attribute_id']){
					array_push($attribute[$key]['attribute_value'],$attributeData[$key1]);
				}
			}
		}
		// dump($attribute);die;
		$goods_description = Db::name('goods_description')->where('goods_id',$goods_id)->find();
		
		$goods_brand = Db::name('goods_brand')
		->alias('gb')
		->join('brand b','b.brand_id = gb.brand_id')
		->where('gb.goods_id',$goods_id)
		->find();
		
		$cartnum = Db::name('cart')->where('uid',Session::get('user_id'))->count();

		$vip_grade = Db::name('user')->where('user_id',Session::get('user_id'))->value('vip_grade');
		
		if($goods['modelis']==2){
			
			$start_time = strtotime(date('Y-m-d '.$goods['qiangg_start_time']));
			$end_time = strtotime(date('Y-m-d '.$goods['qiangg_end_time']));
			if($start_time > time() || $end_time < time()){
				$qiangg = array('qiangg'=>0,'qiangg_start_time'=>$goods['qiangg_start_time'],'qiangg_end_time'=>$goods['qiangg_end_time']);
			}else{
				$qiangg = array('qiangg'=>1);
			}
		}else{
			$qiangg = array('qiangg'=>1);
		}

		$goods['weight_class_id'] = Db::name('weight_class')->where('weight_class_id',$goods['weight_class_id'])->value('title');
		$goods['length_class_id'] = Db::name('length_class')->where('length_class_id',$goods['length_class_id'])->value('title');
		// var_dump($goods);die();
		$this->assign([
			'qiangg'=>$qiangg,
			'vip_grade'=>$vip_grade,
			'goods'=>$goods,
			'goods_image'=>$goods_image,
			'goods_discount'=>$goods_discount,
			'attribute'=>$attribute,
			'goods_description'=>$goods_description,
			'goods_brand'=>$goods_brand,
			'cartnum'=>$cartnum,
		]);
		return $this->fetch();
	}
	
	//加入购物车
	public function addCart()
	{
		if(!Session::has('user_id')){
			return ['success'=>false,'text'=>'请先登录'];
		}

		$param=input('post.');
		
		if($goods=Db::name('goods')->find((int)$param['goods_id'])){			
			if((int)$param['num']<$goods['minimum']){
   				return ['success'=>false,'text'=>'最小起订量是'.$goods['minimum'],'minimum'=>$goods['minimum']];
   			} 			
		}else{
			return ['success'=>false,'text'=>'商品不存在'];
		}
		
		$cart['uid']=Session::get('user_id');
		$cart['goods_id']=(int)$param['goods_id'];
		$cart['num']=(int)$param['num'];
		$cart['create_time']=time();
		$cart['attribute_value_id']=$param['attribute_value_id'];
	
		//判断是否有同一个商品
		if(Db::name('cart')->where(array('uid'=>$cart['uid'],'goods_id'=>$cart['goods_id'],'attribute_value_id'=>$cart['attribute_value_id']))->find()){
			Db::name('cart')->where(array('uid'=>$cart['uid'],'goods_id'=>$cart['goods_id'],'attribute_value_id'=>$cart['attribute_value_id']))->setInc('num',$cart['num']);
			$cartnum = Db::name('cart')->where('uid',Session::get('user_id'))->count();
			return ['success'=>true,'text'=>'加入成功','cartnum'=>$cartnum];
		}else{
			if($cart_id=Db::name('cart')->insert($cart,false,true)){
				$cartnum = Db::name('cart')->where('uid',Session::get('user_id'))->count();
				return ['success'=>true,'text'=>'加入成功','cartnum'=>$cartnum];
			}else{
				return ['success'=>false,'text'=>'加入失败'];
			}
		}
	}
}
