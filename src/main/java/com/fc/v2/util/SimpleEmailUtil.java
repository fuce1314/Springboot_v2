package com.fc.v2.util;

import com.fc.v2.common.conf.V2Config;
import com.fc.v2.common.spring.SpringUtils;
import com.fc.v2.model.auto.TSysEmail;
import com.fc.v2.model.custom.email.MailSenderInfo;
import com.fc.v2.model.custom.email.MyAuthenticator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Properties;

/**
 * 简单邮件发送通用类
 * @ClassName: SimpleMailSender
 * @author fuce
 * @date 2019-06-09 23:57
 **/
public class SimpleEmailUtil {

	private static Logger logger = LoggerFactory.getLogger(SimpleEmailUtil.class);

	/**
	 * 以文本格式发送邮件
	 * @param mailInfo 待发送的邮件的信息
	 * @return
	 * @throws Exception
	 */
	public boolean sendTextMail(MailSenderInfo mailInfo) throws Exception {
		logger.info("构造一个发送邮件的session");
		// 判断是否需要身份认证
		MyAuthenticator authenticator = null;
		Properties pro = mailInfo.getProperties();
		if (mailInfo.isValidate()) {
			// 如果需要身份认证，则创建一个密码验证器
			authenticator = new MyAuthenticator(mailInfo.getUserName(), mailInfo.getPassword());
		}
		// 根据邮件会话属性和密码验证器构造一个发送邮件的session
		Session sendMailSession = Session.getDefaultInstance(pro, authenticator);
		// 根据session创建一个邮件消息
		Message mailMessage = new MimeMessage(sendMailSession);
		// 创建邮件发送者地址
		Address from = new InternetAddress(mailInfo.getFromAddress());
		// 设置邮件消息的发送者
		mailMessage.setFrom(from);
		// 创建邮件的接收者地址，并设置到邮件消息中
		Address to = new InternetAddress(mailInfo.getToAddress());
		mailMessage.setRecipient(Message.RecipientType.TO, to);
		// 设置邮件消息的主题
		mailMessage.setSubject(mailInfo.getSubject());
		// 设置邮件消息发送的时间
		mailMessage.setSentDate(new Date());
		// 设置邮件消息的主要内容
		String mailContent = mailInfo.getContent();
		mailMessage.setText(mailContent);
		// 发送邮件
		Transport.send(mailMessage);
		logger.info("发送成功！");
		return true;
	}

	/**
	 * 以HTML格式发送邮件、以及附件
	 * @param mailInfo 待发送的邮件信息
	 */
	public boolean sendHtmlMail(MailSenderInfo mailInfo,List<File> fileList) throws Exception {
		// 判断是否需要身份认证
		MyAuthenticator authenticator = null;
		Properties pro = mailInfo.getProperties();
		// 如果需要身份认证，则创建一个密码验证器
		if (mailInfo.isValidate()) {
			authenticator = new MyAuthenticator(mailInfo.getUserName(), mailInfo.getPassword());
		}
		// 根据邮件会话属性和密码验证器构造一个发送邮件的session
		Session sendMailSession = Session.getInstance(pro, authenticator);
		// 根据session创建一个邮件消息
		Message mailMessage = new MimeMessage(sendMailSession);
		// 创建邮件发送者地址
		Address from = new InternetAddress(mailInfo.getFromAddress());
		// 设置邮件消息的发送者
		mailMessage.setFrom(from);
		// 创建邮件的接收者地址，并设置到邮件消息中
		Address to = new InternetAddress(mailInfo.getToAddress());
		// Message.RecipientType.TO属性表示接收者的类型为TO
		mailMessage.setRecipient(Message.RecipientType.TO, to);
		// 设置邮件消息的主题
		mailMessage.setSubject(mailInfo.getSubject());
		// 设置邮件消息发送的时间
		mailMessage.setSentDate(new Date());
		// MiniMultipart类是一个容器类，包含MimeBodyPart类型的对象
		Multipart mainPart = new MimeMultipart();
		// 创建一个包含HTML内容的MimeBodyPart
		BodyPart html = new MimeBodyPart();
		// 设置HTML内容
		html.setContent(mailInfo.getContent(), "text/html; charset=utf-8");
		mainPart.addBodyPart(html);
		

        // 遍历添加附件
        if (fileList != null && fileList.size() > 0) {
            for (File file : fileList) {
                BodyPart attachmentBodyPart = new MimeBodyPart();
                DataSource source = new FileDataSource(file);
                attachmentBodyPart.setDataHandler(new DataHandler(source));
                attachmentBodyPart.setFileName(file.getName());
                mainPart.addBodyPart(attachmentBodyPart);
            }
        }
		
		
		// 将MiniMultipart对象设置为邮件内容
		mailMessage.setContent(mainPart);
		//保存邮件
		mailMessage.saveChanges();
		// 发送邮件
		Transport.send(mailMessage);
		return true;
	}
	
	public static void sendEmail(TSysEmail tSysEmail) throws Exception {
		V2Config v2Config= SpringUtils.getBean(V2Config.class);
		// 这个类主要是设置邮件
		MailSenderInfo mailInfo = new MailSenderInfo();
		mailInfo.setMailServerHost(v2Config.getEmailSmtp());
		mailInfo.setMailServerPort(v2Config.getEmailPort());
		mailInfo.setValidate(true);
		mailInfo.setSsl(true);
		mailInfo.setUserName(v2Config.getEmailAccount());
		mailInfo.setPassword(v2Config.getEmailPassword());// 您的邮箱密码
		mailInfo.setFromAddress(mailInfo.getUserName());//发件人地址
		mailInfo.setToAddress(tSysEmail.getReceiversEmail());//收件人地址
		mailInfo.setSubject(tSysEmail.getTitle());
		mailInfo.setContent(tSysEmail.getContent());
		// 这个类主要来发送邮件
		SimpleEmailUtil sms = new SimpleEmailUtil();
		// sms.sendTextMail(mailInfo);//发送文体格式
		 // 附件
//        String fileName1 = "C:\\Users\\Administrator\\Desktop\\周报.txt";
//        File file1 = new File(fileName1);
//        String fileName2 = "C:\\Users\\Administrator\\Desktop\\111.rp";
//        File file2 = new File(fileName2);
//        List<File> fileList = new ArrayList<File>();
//        fileList.add(file1);
//        fileList.add(file2);
		sms.sendHtmlMail(mailInfo,null);// 发送html格式
	}



	public static void main2(String[] args) throws Exception {
		// 这个类主要是设置邮件
		MailSenderInfo mailInfo = new MailSenderInfo();
		mailInfo.setMailServerHost("smtp.sina.com");
		mailInfo.setMailServerPort("25");
		mailInfo.setValidate(true);
		mailInfo.setUserName("aaaaa@sina.com");
		mailInfo.setPassword("aaaaaaa");// 您的邮箱密码
		mailInfo.setFromAddress("aaaaa@sina.com");
		mailInfo.setToAddress("bbbbbbbb@qq.com");
		mailInfo.setSubject("设置邮箱标题wwwwww");
		mailInfo.setContent("<div class=\"content\" style=\"\" id=\"faqDetail\">\r\n"
				+ "  <div class=\"return\" style=\"display:none;\"><a href=\"/cgi-bin/help\">首页</a> » <a href=\"/cgi-bin/help?id=28\">客户端设置</a></div>\r\n"
				+ "  <h2>如何设置IMAP、POP3/SMTP及其SSL加密方式？ </h2>\r\n" + "  <div class=\"answer\">\r\n"
				+ "  <div><font color=\"#555555\">&nbsp;</font> \r\n" + "<div>如果您的电子邮件客户端支持SSL，可以在设置中选择使用SSL。</div>\r\n"
				+ "<div>&nbsp;</div>\r\n" + "<div>\r\n" + "<div><strong>\r\n" + "<div><strong>\r\n"
				+ "<div><strong>通用配置参数：</strong></div>\r\n"
				+ "<div><strong>（我们已经默认都支持这些协议，用户无需自己手动开启这些服务器与端口）</strong></div>\r\n"
				+ "<div><strong></strong>&nbsp;</div>\r\n"
				+ "<div><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"><font color=\"#000000\"><strong>POP3/SMTP协议</strong> </font>\r\n"
				+ "<div style=\"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">\r\n"
				+ "<div style=\"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\"><font color=\"#000000\">接收邮件服务器：pop.exmail.qq.com&nbsp;，<span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\">使用SSL，端口号995</span></font></div>\r\n"
				+ "<div style=\"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\"><font color=\"#000000\">发送邮件服务器：smtp.exmail.qq.com&nbsp;，<span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\">使用SSL，端口号465</span></span></font></div>\r\n"
				+ "<div style=\"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\"><font color=\"#000000\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\">海外用户可使用以下服务器</span></span></font></div>\r\n"
				+ "<div style=\"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\"><font color=\"#000000\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\">\r\n"
				+ "<div style=\"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\"><font color=\"#000000\">接收邮件服务器：hwpop.exmail.qq.com&nbsp;，<span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\">使用SSL，端口号995</span></font></div>\r\n"
				+ "<div style=\"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\"><font color=\"#000000\">发送邮件服务器：hwsmtp.exmail.qq.com&nbsp;，<span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\">使用SSL，端口号465</span></span></font></div></span></span></font></div>\r\n"
				+ "<div style=\"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\"><font color=\"#000000\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"></span></span></font>&nbsp;</div>\r\n"
				+ "<div style=\"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">\r\n"
				+ "<div><strong><font color=\"#000000\">IMAP协议</font></strong></div>\r\n" + "<div>\r\n"
				+ "<div><font color=\"#000000\">接收邮件服务器：imap.exmail.qq.com&nbsp;&nbsp;，<span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\">使用SSL，端口号993</span></font></div>\r\n"
				+ "<div><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\">\r\n"
				+ "<div style=\"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\"><font color=\"#000000\">发送邮件服务器：smtp.exmail.qq.com&nbsp;，<span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\">使用SSL，端口号465</span></span></font></div>\r\n"
				+ "<div style=\"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\"><font color=\"#000000\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\">海外用户可使用以下服务器</span></span></span></span></font></div>\r\n"
				+ "<div style=\"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\"><font color=\"#000000\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\">\r\n"
				+ "<div><font color=\"#000000\">接收邮件服务器：hwimap.exmail.qq.com&nbsp;，<span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\">使用SSL，端口号993</span></font></div>\r\n"
				+ "<div><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\">\r\n"
				+ "<div style=\"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\"><font color=\"#000000\">发送邮件服务器：hwsmtp.exmail.qq.com&nbsp;，<span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\">使用SSL，端口号465</span></span></font></div>\r\n"
				+ "<div style=\"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\"><font color=\"#000000\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"></span></span></font>&nbsp;</div></span></div></span></span></span></span></font></div></span></div></div></div></div></span></div></strong><span style=\"WIDOWS: 2; TEXT-TRANSFORM: none; BACKGROUND-COLOR: rgb(255,255,255); TEXT-INDENT: 0px; LETTER-SPACING: normal; FONT: 14px/22px verdana; WHITE-SPACE: normal; ORPHANS: 2; COLOR: rgb(51,51,51); WORD-SPACING: 0px; -webkit-text-size-adjust: auto; -webkit-text-decorations-in-effect: none; -webkit-text-stroke-width: 0px\" class=\"Apple-style-span\"></span></div>\r\n"
				+ "<div>\r\n"
				+ "<div style=\"PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-LEFT: 0px; PADDING-RIGHT: 0px; PADDING-TOP: 0px\">\r\n"
				+ "<div>\r\n"
				+ "<div><font color=\"#000000\"><strong>账户名：</strong>您的企业邮箱账户名，账户名需要填写完整的邮件地址</font></div>\r\n"
				+ "<div><font color=\"#000000\"><strong>密码：</strong>您的企业邮箱密码</font></div>\r\n"
				+ "<div><font color=\"#000000\"><strong>电子邮件地址：</strong>您的企业邮箱的完整邮件地址</font></div>\r\n"
				+ "<div><font color=\"#000000\"></font>&nbsp;</div>\r\n"
				+ "<div><font color=\"#000000\">使用SSL协议之前，请您先参考<a href=\"http://service.exmail.qq.com/cgi-bin/help?subtype=1&amp;&amp;id=28&amp;&amp;no=1000585\">常用客户端的一般配置方式</a>：</font></div>\r\n"
				+ "<div><font color=\"#000000\"></font>&nbsp;</div></div></div></div></strong><strong><font size=\"5\">在Foxmail中使用SSL：</font></strong></div></div>\r\n"
				+ "<div>\r\n"
				+ "<div>1.如果你之前未进行过配置，则可参考<a href=\"http://service.exmail.qq.com/cgi-bin/help?subtype=1&amp;&amp;id=28&amp;&amp;no=1000564#1\">Foxmail客户端的设置</a>，帮助中将会引导你在第一次创建时如何设置SSL方式。</div>\r\n"
				+ "<div>2.本帮助主要引导用户如何在已经配置好的账号中启用SSL加密方式。（Foxmail7.0以上版本）</div>\r\n" + "<div>&nbsp;</div>\r\n"
				+ "<div><img src=\"/images/faq/%7B102D4FB3-ABD3-4F5F-A992-D6D70C0C9616%7D.tmp\"></div>\r\n"
				+ "<div>以POP方式为例，如图。</div>\r\n"
				+ "<div><img src=\"/images/faq/%7B19205862-C367-4E9F-8636-70F96693C564%7D.tmp\"></div>\r\n"
				+ "<div>在Foxmail中修改IMAP账户也是同样的操作。</div>\r\n" + "<div>&nbsp;</div>\r\n" + "<div>&nbsp;</div>\r\n"
				+ "<div>&nbsp;</div>\r\n"
				+ "<div><strong><font size=\"5\">在Outlook 中使用SSL：</font></strong></div></div></div>\r\n"
				+ "<div>设置之前请参考：<a href=\"http://service.exmail.qq.com/cgi-bin/help?subtype=1&amp;&amp;id=28&amp;&amp;no=1000564#2\">Outlook客户端设置</a></div>\r\n"
				+ "<div>如果需要使用SSL加密方式，则在创建或者修改账户设置时设置好SSL的相关参数即可。</div>\r\n" + "<div><strong>POP协议</strong></div>\r\n"
				+ "<div>如图，勾选<strong>[要求使用安全密码验证进行登录]，</strong>并在<strong>[其他设置]</strong>中<strong>[高级]</strong>选项卡中勾选相关SSL选项与填写SSL端口号。</div>\r\n"
				+ "<div><img src=\"/images/faq/%7B8F396F27-5100-44C3-B8E7-C2DC0F4E2901%7D.tmp\"></div>\r\n"
				+ "<div><img src=\"/images/faq/%7B0294793A-2FE0-43F7-840A-18932FE0CE76%7D.tmp\"></div>\r\n"
				+ "<div>&nbsp;</div>\r\n" + "<div><strong>IMAP协议</strong></div>\r\n"
				+ "<div><img src=\"/images/faq/%7BAFD872AB-6069-488B-B7BC-C538124E7F3E%7D.tmp\"></div>\r\n"
				+ "  </div>\r\n" + "</div>");
		// 这个类主要来发送邮件
		SimpleEmailUtil sms = new SimpleEmailUtil();
		// sms.sendTextMail(mailInfo);//发送文体格式
		sms.sendHtmlMail(mailInfo,null);// 发送html格式
	}

	public static void main(String[] args) throws Exception {
		// 这个类主要是设置邮件
		MailSenderInfo mailInfo = new MailSenderInfo();
		mailInfo.setMailServerHost("smtp.sina.com");
		mailInfo.setMailServerPort("465");
		mailInfo.setValidate(true);
		mailInfo.setSsl(true);
		mailInfo.setUserName("tttt@sina.com");
		mailInfo.setPassword("ttttttt");// 您的邮箱密码
		mailInfo.setFromAddress("aaaaa@sina.com");//发件人地址
		mailInfo.setToAddress("bbbbb@qq.com");//收件人地址
		mailInfo.setSubject("设置邮箱标题wwwwww");
		mailInfo.setContent("<div class=\"content\" style=\"\" id=\"faqDetail\">\r\n"
				+ "  <div class=\"return\" style=\"display:none;\"><a href=\"/cgi-bin/help\">首页</a> » <a href=\"/cgi-bin/help?id=28\">客户端设置</a></div>\r\n"
				+ "  <h2>如何设置IMAP、POP3/SMTP及其SSL加密方式？ </h2>\r\n" + "  <div class=\"answer\">\r\n"
				+ "  <div><font color=\"#555555\">&nbsp;</font> \r\n" + "<div>如果您的电子邮件客户端支持SSL，可以在设置中选择使用SSL。</div>\r\n"
				+ "<div>&nbsp;</div>\r\n" + "</div>");
		// 这个类主要来发送邮件
		SimpleEmailUtil sms = new SimpleEmailUtil();
		// sms.sendTextMail(mailInfo);//发送文体格式
		 // 附件
        String fileName1 = "C:\\Users\\Administrator\\Desktop\\周报.txt";
        File file1 = new File(fileName1);
        String fileName2 = "C:\\Users\\Administrator\\Desktop\\111.rp";
        File file2 = new File(fileName2);
        List<File> fileList = new ArrayList<File>();
        fileList.add(file1);
        fileList.add(file2);
		sms.sendHtmlMail(mailInfo,fileList);// 发送html格式
	}

}
