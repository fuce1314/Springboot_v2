package com.fc.test.controller.websocket;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.server.standard.ServerEndpointExporter;

/**
* 开启websocket的支持
* 该模块打包war 需要删除，且tomcat>=8.0
* @Title: WebSocketConfig.java 
* @Package cn.com.jetshine.ywzspt.controller.websocket 
* @Description: TODO(用一句话描述该文件做什么) 
* @author fuce  
* @date 2019年5月29日 下午3:57:40 
* @version V1.0   
 */
@Configuration
public class WebSocketConfig {
	@Bean
	public ServerEndpointExporter serverEndpointExporter(){

		return new ServerEndpointExporter();

	}
}
