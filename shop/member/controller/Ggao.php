<?php
namespace app\member\controller;
use app\common\controller\AdminBase;
use think\Db;
class Ggao extends AdminBase{
    protected function _initialize(){
		parent::_initialize();
		$this->assign('breadcrumb1','会员');
		$this->assign('breadcrumb2','会员管理');
	}
    public function index(){
        $breadcrumb2 = '广告审核';
        $param=input('param.');
		
		$query=[];
        $res = Db::name('ggao')->order('id desc')->paginate(config('page_num'),false,$query);
        $this->assign('list',$res);
        $this->assign('breadcrumb2',$breadcrumb2);
		$this->assign('empty','<tr><td colspan="20">没有数据~</td></tr>');
        return $this->fetch();
    }

    public function info(){
        $id = input('id');
        $info = Db::name('ggao')->where(array('id'=>$id))->find();
        if(request()->isPost()){
            $id = input('id');
            $datas['end_time'] = strtotime(input('end_time'))+86399;
            $datas['status'] = input('status');
			$datas['reason'] = input('reason');
            if($datas){
                $save = Db::name('ggao')->where('id='.$id)->update($datas);
                if($save){
                    return ['status'=>1,'text'=>'审核成功','url'=>url('Ggao/index')];
                }else{
                    return ['status'=>0,'text'=>'审核失败'];
                }
            }
        }
        $this->assign('info',$info);
        return $this->fetch();
    }

    public function del(){
        $id = input('param.id');
        $del = Db::name('ggao')->delete($id);
        if($del){
            return ['status'=>1,'text'=>'删除成功'];
        }else{
            return ['status'=>0,'text'=>'删除失败'];
        }
    }
}