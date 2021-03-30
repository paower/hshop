<?php
namespace app\member\controller;
use app\common\controller\AdminBase;
use think\Db;
use app\common\controller\HomeBase;
class OrderBackend extends AdminBase{
	
	protected function _initialize(){
		parent::_initialize();
		$this->assign('breadcrumb1','会员');
		$this->assign('breadcrumb2','订单');
	}
	
     public function index(){     	

		$this->assign('status',Db::name('order_status')->select());
		$list = osc_order()->order_list(input('param.'),20);
		// var_dump($list);die();
		$this->assign('list',$list);
		$this->assign('empty','<tr><td colspan="20">没有数据~</td></tr>');
		
    	return $this->fetch();
	 }
	 
 	public function show_order(){
     	$order_id = input('param.id');
     	$order = Db::name('order')->where('order_id',$order_id)->find();
     	$goods_list = Db::name('order_goods')
     	->alias('og')
     	->join('goods g','g.goods_id = og.goods_id')
     	->where('og.order_id',$order_id)
     	->select();
     	foreach($goods_list as $key => $value){
     		$goods_discount = Db::name('goods_discount')->where('goods_id',$value['goods_id'])->find();
     		if(!empty($goods_discount)){
     			$goods_list[$key]['price'] = $goods_discount['price'];
     		}
     		$goods_list[$key]['attribute_value'] = Db::name('attribute_value')->where('attribute_value_id','in',$value['attribute_value_id'])->select();
     	}
		 //dump($goods_list);die;
		 
		 //快递公司
		$exp_com_list = Db::name('exp_com')->select();
		$this->assign('exp_com_list',$exp_com_list);
     	$this->assign('goods_list',$goods_list);
     	$this->assign('exp_no',$order['exp_no']);
     	$this->assign('com_exp',$order['com_exp']);
		$this->assign('data',osc_order()->order_info(input('param.id')));		
		$this->assign('crumbs','订单详情');
				
    	return $this->fetch('show');
	 }
	function print_order(){
	 	
		$this->assign('order',osc_order()->order_info(input('param.id')));

		return $this->fetch('order');
	
	 }
	
	function del(){	
		osc_order()->del_order((int)input('param.id'));		
		storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'删除了订单');	
		$this->redirect('OrderBackend/index');
	}	
	
	function history(){
		
	 		$model=osc_order();
						
			if(request()->isPost()){				
				
				if(input('param.order_status_id')==config('cancel_order_status_id')){
				
					$model->cancel_order(input('param.id'));		
					storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'取消了订单');			
					
					$result=true;
				}else{
					$result=$model->add_order_history(input('param.id'),input('param.'));
				}
					
				/**	
				 * 判断是否选择了通知会员，并发送邮件
				 */
				if(input('param.notify')==1){
					
				}
				
				if($result){
					$this->success='新增成功！！';
				}else{
					$this->error='新增失败！！';
				}
			}
			
			$results = $model->get_order_histories(input('param.id'));
		
			foreach ($results as $result) {
				$histories[] = array(
					'notify'     => $result['notify'] ? '是' : '否',
					'status'     => $result['name'],
					'comment'    => nl2br($result['comment']),
					'date_added' => date('Y/m/d H:i:s', $result['date_added'])
				);
			}	
			
			$this->histories=$histories;

			$this->assign('histories',$histories);	
			
			exit($this->fetch());
	}
	
	function update_order(){
		$data=input('post.');		
		$type=input('param.type');
		
		//更新 order_goods
		$og=Db::name('order_goods')->find($data['order_goods_id']);
		
		if($type=='quantity'){
					
			$update['quantity']=$data['quantity'];
			$update['total']=$data['quantity']*$og['price'];
			$update['order_goods_id']=$data['order_goods_id'];
			
		}elseif($type=='price'){
			
			$update['price']=$data['price'];
			$update['total']=$og['quantity']*$data['price'];						
			$update['order_goods_id']=$data['order_goods_id'];
			
		}		
		
		if(Db::name('order_goods')->update($update,false,true)){
			
			$total=0;				
			//更新 order
			$order_goods=Db::name('order_goods')->where(array('order_id'=>$data['order_id']))->select();
			
			foreach ($order_goods as $k => $v) {
				$total+=$v['total'];
			}
			
			Db::name('order')->where(array('order_id'=>$data['order_id']))->update(array('total'=>$total+$data['shipping']));
			
			//更新 order_total
			Db::name('order_total')->where(array('order_id'=>$data['order_id']))->delete();
			
			$data['totals'][0]=array(
				'code'=>'sub_total',
				'order_id'=>$data['order_id'],
				'title'=>'商品价格',
				'text'=>'￥'.$total,
				'value'=>$total				
			);
			$data['totals'][1]=array(
				'code'=>'shipping',
				'order_id'=>$data['order_id'],
				'title'=>'运费',
				'text'=>'￥'.$data['shipping'],
				'value'=>$data['shipping']				
			);				
			$data['totals'][2]=array(
				'code'=>'total',
				'order_id'=>$data['order_id'],
				'title'=>'总价',
				'text'=>'￥'.($total+$data['shipping']),
				'value'=>($total+$data['shipping'])				
			);
						
			foreach ($data['totals'] as $k => $v) {
				Db::name('order_total')->insert($v);
			}
			storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'更新了订单');	
			
			return true;
			
		}
	}	
	//更新运费
	function update_shipping(){
		
		$d=input('post.');
		
		$shipping=$d['shipping'];
		
		$order_total=Db::name('order_total')->where(array('order_id'=>$d['order_id']))->select();
			
		foreach ($order_total as $k => $v) {
			$total[$v['code']]=$v;
		}
		
		if($total['shipping']['value']!=$shipping){
			
			Db::name('order_total')->where(array('order_id'=>$d['order_id']))->delete();
			
			Db::name('order')->where(array('order_id'=>$d['order_id']))->update(array('total'=>$total['sub_total']['value']+$shipping));
			
			$data['totals'][0]=array(
				'code'=>'sub_total',
				'order_id'=>$d['order_id'],
				'title'=>'商品价格',
				'text'=>'￥'.$total['sub_total']['value'],
				'value'=>$total['sub_total']['value']				
			);
			$data['totals'][1]=array(
				'code'=>'shipping',
				'order_id'=>$d['order_id'],
				'title'=>'运费',
				'text'=>'￥'.$shipping,
				'value'=>$shipping				
			);				
			$data['totals'][2]=array(
				'code'=>'total',
				'order_id'=>$d['order_id'],
				'title'=>'总价',
				'text'=>'￥'.($total['sub_total']['value']+$shipping),
				'value'=>($total['sub_total']['value']+$shipping)				
			);
			
			foreach ($data['totals'] as $k => $v) {
				Db::name('order_total')->insert($v);
			}
			storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'更新了订单运费');
			return true;
		}
		
	
		
	}
	
	//更新订单状态
	public function updateOrder()
	{
		$order_id = input('param.id');
		$type = input('param.type');
		if(Db::name('order')->where('order_id',$order_id)->update(['order_status_id'=>$type])){
			if($type == 6){
				$order = Db::name('order')->where('order_id',$order_id)->find();
				$goods = Db::name('order_goods')->where('order_id',$order_id)->select();
				foreach($goods as $key => $value){
					$evaluate = [
						'order_id'=>$order_id,
						'goods_id'=>$value['goods_id'],
						'uid'=>$order['uid'],
						'pj_state'=>1,
						'generate_time'=>time()
					];
					Db::name('evaluate')->insert($evaluate);
				}
				Db::name('reward')->where('order_id',$order_id)->update(['status'=>1]);
			}
			
			if($type == 5){
				$order = Db::name('order')->where('order_id',$order_id)->find();
				Db::name('wallet')->where('uid',$order['uid'])->setInc('principal',$order['price']+$order['freight']);
				Db::name('reward')->where(array('uid'=>$order['uid'],'order_id'=>$order_id))->delete();
				
				$finance = [
					'uid'=>$order['uid'],
					'type'=>4,
					'price'=>$order['price']+$order['freight'],
					'creation_time'=>time(),
					'state'=>2,
					'complete_time'=>time(),
				];
				Db::name('finance')->insert($finance);
			}
			
			storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'修改了会员订单'.$order_id.'的状态');
			$this->success('更新成功');
		}else{
			$this->error('更新失败');
		};
	}

	public function steam(){
		$uid = 48;
		$pid = 47;
		$model_price = array(array('price'=>200,'modelis'=>2));
		$homebase =new  HomeBase;
		$homebase->order_modelis($model_price,$pid,$uid,$type=1);
	}
	//快递发货
	public function Deliver_goods(){
		$order_id = input('order_id');
		$data['com_exp'] = input('com_exp');
		$data['exp_no'] = input('exp_no');
		$data['order_status_id'] = 4;

		$save = Db::name('order')->where('order_id',$order_id)->update($data);
		$goods = Db::name('order_goods')->where('order_id',$order_id)->select();
		$orderinfo = Db::name('order')->where('order_id',$order_id)->field('uid')->find();
		$homebase =new  HomeBase;
		foreach ($goods as $k => $v) {
			if($v['modelis']!=3){
				$model_price[$k]['modelis'] = $v['modelis'];
				$model_price[$k]['price'] = $v['price'];
			}	
		}
		$vip_grade = Db::name('user')->where('user_id',$orderinfo['uid'])->value('vip_grade');
		$pid = Db::name('user')->where('user_id',$orderinfo['uid'])->value('invitation_id');
		$pid_vip_grade = Db::name('user')->where('user_id',$pid)->value('vip_grade');
		$uid = $orderinfo['uid'];
		if($pid_vip_grade>=2){
			
			$homebase->order_modelis($model_price,$pid,$uid,$type=1);
		}
		$homebase->qdl_jms($uid,$model_price,$type=1);
		if($save){
			storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'修改了会员订单'.$order_id.'的状态');
			return ['status'=>1,'info'=>'更新成功'];
		}else{
			return ['status'=>0,'info'=>'更新失败'];
		}
	}
	public function derivedExcel(){
		//时间筛选
		$add_time=input('get.start_time');
		$end_time=input('get.end_time');
		$add_time=empty($add_time)?0:strtotime($add_time);
		$end_time=empty($end_time)?0:strtotime($end_time);

		$where['creation_time'] = array(array('egt',$add_time),array('elt',$end_time));
		$list = Db::name('order')
		->alias("a")
		->join('user b','a.uid=b.user_id')
		->join('order_status c','a.order_status_id=c.order_status_id')
		->field('a.order_id,a.order_num_alias,a.price,a.freight,b.user_name,c.name,a.creation_time')
		->where($where)
		->select();
		// var_dump($list);die();
		foreach ($list as $k=>$v){
			$list[$k]['creation_time'] = date('y-m-d H:i:s',$v['creation_time']);
		}
		
		$title = array(
				'ID',
				'订单号',
				'总计',
				'邮费',
				'会员名',
				'状态',
				'下单时间',
		);
		$filename= "会员订单-".date('Y-m-d',time());
		$r = $this->exportexcel($list,$title,$filename);
	}
}
?>