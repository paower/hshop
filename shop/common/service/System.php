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
 * 系统公共数据获取
 * 
 */
namespace app\common\service;
use think\Db;
class System{	
	
	/**
     * object 对象实例
     */
    private static $instance;
	
	//禁外部实例化
	private function __construct(){}
	
	//单例模式	
	public static function getInstance(){    
        if (!(self::$instance instanceof self))  
        {  
            self::$instance = new self();  
        }  
        return self::$instance;  
    }
	//禁克隆
	private function __clone(){} 
    
	//取得系统配置分组列表
	public function get_config_module(){
	 	
		$module=array(
			array('module'=>'common','module_name'=>'网站公共配置'),
			array('module'=>'member','module_name'=>'会员'),
			array('module'=>'mobile','module_name'=>'移动端'),
		);
		
		foreach($module as $k => $v) {			
			$config_module[$v['module']]=$v['module_name'];			
		}		
		
		return $module;
			
	}	

}
