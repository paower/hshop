<?php
namespace app\index\controller;
use app\common\controller\Base;
use app\index\model\Login as Log;
use think\Db;
use think\Session;
use app\common\controller\Smsapi;

class Login extends Base{
	
	//发送验证码
	public function getsms(){

		$uid = 'gdbadi';
		$pwd = '32a69a94166b094ef7d5dbe22f253a2c';
		$api = new Smsapi($uid,$pwd);
		$mobile = input('mobile');
		if(empty($mobile)){
			return ['status'=>0,'text'=>'请输入手机号码'];
		}
		$code = $api->randNumber();
		$contentParam = array(
			'code'		=> $code
		);
		$template = '516850';
		$result = $api->send($mobile,$contentParam,$template);
		// $result = array('stat'=>'100');
		if($result['stat']=='100'){
			session('smscode',$code);
			session('getsms_phone',$mobile);
			return ['status'=>1,'text'=>'发送成功'];
		}else{
			$text = '发送失败:'.$result['stat'].'('.$result['message'].')';
			return ['status'=>0,'text'=>$text];
		}
	}
	//登录
	public function login(){
		if(request()->isPost()){
			$Log=new Log();
			$user_phone = trim(input('post.user_phone'));
			$user_pass = trim(input('post.user_pass'));
			$captcha = input('post.captcha');
			if(!captcha_check($captcha)){
				return ['success'=>false,'text'=>'图形验证码不正确'];
			};	
			if(!empty($user_phone)&&!empty($user_pass)){
				$wheres['user_phone|uid'] = $user_phone;
				$status = Db::name('user')->where($wheres)->value('status');
				if($status == 2){
					return ['success'=>false,'text'=>'该账户已被冻结'];
				}else if(empty($status)){
					return ['success'=>false,'text'=>'该账户不存在'];
				}
				$map=[
					'user_phone|uid'=>$user_phone,
					'password'=>md5($user_pass)
				];
				if($Log->verify($map)){
					
						$this->setReward();
						// $this->redirect('index/pcenter');
						return ['success'=>true,'text'=>'登录成功'];
				}else{
					return ['success'=>false,'text'=>'密码错误'];
				}
			}else{
				return ['success'=>false,'text'=>'请输入正确的账号或密码'];
			}
		}
		$colse = Db::name('config')->where('name="WEB_SITE_CLOSE"')->value('value');
		if($colse==1){
			return $this->fetch();	
		}else{
			return $this->fetch('closesite');
		}
	}

	//生成唯一用户ID
	public function member_id()
	{
		$uid = substr(md5(microtime(true)), 0, 6);
		//检测是否存在
		$db = Db::name('user', 'shop_');
		$count = $db->where(array('uid' => $uid))->count(1);
		($count > 0) && $uid = $this->member_id();
		return $uid;
	}

	//更新积分
	public function setReward()
	{
		$reward = Db::name('reward')->where(['uid'=>Session::get('user_id'),'status'=>1])->select();
		$return_day = Db::name('config')->where('name','return_day')->value('value');
		
		$nowTime = time();
		foreach($reward as $key => $value){
			$disparityStr = $nowTime - $value['generate_time'];
			$disparityDay = intval($disparityStr / 86400);
			if($disparityDay >= $return_day){
				if(Db::name('wallet')->where('uid',$value['uid'])->setInc('principal',$value['interest'])){
					Db::name('wallet')->where('uid',$value['uid'])->setDec('interest',$value['interest']);
					$finance = [
						'state' => 2,
						'complete_time' => $nowTime
					];
					Db::name('finance')->where(['reward_id'=>$value['reward_id'],'state'=>1])->update($finance);
					Db::name('reward')->where('reward_id',$value['reward_id'])->delete();
				};
			}
		}
	}
	
	//注册
	public function register(){
		if(request()->isPost()){
			$Log=new Log();
			$user_phone = trim(input('post.user_phone'));
			$user_pass = trim(input('post.user_pass'));
			$user_getsms = trim(input('post.user_getsms'));
			$user_pass2 = trim(input('post.user_pass2'));
			$invitation_phone = trim(input('post.invitation'));
			$captcha = input('post.captcha');
			if(!captcha_check($captcha)){
				return ['success'=>false,'text'=>'图形验证码不正确'];
			};
			$session_phone = session('getsms_phone');
			$session_smscode = session('smscode');
			if($user_phone!=$session_phone || $user_getsms!=$session_smscode){
				return ['success'=>false,'text'=>'短信验证码不正确或已过期'];
			}
			if(empty($invitation_phone) || $invitation_phone == 0){
				$invitation_id = 0;
			}else{
				$invitation_id = Db::name('user')->where('user_phone',$invitation_phone)->value('user_id');
				if(empty($invitation_id)){
					return ['success'=>false,'text'=>'邀请人账户不存在'];
				}
			}
			
			if($user_pass == $user_pass2){
				if(!empty($user_phone)&&!empty($user_pass)){
					$map=[
						'user_phone'=>$user_phone
					];
					if($Log->m_one($map)){
						return ['success'=>false,'text'=>'该手机号码已被注册'];
					}else{
						Db::startTrans(); //启动事务
	
							$data=[
								'user_phone'=>$user_phone,
								'password'=>md5($user_pass),
								'user_retime'=>time(),
								'invitation_id'=>$invitation_id,
								'uid'=>$this->member_id()
							];
							
							$user_id = Db::name('user')->insertGetId($data);
							if($user_id){
								Db::commit();
								$wallet = [
									'uid'=>$user_id,
									'principal'=>0,
									'interest'=>0
								];
								if(Db::name('wallet')->insert($wallet)){
									$Log->verify(['user_id'=>$user_id]);
									//推荐人增加积分+体验用户
									$pid_grade = Db::name('user')->where('user_phone',$invitation_phone)->value('vip_grade');
									if($pid_grade>=1){
										$datas = [
											'uid'=>$invitation_id,
											'type'=>12,
											'price'=>20,
											'creation_time'=>time(),
											'state'=>2,
											'get_type'=>5,
											'pay_uid'=>$user_id
										];
										Db::name('finance')->insert($datas);
										$jifen = Db::name('wallet')->where(array('uid'=>$invitation_id))->setInc('interest',20);
										$pid_number = Db::name('wallet')->where('uid',$invitation_id)->value('number');
										if($pid_number<20){
											$datac = [
												'uid'=>$invitation_id,
												'type'=>12,
												'price'=>1,
												'creation_time'=>time(),
												'state'=>2,
												'get_type'=>6,
												'pay_uid'=>$user_id
											];
											Db::name('finance')->insert($datac);
											$number = Db::name('wallet')->where(array('uid'=>$invitation_id))->setInc('number');
										}
									}
									
									return ['success'=>true,'text'=>'注册成功'];
									//$this->redirect('index/pcenter');
								}
							}else{
								Db::rollback();
								return ['success'=>false,'text'=>'注册失败'];
							}
					}
				}
			}else{
				return ['success'=>false,'text'=>'两次密码不一致'];
			}
		}
		$user_id = input('param.id');
		if(isset($user_id)){
			$invitation_phone = Db::name('user')->where('user_id',$user_id)->value('user_phone');
		}else{
			$invitation_phone = 0;
		}
		
		$this->assign([
			'invitation_phone' => $invitation_phone
		]);
		return $this->fetch();
	}
	
	//找回
	public function retrieve()
	{
		if(request()->isPost()){
			$Log=new Log();
			$user_phone = trim(input('post.user_phone'));
			$user_pass = trim(input('post.user_pass'));
			$user_pass2 = trim(input('post.user_pass2'));
			$captcha = input('post.captcha');
			if(!captcha_check($captcha)){
				return ['success'=>false,'text'=>'验证码不正确'];
			};
			if($user_pass == $user_pass2){
				if(!empty($user_phone)&&!empty($user_pass)){
					$map=[
						'user_phone'=>$user_phone
					];
					$user = $Log->m_one($map);
					if(!empty($user)){
						$where=[
							'user_phone'=>$user_phone,
						];
						$data=[
							'password'=>md5($user_pass),
						];
						if($Log->m_edit($where,$data)){
							return ['success'=>true,'text'=>'找回成功'];
							//$this->redirect('login/login');
						}else{
							return ['success'=>false,'text'=>'找回失败'];
						}
					}else{
						return ['success'=>false,'text'=>'该账号不存在'];
					}
					
				}
			}else{
				return ['success'=>false,'text'=>'两次密码不一致'];
			}
		}
		return $this->fetch();
	}
	
	//退出
	public function logout(){
		Session::delete("user_phone");
		Session::delete("user_id");
		$this->redirect('Login/login');
	}
	
}
