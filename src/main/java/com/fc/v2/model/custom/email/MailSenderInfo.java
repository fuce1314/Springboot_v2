package com.fc.v2.model.custom.email;

import java.security.GeneralSecurityException;
/**
 * 发送邮件需要使用的基本信息 
* @author FH QQ 313596790[青苔]
* 修改时间：2015年7月27日
* @version 2.0
 */
import java.util.Properties;

import com.sun.mail.util.MailSSLSocketFactory;
/**
 * 邮件model
 * @ClassName: MailSenderInfo
 * @author fuce
 * @date 2019-06-10 01:06
 * @version V1.0
 */
public class MailSenderInfo {
	// 发送邮件的服务器的IP和端口
	private String mailServerHost;
	private String mailServerPort = "25";
	// 邮件发送者的地址
	private String fromAddress;
	// 邮件接收者的地址
	private String toAddress;
	// 登陆邮件发送服务器的用户名和密码
	private String userName;
	private String password;
	// 是否需要身份验证
	private boolean validate = false;
	//开启ssl
	private boolean ssl=false;
	// 邮件主题
	private String subject;
	// 邮件的文本内容
	private String content;
	// 邮件附件的文件名
	private String[] attachFileNames;

	/**
	 * 获得邮件会话属性
	 */
	public Properties getProperties() {
		Properties p = new Properties();
		p.put("mail.smtp.host", this.mailServerHost);
		p.put("mail.smtp.port", this.mailServerPort);
		p.put("mail.smtp.auth", validate ? "true" : "false");
		//-------当需使用SSL验证时添加，邮箱不需SSL验证时删除即可（测试SSL验证使用QQ企业邮箱）
		if(ssl) {
			String SSL_FACTORY="javax.net.ssl.SSLSocketFactory"; 
	        p.put("mail.smtp.socketFactory.class", SSL_FACTORY);
	        p.put("mail.smtp.socketFactory.fallback", "false");
	        p.put("mail.smtp.socketFactory.port", this.mailServerPort);
	        MailSSLSocketFactory sf=null;
			try {
				sf = new MailSSLSocketFactory();
			} catch (GeneralSecurityException e) {
				e.printStackTrace();
			}
	        sf.setTrustAllHosts(true); 
	        p.put("mail.smtp.ssl.socketFactory", sf);
		}
		
		return p;
	}

	public String getMailServerHost() {
		return mailServerHost;
	}

	public void setMailServerHost(String mailServerHost) {
		this.mailServerHost = mailServerHost;
	}

	public String getMailServerPort() {
		return mailServerPort;
	}

	public void setMailServerPort(String mailServerPort) {
		this.mailServerPort = mailServerPort;
	}

	public boolean isValidate() {
		return validate;
	}

	public void setValidate(boolean validate) {
		this.validate = validate;
	}

	public String[] getAttachFileNames() {
		return attachFileNames;
	}

	public void setAttachFileNames(String[] fileNames) {
		this.attachFileNames = fileNames;
	}

	public String getFromAddress() {
		return fromAddress;
	}

	public void setFromAddress(String fromAddress) {
		this.fromAddress = fromAddress;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getToAddress() {
		return toAddress;
	}

	public void setToAddress(String toAddress) {
		this.toAddress = toAddress;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String textContent) {
		this.content = textContent;
	}

	/**
	 * @return the ssl
	 */
	public boolean isSsl() {
		return ssl;
	}

	/**
	 * @param ssl the ssl to set
	 */
	public void setSsl(boolean ssl) {
		this.ssl = ssl;
	}
	
	
}
