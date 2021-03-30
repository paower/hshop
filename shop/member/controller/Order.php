<?php
namespace app\member\controller;
use app\common\controller\AdminBase;
use think\Db;
class Order extends AdminBase{

    protected function _initialize(){
		parent::_initialize();
		$this->assign('breadcrumb1','会员');
		$this->assign('breadcrumb2','订单');
    }
    
    public function upgrade_order(){
        $param=input('param.');
        $list = Db::name('upgrade_order')->order('id desc')->paginate(15);
        $items = $list->items();
        foreach($items as $k=>$v){
            $user = Db::name('user')->where('user_id',$v['uid'])->field('uid,user_phone')->find();
            $touser = Db::name('user')->where('user_id',$v['toid'])->field('uid,user_phone')->find();
            $items[$k]['u_uid'] = $user['uid'];
            $items[$k]['u_phone'] = $user['user_phone'];
            $items[$k]['t_uid'] = $touser['uid'];
            $items[$k]['t_phone'] = $touser['user_phone']; 
            $items[$k]['province_id'] = Db::name('area')->where('area_id',$v['province_id'])->value('area_name');
            $items[$k]['city_id'] = Db::name('area')->where('area_id',$v['city_id'])->value('area_name');
            $items[$k]['country_id'] = Db::name('area')->where('area_id',$v['country_id'])->value('area_name');
        }
        $this->assign('list',$list);
        $this->assign('items',$items);
        $this->assign('empty','<tr><td colspan="20">没有数据~</td></tr>');
        return $this->fetch();
    }

    //执行升级
    public function carr_upgrade(){
        $id = input('id');
        $res = Db::name('upgrade_order')->where('id',$id)->find();
        $touser = Db::name('user')->where('user_id',$res['toid'])->field('vip_grade')->find();
        $userinfo = Db::name('user')->where('user_id',$res['uid'])->field('vip_grade')->find();
        if($touser['vip_grade']<4){
            $datas['vip_grade'] = $touser['vip_grade']+1;
            $saveto = Db::name('user')->where('user_id',$res['toid'])->update($datas);
        }
        //是否在同一线
        $steam = $this->getsubuser($res['uid']);
        $steam = explode('-',$steam);
        $steam = array_filter($steam);
        if(in_array($res['toid'],$steam)){
            //同一线奖励零售
            $upgrade_retail = Db::name('config')->where('name="upgrade_retail"')->value('value');
            $upgrade_wholesale = Db::name('config')->where('name="upgrade_wholesale"')->value('value');
            $price = $res['price']*$upgrade_retail/100;
            $p_price = $res['price']*$upgrade_wholesale/100;
            Db::name('wallet')->where('uid',$res['uid'])->setInc('principal',$price);
            $this->finance($price,$res['uid'],12,5,1,$res['toid']);
            //同一线批发奖励
            $parr = $this->sort($res['uid'],$userinfo['vip_grade']);
            if(!empty($parr)){
                foreach($parr as $k=>$v){
                    Db::name('wallet')->where('uid',$v)->setInc('principal',$p_price);
                    $this->finance($p_price,$v,12,5,2,$res['toid']);
                }
            }
        }
        $update = Db::name('upgrade_order')->where('id',$id)->update(['status'=>2]);
        if($update){
            storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'修改了升级订单的状态');
            $this->success('更新成功');
        }else{
            $this->error('更新失败');
        }
    }
    //删除订单
    public function del_order(){
        $id = input('id');
        $del = Db::name('upgrade_order')->where('id',$id)->delete();
        if($del){
            storage_user_action(UID,session('user_auth.username'),config('BACKEND_USER'),'删除了升级订单');
            $this->success('删除成功');
        }else{
            $this->error('删除失败');
        }
    }
    public function sort($id,$vip_grade){
        $parr = [];
		$data = Db::name('user')->select();
		$arr = $this->sort1($id,$data);
		array_pop($arr);
        foreach($arr as $k=>$v){
            $p_grade = Db::name('user')->where('user_id',$v)->value('vip_grade');
            if($p_grade>$vip_grade){
                $parr[] = $v;
            }
        }
        return $parr;
	}
    //添加记录
    public function finance($price,$uid,$type,$modelis,$get_type,$pay_uid){
        $finance = [
            'price'=>$price,
            'uid'=>$uid,
            'type'=>$type,
            'creation_time'=>time(),
            'state'=>2,
            'modelis'=>$modelis,
            'get_type'=>$get_type,
            'pay_uid'=>$pay_uid
        ];
        Db::name('finance')->insert($finance);
    }
}