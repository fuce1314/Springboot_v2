package com.fc.test.model.custom.autocode; 
import org.apache.commons.configuration.Configuration;
import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.WordUtils;

public class AutoCodeConfig {
	
	/**自动生成配置文件**/
	private static GlobalConfig globalConfig;
	
	private static Configuration configuration;
	
	
	
	public static GlobalConfig getGlobalConfig() {
		return globalConfig;
	}

	public static void setGlobalConfig(GlobalConfig globalConfig) {
		AutoCodeConfig.globalConfig = globalConfig;
	}

	static {
		configuration=getConfig();
		
		
		
		globalConfig =new GlobalConfig(null, configuration.getString("parentPack"), configuration.getString("parentPath"),configuration.getBoolean("cover"),
				configuration.getBoolean("swagger"),configuration.getString("javaSource"),configuration.getString("resources"),configuration.getString("xmlPath"),configuration.getString("packageBean"),configuration.getString("packageDao"),configuration.getString("packageController"), configuration.getString("packageService"), configuration.getString("tablePrefix"),configuration.getBoolean("autoCode"), configuration.getBoolean("watchMobel"),configuration.getString("author"),configuration.getString("email"));
	}
	public AutoCodeConfig() {
		super();
		
	}
	
	
	 /**
     * 获取配置信息
     */
    public static  Configuration getConfig() {
        try {
            return new PropertiesConfiguration("auto_code/auto_code_config.properties" );
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
    public static String getConfigkey(String key) {
    	return configuration.getString("tablePrefix" );
    }
   
    /**
     * 列名转换成Java属性名
     * 例如 xxx_xx_aa > XxxXxAa
     */
    public static String columnToJava(String columnName) {
        return WordUtils.capitalizeFully(columnName, new char[]{'_'}).replace("_", "" );
    }
    
    /**
     * 表名转换成Java类名
     * 例如t_user > User
     */
    public static String tableToJava(String tableName) {
        if (StringUtils.isNotBlank(globalConfig.getTablePrefix())) {
            tableName = tableName.replaceFirst(globalConfig.getTablePrefix(), "" );
        }
        return columnToJava(tableName);
    }
	
}
