<?php
namespace app\admin\controller;
use app\common\controller\AdminBase;
use think\Db;
class Settings extends AdminBase{
	
	protected function _initialize(){
		parent::_initialize();
		$this->assign('breadcrumb1','系统');
				
	}

	
	function general(){			
		$this->assign('breadcrumb2','基本配置');
		$this->assign('common',$this->get_config_by_module('common'));
		return $this->fetch();
	}
	
	function get_config_by_module($module){
		
		$list=Db::name('config')->where('module',$module)->select();
		if(isset($list)){
			foreach ($list as $k => $v) {
				$config[$v['name']]=$v;
			}
		}
		return $config;
	}
	
	function save(){
		
		if(request()->isPost()){
			
			$config=input('post.');			
			
			if($config && is_array($config)){
				$c=Db::name('Config');    
	            foreach ($config as $name => $value) {
	                $map = array('name' => $name);
					$c->where($map)->setField('value', $value);					
	            }
				
	        }
	        clear_cache();
			storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'更新系统基本配置');	
	      return ['success'=>'更新成功'];
		  
		}
	}
	
	function savejl(){
		if(request()->isPost()){
			$config=input('post.');	
			if($config){
				$c = Db::name('config');
				foreach($config as $name=>$value){
					$map=array('name'=>$name);
					$c->where($map)->setField('value',$value);
				}
			}
			clear_cache();
			storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'更新奖励参数设置');	
			return ['success'=>'更新成功'];
		}
	}
	function other(){
		
		$this->assign('length',Db::name('length_class')->select());
		$this->assign('weight',Db::name('weight_class')->select());		
		$this->assign('order_status',Db::name('order_status')->select());		
		$this->assign('member_auth_group',Db::name('member_auth_group')->field('id,title')->select());		
		$this->assign('breadcrumb2','其他配置');
		$this->assign('bank_name',Db::name('config')->where('name','bank_name')->value('value'));
		$this->assign('bank_name2',Db::name('config')->where('name','bank_name2')->value('value'));
		$this->assign('bank_user',Db::name('config')->where('name','bank_user')->value('value'));
		$this->assign('bank_num',Db::name('config')->where('name','bank_num')->value('value'));
		$this->assign('return_day',Db::name('config')->where('name','return_day')->value('value'));
		$this->assign('invite_background',Db::name('config')->where('name','invite_background')->value('value'));
		$this->assign('regis_xieyi',Db::name('config')->where('name','regis_xieyi')->value('value'));
		return $this->fetch();
	}
	//奖励设置
	public function reward(){
		$this->assign('breadcrumb2','奖励设置');
		$this->assign('upgrade_retail',Db::name('config')->where('name="upgrade_retail"')->value('value'));
		$this->assign('upgrade_wholesale',Db::name('config')->where('name="upgrade_wholesale"')->value('value'));
		$this->assign('fenxiao_discount',Db::name('config')->where('name="fenxiao_discount"')->value('value'));
		$this->assign('pingjia_retail',Db::name('config')->where('name="pingjia_retail"')->value('value'));
		$this->assign('pingjia_wholesale',Db::name('config')->where('name="pingjia_wholesale"')->value('value'));
		$this->assign('tuan_retail',Db::name('config')->where('name="tuan_retail"')->value('value'));
		$this->assign('tuan_wholesale',Db::name('config')->where('name="tuan_wholesale"')->value('value'));
		$this->assign('qiang_retail',Db::name('config')->where('name="qiang_retail"')->value('value'));
		$this->assign('qiang_wholesale',Db::name('config')->where('name="qiang_wholesale"')->value('value'));
		$this->assign('tixian_cost',Db::name('config')->where('name="tixian_cost"')->value('value'));
		$this->assign('shouyi_cost',Db::name('config')->where('name="shouyi_cost"')->value('value'));
		$this->assign('tixian_min',Db::name('config')->where('name="tixian_min"')->value('value'));
		$this->assign('jiamengshang',Db::name('config')->where('name="jiamengshang"')->value('value'));
		$this->assign('qudaili',Db::name('config')->where('name="qudaili"')->value('value'));
		$this->assign('upgrade_price',Db::name('config')->where('name="upgrade_price"')->value('value'));
		return $this->fetch();
	}
	public function frontend()
	{
		$frontend_images = Db::name('frontend_images')->order('frontend_images_weight asc')->select();
		$this->assign([
			'frontend_images' => $frontend_images,
			'breadcrumb2' => '前台配置',
		]);
		return $this->fetch();
	}
	
	function ajax_eidt(){
		if(request()->isPost()){
			
			$data=input('post.');
			
			$table_name=$data['table'];
			
			if(isset($data[$table_name][$data['key']])){
				$info=$data[$table_name][$data['key']];
			}	
			
			if(isset($data['id'])&&$data['id']!=''){
				//更新
				$info[$data['pk_id']]=(int)$data['id'];				
								
				$r=Db::name($table_name)->update($info,false,true);
				if($r){
					storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'更新了前台轮播图'.$data['id']);	
					return ['success'=>'更新成功'];
				}else{
					return ['error'=>'更新失败'];
				}
			}else{
				//新增
				$r=Db::name($table_name)->insert($info,false,true);
				if($r){
					storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'添加了前台轮播图');
					return ['success'=>'添加成功','id'=>$r];
				}else{
					return ['error'=>'添加失败'];
				}
			}
		}
	}
	 function ajax_del(){
		if(request()->isPost()){
			$data=input('post.');		
			
			if(empty($data['id'])){
				return ['success'=>'删除成功'];
			}
			
			$r=Db::name($data['table'])->delete($data['id']);
			
			if($r){
				return ['success'=>'删除成功'];
			}else{
				return ['error'=>'删除失败'];
			}
		}
	}

	function notice(){
		$list = Db::name('article')->order('id desc')->paginate(config('page_num'));	
		
		$this->assign('breadcrumb2','公告发布');
		$this->assign('empty', '<tr><td colspan="20">~~暂无数据</td></tr>');
		$this->assign('list',$list);
		return $this->fetch();	
	}

	function set_notice(){
		$data=input('param.');
		Db::name('article')->where('id',$data['id'])->update(['status'=>$data['status']],false,true);		
		storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'修改了公告状态');	
		$this->redirect('Settings/notice');
	}

	function notice_edit(){
		$id = input('id');
		$info = Db::name('article')->where('id',$id)->find();
		if(request()->isPost()){
			$id = input('id');
			$data['content'] = input('content');
			$data['title'] = input('title');
			$data['status'] = input('status');
			$data['cate'] = input('cate');
			if($data){
				$save = Db::name('article')->where('id',$id)->update($data);
				if($save){
					return ['success'=>'修改成功'];
				}else{
					return ['error'=>'修改失败'];
				}
			}
		}
		$this->assign('type',2);
		$this->assign('info',$info);
		$this->assign('breadcrumb2','公告修改');
		return $this->fetch('noticeadd');
	}

	function notice_add(){
		$this->assign('breadcrumb2','公告新增');
		$info = ['status'=>1,'cate'=>1];
		if(request()->isPost()){
			$id = input('id');
			$data['content'] = input('content');
			$data['title'] = input('title');
			$data['status'] = input('status');
			$data['cate'] = input('cate');
			$data['time'] = time();
			
			if($data){
				$add = Db::name('article')->insert($data);
				if($add){
					return ['success'=>'新增成功'];
				}else{
					return ['error'=>'新增失败'];
				}
			}
		}
		$this->assign('type',1);
		$this->assign('info',$info);
		return $this->fetch('noticeadd');
	}
	function notice_del(){
		$id = input('id');
		$info = Db::name('article')->delete($id);
		if($info){
			return ['status'=>1];
		}else{
			return ['status'=>0];
		}
	}
}
?>