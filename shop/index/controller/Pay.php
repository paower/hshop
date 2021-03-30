<?php
namespace app\index\controller;
use app\common\controller\HomeBase;
use think\Session;
use think\Db;
class Pay extends HomeBase
{
    public function pay_success()
    {    	
		return $this->fetch();
    }
    
    //支付订单
    public function payment()
    {
    	if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		
		$order = Db::name('order')->where('order_id',input('param.id'))->find();
		$wallet = Db::name('wallet')->where('uid',Session::get('user_id'))->find();
		if($order['is_number_goods']==1){
			$this->assign('is_number_goods',1);
		}else{
			$this->assign('is_number_goods',0);
		}
		$pay_nums = $order['price']+$order['freight'];
		$this->assign([
			'order'=>$order,
			'pay_nums'=>$pay_nums,
			'wallet'=>$wallet
		]);
		
    	return $this->fetch();
    }
    
    //确认支付
    public function pay()
    {
    	if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		if(request()->isPost()){
			// $data = input('post.');
			// var_dump($data);die();
			$pay_password = md5(input('post.pay_password'));
			$user = Db::name('user')->where('user_id',Session::get('user_id'))->find();
			if($user['pay_password'] == ''){
				return ['error'=>false,'text'=>'您还没有设置安全密码，请设置'];
			}
			if($pay_password != $user['pay_password']){
				return ['error'=>false,'text'=>'密码错误'];
			}
			$order_id = input('post.order_id');
			$order = Db::name('order')->where('order_id',$order_id)->find();
			$order_goods = Db::name('order_goods')->where('order_id',$order_id)->field('modelis,goods_id')->select();
			$pid = Db::name('user')->where('user_id',Session::get('user_id'))->field('vip_grade,invitation_id')->find();
			foreach ($order_goods as $k => $v) {
				$is_goods = Db::name('goods')->where('goods_id',$v['goods_id'])->field('price')->find();
				$modelis[] = $v['modelis'];
				if($v['modelis']==5){
					$ordercontroller = controller('Order');
					$ordercontroller->isupgrade_order($is_goods['price'],Session::get('user_id'),$pid['invitation_id'],1);
				}
			}
			
			$wallet = Db::name('wallet')->where('uid',Session::get('user_id'))->find();
			// var_dump($wallet);die();
			$pay_type=input('post.pay_type');
			
			
			if($pay_type==1){
				$value = 'principal';//积分
				if($wallet[$value] < $order['price'] + $order['freight']){
					return ['error'=>false,'text'=>'积分不足，请充值'];
				}
			}elseif($pay_type==2){
				$value = 'interest';//购物券
				if($wallet['principal']<$order['freight']+1){
					return ['error'=>false,'text'=>'积分不足，请充值'];
				}
				if($wallet[$value] < $order['points_price']){
					return ['error'=>false,'text'=>'购物券不足'];
				}
			}elseif($pay_type==3){
				$value = 'number';//体验用户
				if($wallet['principal']<$order['freight']+1){
					return ['error'=>false,'text'=>'积分不足，请充值'];
				}
				if($wallet[$value] < $order['number_price']){
					return ['error'=>false,'text'=>'体验用户数量不足'];
				}
			}
			
			if(Db::name('order')->where('order_id',$order_id)->update(['order_status_id'=>1,'pay_time'=>time()])){
				if($pay_type==1){
					Db::name('wallet')->where('uid',Session::get('user_id'))->setDec('principal',$order['price']+$order['freight']);
					$finance_type = 3;
					$pay_nums = $order['price']+$order['freight'];
				}elseif($pay_type==2){
					Db::name('wallet')->where('uid',Session::get('user_id'))->setDec('interest',$order['points_price']);
					$finance_type = 8;
					$pay_nums = $order['points_price'];
				}elseif($pay_type==3){
					Db::name('wallet')->where('uid',Session::get('user_id'))->setDec('number',$order['number_price']);
					$finance_type = 7;	
					$pay_nums = $order['number_price'];			
				}
				Db::name('wallet')->where('uid',Session::get('user_id'))->setInc('interest',$order['return_points']);
				if($pay_type==2||$pay_type==3){
					Db::name('wallet')->where('uid',Session::get('user_id'))->setDec('principal',$order['freight']);
					Db::name('wallet')->where('uid',Session::get('user_id'))->setDec('principal',1);//额外扣除积分余额
					$freight = [
						'uid'=>Session::get('user_id'),
						'type'=>3,
						'price'=>$order['freight']+1,
						'creation_time'=>time(),
						'state'=>2,
						'complete_time'=>time(),
					];
					Db::name('finance')->insert($freight);
				}
				$reward = [
					'uid'=>Session::get('user_id'),
					'interest'=>$order['return_points'],
					'generate_time'=>time(),
					'status'=>2,
					'order_id'=>$order_id,
				];
				$reward_id = Db::name('reward')->insertGetId($reward);
				if(in_array('5',$modelis)){
					Db::name('user')->where('user_id',Session::get('user_id'))->update(['vip_grade'=>2]);	
				}
				$finance = [
					'uid'=>Session::get('user_id'),
					'type'=>$finance_type,
					'price'=>$pay_nums,
					'creation_time'=>time(),
					'state'=>2,
					'complete_time'=>time(),
				];
				Db::name('finance')->insert($finance);
				$finance2 = [
					'uid' => Session::get('user_id'),
					'type' => 5,
					'price' => $order['return_points'],
					'creation_time' => time(),
					'state' => 1,
					'reward_id' => $reward_id
				];
				Db::name('finance')->insert($finance2);
				
				return ['success'=>true,'text'=>'支付成功'];
			}
		}
    }
	
	//支付成功
	public function payOk()
	{
		if(!Session::has('user_id')){
			$this->redirect('Login/login');
		}
		$order = Db::name('order')->where('order_id',input('param.id'))->find();
		$this->assign([
			'order'=>$order
		]);
		return $this->fetch();
	}
}
