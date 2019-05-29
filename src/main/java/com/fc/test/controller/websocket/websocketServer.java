package com.fc.test.controller.websocket;

import java.io.IOException;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.springframework.stereotype.Component;

@Component
@ServerEndpoint("/websocket")
public class websocketServer {
	
	// 统计在线人数

	private static int onlineCount = 0;
	// 连接

	@OnOpen
	public void onOpen(Session session) {

		System.out.println("连接服务器成功！");

	}
	// 关闭

	@OnClose
	public void onClose(Session session) {
		System.out.println("【" + session.getId() + "】退出了连接=");
	}
	
	// 接收消息 客户端发送过来的消息

	@OnMessage

	public void onMessage(String message, Session session) {

		//message的格式可以包含sessionid, 格式[SID,内容XXX]：1,内容
	
		System.out.println("【" + session.getId() + "】客户端的发送消息======内容【" + message + "】");
	
		sendMsg(session, "【我】发送广播消息给大家\n" + message);
	}
	
	
	// 异常

	@OnError
	public void onError(Session session, Throwable throwable) {

		System.out.println("发生异常!");
	
		throwable.printStackTrace();

	}
	
	// 统一的发送消息方法

	public synchronized void sendMsg(Session session, String msg) {
		try {
			session.getBasicRemote().sendText(msg);
	
		} catch (IOException e) {
			e.printStackTrace();
		}

	}
}
