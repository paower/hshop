<?php
namespace app\member\controller;
use app\common\controller\AdminBase;
use think\Db;
use app\index\model\Login as Log;
class MemberBackend extends AdminBase{
	
	protected function _initialize(){
		parent::_initialize();
		$this->assign('breadcrumb1','会员');
		$this->assign('breadcrumb2','会员管理');
	}
	
     public function index(){     	

		$param=input('param.');
		
		$query=[];
		
		if(isset($param['user_name'])){		
			$map['u.user_name']=['like',"%".$param['user_name']."%"];
			$query['u.user_name']=urlencode($param['user_name']);
		}else{
			$map['u.user_id']=['gt',0];
		}
		if(isset($param['vip_grade'])&&$param['vip_grade']!=0){
			$map['u.vip_grade'] = $param['vip_grade'];
			$vip_grade = $param['vip_grade'];
		}else{
			$vip_grade = 0;
		}
		$list=[];
		
		$list=Db::name('user')->alias('u')->where($map)->order('u.user_id desc')->paginate(config('page_num'),false,$query);		
		$items = $list->items();		
		foreach ($items as $k => $v) {
			$items[$k]['invitation_id'] = Db::name('user')->where('user_id',$v['invitation_id'])->value('user_phone');
		}
		//等级会员数
		$ordinary = Db::name('user')->where('vip_grade=1')->count();
		$distribution = Db::name('user')->where('vip_grade=2')->count();
		$district_agent = Db::name('user')->where('vip_grade=3')->count();
		$join_in = Db::name('user')->where('vip_grade=4')->count();
		$this->assign([
			'ordinary'=>$ordinary,
			'distribution'=>$distribution,
			'district_agent'=>$district_agent,
			'join_in'=>$join_in,
			'vip_grade'=>$vip_grade
		]);
		$this->assign('list',$list);
		$this->assign('items',$items);		
		$this->assign('empty','<tr><td colspan="20">没有数据~</td></tr>');
		
    	return $this->fetch();
	 }
	 public function add(){
	 	
		if(request()->isPost()){
			$date=input('post.');
			// var_dump($date);die();
			$uid = trim($date['uid']);
			if(strlen($uid)!=6){
				return ['error'=>'请输入六位字符串的用户ID'];
			}
			if(!empty($date['user_phone'])){
				$res=Db::name('user')->where('user_phone='.$date['user_phone'])->find();	
				if(!empty($res)){
					return ['error'=>'该手机号码已被注册'];
				}
			}
			if(empty($date['password'])){
				return ['error'=>'请输入登录密码'];
			}
			if(empty($date['pay_password'])){
				return ['error'=>'请输入安全密码'];
			}
			$haveuid = Db::name('user')->where(array('uid'=>$uid))->find();
			if($haveuid){
				return ['error'=>'该用户ID已存在'];
			}else{
				Db::startTrans();
			}
			
			$member['user_name']=$date['user_name'];
			$member['password']=md5($date['password']);
			$member['pay_password']=md5($date['pay_password']);
			$member['user_retime']=time();
			$member['user_phone']=$date['user_phone'];
			$member['user_photo']=$date['image'];
			$member['uid'] = $date['uid'];
			$uid=Db::name('user')->insertGetId($member);
			$wallet = [
				'uid'=>$uid,
				'principal'=>0,
				'interest'=>0,
				'number'=>0
			];
			if(Db::name('wallet')->insert($wallet)){
				Db::commit();
				storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'新增了会员');
			
				return ['success'=>'新增成功','action'=>'add'];
			}else{
				Db::rollback();
				return ['error'=>'新增失败'];
				
			}
			
		}
		$this->assign('crumbs','新增');
	 	return $this->fetch();
	 }
 	 public function edit(){
	 	
		if(request()->isPost()){
			$date=input('post.');		
			if($date['password'] == '000000'){
				$member['password']=$date['password1'];
			}else{
				$member['password']=md5($date['password']);
			}
			if($date['pay_password'] == '000000'){
				$member['pay_password']=$date['pay_password1'];
			}else{
				$member['pay_password']=md5($date['pay_password']);		
			}
			$member['status']=$date['status'];
			$member['user_phone']=$date['user_phone'];
			$member['user_name']=$date['user_name'];
			$member['user_photo'] = $date['image'];
			$member['vip_grade'] = $date['vip_grade'];
			$member['is_ggao'] = $date['is_ggao'];
			
			if(Db::name('user')->where('user_id',$date['user_id'])->update($member)){
				
				storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'编辑了会员');
				return ['success'=>'修改成功','action'=>'edit'];
			}else{
				return ['error'=>'修改失败'];
			}
		}
		
		$list=[
			'info'=>Db::name('user')->where('user_id='.input('id'))->find(),
			'address'=>Db::name('address')->where('uid',input('id'))->select()
		];
		// var_dump($list);die();
		$this->assign('data',$list);
		$this->assign('group',Db::name('member_auth_group')->field('id,title')->select());
		$this->assign('crumbs','会员资料');
		
		$province = Db::name('area')->where('area_deep',1)->select();
		$city = Db::name('area')->where('area_deep',2)->select();
		$country = Db::name('area')->where('area_deep',3)->select();
		$wallet =Db::name('wallet')->where('uid',input('param.id'))->find();
		
		$this->assign([
			'province'=>$province,
			'city'=>$city,
			'country'=>$country,
			'json_city'=>json_encode($city),
			'json_country'=>json_encode($country),
			'wallet'=>$wallet
		]);
	 	return $this->fetch('info');
	 }
 	
 	
 	public function addAddress()
 	{
 		if(request()->isPost()){
			$date=input('post.');
			$res=Db::name('user')->where('user_id='.$date['uid'])->find();	
			if(empty($res)){
				return ['error'=>'该会员账号不存在'];
			}
			$address['uid']=$date['uid'];
			$address['name']=$date['name'];
			$address['telephone']=$date['telephone'];
			$address['address']=$date['address'];
			$address['city_id']=$date['city'];
			$address['country_id']=$date['country'];
			$address['province_id']=$date['province'];
			$address['default']=$date['default'];
			
			if($address['default']==2){
				Db::name('address')->where(['uid'=>$date['uid'],'default'=>2])->update(['default'=>1]);
			}
			
			$uid=Db::name('address')->insert($address,false,true);
			
			if($uid){
				storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'添加了会员的收货地址');
				return ['success'=>'添加成功','action'=>'add'];
			}else{
				return ['error'=>'添加失败'];
			}
			
		}
 	}
 	
 	
 	public function editAddress()
 	{
 		if(request()->isPost()){
 			$date=input('post.');
			$address['name']=$date['name'];
			$address['telephone']=$date['telephone'];
			$address['address']=$date['address'];
			$address['city_id']=$date['city'];
			if($date['country']=='change'){
				$date['country'] = 0;
			}
			$address['country_id']=$date['country'];
			$address['province_id']=$date['province'];
			$address['default']=$date['default'];
			if($address['default']==2){
				Db::name('address')->where(['uid'=>$date['uid'],'default'=>2])->update(['default'=>1]);
			}
			if(Db::name('address')->where('address_id',$date['address_id'])->update($address)){
				
				storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'修改了会员的收货地址');
				return ['success'=>'修改成功','action'=>'edit'];
			}else{
				return ['error'=>'修改失败'];
			}
		}
		$data = Db::name('address')->where('address_id',input('param.id'))->find();	
		
		$province = Db::name('area')->where('area_deep',1)->select();
		$city = Db::name('area')->where('area_deep',2)->select();
		$country = Db::name('area')->where('area_deep',3)->select();
		
		$this->assign('crumbs','会员资料');
		$this->assign([
			'province'=>$province,
			'city'=>$city,
			'country'=>$country,
			'json_city'=>json_encode($city),
			'json_country'=>json_encode($country),
			'data'=>$data
		]);
	 	return $this->fetch('address');
 	}
 	
 	
 	public function remove()
 	{
 		$res = Db::name('address')->where('address_id',input('param.id'))->delete();
 		if($res){
 			storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'删除了会员收货地址');	
			$this->redirect('MemberBackend/edit');
 		}else{
			$this->redirect('MemberBackend/edit');
 		}
 	}
 	
 	public function setWallet()
 	{
 		if(request()->isPost()){
 			$date=input('post.');
 			$wallet['principal'] = $date['principal'];
 			$wallet['interest'] = $date['interest'];
 			$wallet['number'] = $date['number'];
 			
 			if(Db::name('wallet')->where('uid',$date['uid'])->update($wallet)){
 				storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'修改了会员的钱包资产');
				return ['success'=>'修改成功','action'=>'edit'];
 			}else{
 				return ['error'=>'修改失败'];
 			}
 		}
 	}
	public function adminlogin(){
		$userid = input('param.id');
		$map = [
			'user_id'=>$userid
		];
		$Log = new log();
		$info = $Log->verify($map);
		if($info){
			$this->redirect('/index/Index/pcenter');
		}
	 }
}
?>