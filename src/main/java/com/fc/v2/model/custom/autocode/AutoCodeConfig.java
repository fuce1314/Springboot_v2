package com.fc.v2.model.custom.autocode;

import org.apache.commons.configuration.Configuration;
import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.configuration.PropertiesConfiguration;

public class AutoCodeConfig {
	 /**
     * 获取配置信息
     */
    public static  Configuration getConfig() {
        try {
        	final PropertiesConfiguration proCfing = new PropertiesConfiguration();
        	proCfing.setEncoding("UTF-8");
        	proCfing.load("auto_code/auto_code_config.properties");
        	return proCfing;
        } catch (ConfigurationException e) {
            System.out.println("获取配置文件失败");
        	e.printStackTrace();
        	return null;
        }
    }
    
    
    /**
     * 获取配置文件value
     * @param key
     * @return
     * @author fuce
     * @Date 2019年8月17日 上午12:29:40
     */
    public  String getConfigkey(String key) {
    	return getConfig().getString(key);
    }
   
    
    
}
