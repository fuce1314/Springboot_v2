package com.fc.test.common.conf;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * 读取项目相关配置
 * 
 * @author fuce
 */
@Component
@ConfigurationProperties(prefix = "spring.servlet.multipart")
public class FileConfig
{
    /**单个文件大小*/
    private static String maxFileSize;

	public static String getMaxFileSize() {
		maxFileSize=maxFileSize.replace("MB", "");
		return maxFileSize;
	}

	public void setMaxFileSize(String maxFileSize) {
		FileConfig.maxFileSize = maxFileSize;
	}
   
	
	
	
}
