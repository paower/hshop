<?php
namespace app\common\controller;
use think\Db;
use think\Session;
class HomeBase extends Base{	
	
	protected function _initialize() {
		parent::_initialize();		
		
//		if(request()->isMobile()&&('mobile'!=request()->module())){
//			header('Location:'.request()->domain().'/mobile/');
//			die();
//		}
		
		$this->assign('top_nav',osc_goods()->get_goods_category());
		if(Session::has('user_id')){
			$my_vip_grade = Db::name('user')->where('user_id',Session::get('user_id'))->value('vip_grade');
			// var_dump($my_vip_grade);die();
			$this->assign('my_vip_grade',$my_vip_grade);
		} 
	//网站是否关闭
		$app_close = Db::name('config')->where('name="WEB_SITE_CLOSE"')->value('value');
		
		if($app_close==0){
			$this->redirect('/Index/Login/login');
		}		
	}


	public function upload_img($path){
		$file = request()->file('img');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
		$info = $file->validate(['size'=>50678,'ext'=>'jpg,png,gif,jpeg'])->move(ROOT_PATH . 'public' . DS . 'uploads' . DS . $path);
		if($info){
			$getSaveName=str_replace("\\","/",$info->getSaveName());
			$data = ['status'=>1,'data'=>$getSaveName];
		}else{
			$data = ['status'=>0,'data'=>$file->getError()];
		}
		return $data;
	}

	public function getsubuser($username){
        $D=Db::name('user');
        $room=$D->field('user_id')->where('invitation_id="'.$username.'"')->select();
        $str='';
        if(!empty($room))
        {
            foreach($room as $vo)
            {
                $str.=$vo['user_id'].'-';
                $str.=$this->getsubuser($vo['user_id']);
            }
        }
        return $str;
	}
	/**
	 * 	【$type】 1=>待收货		2=>确认收货
	 */
	public function order_modelis($model_price,$pid,$pay_uid,$type){
		$pingjia_retail = Db::name('config')->where('name="pingjia_retail"')->value('value');//平价商品零售奖
		$pingjia_wholesale = Db::name('config')->where('name="pingjia_wholesale"')->value('value');//平价商品批发奖
		$qiang_retail = Db::name('config')->where('name="qiang_retail"')->value('value');//抢购零售奖
		$qiang_wholesale = Db::name('config')->where('name="qiang_wholesale"')->value('value');//抢购批发奖
		$tuan_retail = Db::name('config')->where('name="tuan_retail"')->value('value');//团购零售奖
		$tuan_wholesale = Db::name('config')->where('name="tuan_wholesale"')->value('value');//团购批发奖
		$shouyi_cost = Db::name('config')->where('name="shouyi_cost"')->value('value');//收益手续费
		$price = 0;
		$pifa_price = 0;

		$pid_vip_grade = Db::name('user')->where('user_id',$pid)->value('vip_grade');
		foreach($model_price as $k=>$v){
			if($v['modelis']==1){
				$price = $v['price']*$pingjia_retail/100;
				$pifa_price = $v['price']*$pingjia_wholesale/100;
			}elseif($v['modelis']==2){
				$price = $v['price']*$qiang_retail/100;
				$pifa_price = $v['price']*$qiang_wholesale/100;
			}elseif($v['modelis']==4){
				$price = $v['price']*$tuan_retail/100;
				$pifa_price = $v['price']*$tuan_wholesale/100;
			}
			
			if($price!=0 && $pid_vip_grade>1){
				//增加零售奖
				$price = $price-$price*$shouyi_cost/100;
				if($type==1){
					Db::name('wallet')->where('uid',$pid)->setInc('settlement',$price);
					$this->financeadd($price,$pid,12,1,$v['modelis'],$pay_uid,2);
				}else{
					$inc = Db::name('wallet')->where('uid',$pid)->setInc('principal',$price);
					Db::name('wallet')->where('uid',$pid)->setDec('settlement',$price);
					$shouyi = Db::name('wallet')->where('uid',$pid)->setInc('accumulate',$price);
					if($inc){
						$this->financeadd($price,$pid,12,1,$v['modelis'],$pay_uid,1);
					}
				}
			}
			if($pifa_price!=0){
			
				$pifa_price=$pifa_price-$pifa_price*$shouyi_cost/100;
				$this->pifajl($pid,$pifa_price,$v['modelis'],$pay_uid,$type);
			}
		}
	}

	//增加批发奖励
	public function pifajl($pid,$pifa_price,$modelis,$pay_uid,$type){
		$gid = Db::name('user')->where('user_id',$pid)->field('vip_grade,invitation_id')->find();
		$gid_vip_grade = Db::name('user')->where('user_id',$gid['invitation_id'])->value('vip_grade');

		if($gid_vip_grade>1){	
			// $dataarr = $this->sort($pid,$vip_grade);
			// if(!empty($dataarr['parr'])){
			// 	foreach ($dataarr['parr'] as $kp => $vp) {
					if($type==1){
						Db::name('wallet')->where('uid',$gid['invitation_id'])->setInc('settlement',$pifa_price);
						$this->financeadd($pifa_price,$gid['invitation_id'],12,2,$modelis,$pay_uid,2);
					}else{
						$incs = Db::name('wallet')->where('uid',$gid['invitation_id'])->setInc('principal',$pifa_price);
						Db::name('wallet')->where('uid',$gid['invitation_id'])->setInc('accumulate',$pifa_price);
						Db::name('wallet')->where('uid',$gid['invitation_id'])->setDec('settlement',$pifa_price);
						if($incs){
							$this->financeadd($pifa_price,$gid['invitation_id'],12,2,$modelis,$pay_uid,1);
						}
					}
			// 	}
			// }
		}
	}
	//增加合伙股东—区代理收益 【$type】 1=>待收货		2=>确认收货
	public function qdl_jms($uid,$model_price,$type){
		
		$vip_grade = Db::name('user')->where('user_id',$uid)->field('vip_grade')->find();
		$jiamengshang = Db::name('config')->where('name="jiamengshang"')->value('value');//加盟商
		$qudaili = Db::name('config')->where('name="qudaili"')->value('value');//区代理
		$shouyi_cost = Db::name('config')->where('name="shouyi_cost"')->value('value');//收益手续费
		$dataarr = $this->sort($uid,$vip_grade);
		$qdlarr = $dataarr['qdlarr'];
		$jmsarr = $dataarr['jmsarr'];
		foreach($model_price as $modelk=>$modelv){
			$price = $modelv['price'];
			$modelis=$modelv['modelis'];
			foreach ($qdlarr as $qdlk => $qdlv) {
				if($modelis==4){
					$qudaili = 1;
				}
				$price_qdl = $price*$qudaili/100;
				$price_qdl = $price_qdl-$price_qdl*$shouyi_cost/100;
				$me_vip_grade = Db::name('user')->where('user_id',$qdlv)->value('vip_grade');
				$user_pid = Db::name('user')->where('user_id',$qdlv)->field('invitation_id')->find();
				$pid_vip_grade = Db::name('user')->where('user_id',$user_pid['invitation_id'])->value('vip_grade');
				if($me_vip_grade>$vip_grade['vip_grade']){	

					if($type==1){
						Db::name('wallet')->where('uid',$qdlv)->setInc('settlement',$price_qdl);
						$this->financeadd($price_qdl,$qdlv,12,3,$modelis,$uid,2);
					}else{
						Db::name('wallet')->where('uid',$qdlv)->setInc('accumulate',$price_qdl);
						Db::name('wallet')->where('uid',$qdlv)->setDec('settlement',$price_qdl);
						$inc_qdl = Db::name('wallet')->where('uid',$qdlv)->setInc('principal',$price_qdl);
						if($inc_qdl){
							$this->financeadd($price_qdl,$qdlv,12,3,$modelis,$uid,1);
						} 
					}
					
						break;
					
				}
			}

			foreach ($jmsarr as $jmsk => $jmsv) {
				if($modelis==4){
					$jiamengshang = 1;
				}
				$price_jms = $price*$jiamengshang/100;
				$price_jms = $price_jms-$price_jms*$shouyi_cost/100;
				$wo_vip_grade = Db::name('user')->where('user_id',$jmsv)->value('vip_grade');
				$user_pids = Db::name('user')->where('user_id',$jmsv)->field('invitation_id')->find();
				$pid_vip_grades = Db::name('user')->where('user_id',$user_pids['invitation_id'])->value('vip_grade');
				if($wo_vip_grade>$vip_grade['vip_grade']){
					if($type==1){
						Db::name('wallet')->where('uid',$jmsv)->setInc('settlement',$price_jms);
						$this->financeadd($price_jms,$jmsv,12,4,$modelis,$uid,2);
					}else{
						Db::name('wallet')->where('uid',$jmsv)->setInc('accumulate',$price_jms);
						Db::name('wallet')->where('uid',$jmsv)->setDec('settlement',$price_jms);
						$inc_jms = Db::name('wallet')->where('uid',$jmsv)->setInc('principal',$price_jms);
						if($inc_jms){
							$this->financeadd($price_jms,$jmsv,12,4,$modelis,$uid,1);
						}
					}
					
						break;
					
				}
			}
		}
		
	}
	public function sort($id,$vip_grade){
		$parr = [];
		$qdlarr = [];
		$jmsarr = [];
		$data = Db::name('user')->select();
		$arr = $this->sort1($id,$data);
		array_pop($arr);
        foreach($arr as $k=>$v){
            $p_grade = Db::name('user')->where('user_id',$v)->value('vip_grade');
            if($p_grade>$vip_grade){
                $parr[] = $v;
			}
			if($p_grade==3){
				$qdlarr[] = $v;
			}
			if($p_grade==4){
				$jmsarr[] = $v;
			}
		}
		$parr = array_reverse($parr);
		$qdlarr = array_reverse($qdlarr);
		$jmsarr = array_reverse($jmsarr);
		$dataarr = ['parr'=>$parr,'qdlarr'=>$qdlarr,'jmsarr'=>$jmsarr];
        return $dataarr;
	}

	public function sort1($id,$data){
		$arr = [];
		foreach($data as $v){
			if($v['user_id'] == $id){
				$arr[] = $v['user_id'];
				if($v['invitation_id'] > 0){
					$arr = array_merge($this->sort1($v['invitation_id'],$data), $arr);
				}
			}
		}
		return $arr;
	}
	
	public function financeadd($price,$uid,$type,$get_type,$modelis,$pay_uid,$shouyi_type){
		$finance = [
            'price'=>$price,
            'uid'=>$uid,
            'type'=>$type,
            'creation_time'=>time(),
			'state'=>2,
			'get_type'=>$get_type,
			'modelis'=>$modelis,
			'pay_uid'=>$pay_uid,
			'shouyi_type'=>$shouyi_type
        ];
        Db::name('finance')->insert($finance);
	}
	
}
