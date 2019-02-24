package websocket;

import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/chun/ws2/chun2")
public class ChunIgEcho {
	@OnOpen
	public void onOpen() {
		System.out.println("천인국");
	}
	
	@OnMessage
	public String responseMessage(String reqMessage) {
		System.out.println(reqMessage);
		return "너 분명히 말했다." + reqMessage;
	}
	
	@OnClose
	public void onClose(Session session) {
		System.out.println("onClose::" + session.getId());
	}
}
