<?php
/**
 * #shop#
 *
 * ==========================================================================
 * @link      #shop#
 * @copyright Copyright (c) 2020 *. 
 * @shop    
 * ==========================================================================
 *
 * @author    ##
 *
 */
namespace app\member\model;
use think\Db;
class Transport{
	
	public function getExtendInfo($condition){
	    return Db::name('transport_extend')->where($condition)->select();
	}
	
	public function delTansport($condition){
        $delete = Db::name('transport')->where($condition)->delete();
        if ($delete) {
            $delete = Db::name('transport_extend')->where(array('transport_id'=>$condition['id']))->delete();
        }else{          
       	 	return false;
    	}
        return true;
	}
	
	public function getTransportInfo($condition){
	    return Db::name('transport')->where($condition)->find();
	}

	public function getExtendList($condition=array(), $order='is_default'){
		return Db::name('transport_extend')->where($condition)->order($order)->select();
	}
	
	public function transUpdate($data){
	    return Db::name('transport')->update($data,false,true);
	}
	
	public function delExtend($transport_id){
		return Db::name('transport_extend')->where(array('transport_id'=>$transport_id))->delete();
	}
	
	public function addTransport($data){
	    return Db::name('transport')->insert($data,false,true);
	}
	public function addExtend($data){
		
	    Db::name('transport_extend')->insertAll($data);
	}
}