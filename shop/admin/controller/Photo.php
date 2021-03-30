<?php
namespace app\admin\controller;
use app\common\controller\AdminBase;
use think\Db;
class Photo extends AdminBase{
    public function index(){
        $this->assign('breadcrumb1','系统');
        $this->assign('breadcrumb2','图片管理');

        $popular_shop = Db::name('config')->where('name="popular_shop"')->value('value');
        $new_shop = Db::name('config')->where('name="new_shop"')->value('value');
        $guesslike_shop = Db::name('config')->where('name="guesslike_shop"')->value('value');
        $fenxiao_pic = Db::name('config')->where('name="fenxiao_pic"')->value('value');
        $qianggou_pic = Db::name('config')->where('name="qianggou_pic"')->value('value');
        $yiyuan_pic = Db::name('config')->where('name="yiyuan_pic"')->value('value');
        $tuangou_pic = Db::name('config')->where('name="tuangou_pic"')->value('value');
        $upgrade_pic = Db::name('config')->where('name="upgrade_pic"')->value('value');
        $this->assign('popular_shop',$popular_shop);
        $this->assign('upgrade_pic',$upgrade_pic);
        $this->assign('tuangou_pic',$tuangou_pic);
        $this->assign('yiyuan_pic',$yiyuan_pic);
        $this->assign('qianggou_pic',$qianggou_pic);
        $this->assign('fenxiao_pic',$fenxiao_pic);
        $this->assign('new_shop',$new_shop);
        $this->assign('guesslike_shop',$guesslike_shop);
        return $this->fetch();
    }

    public function edit(){
        if(request()->isPost()){
            $data = input('param.');

            if($_FILES['file']['size']>0){
                $file = request()->file('file');
                $info = $file->move(ROOT_PATH . 'public' . DS . 'uploads');
                $getSaveName=str_replace("\\","/",$info->getSaveName());
                $datas['value'] = '/public/uploads/'.$getSaveName;
                
                $save = Db::name('config')->where('name',$data['value'])->update($datas);
                if($save){
                    return ['status'=>1,'text'=>'修改成功'];
                }else{
                    return ['status'=>0,'text'=>'修改失败'];
                }
            }else{
                return ['status'=>0,'text'=>'请选择图片'];
            }
        }
    }
}