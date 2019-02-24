package websocket;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint(value = "/oracle/oracleWebSocket")
public class EchoServer {
	@OnOpen
	public void onOpen(
//			Session session
			) {
		String msg ="연결되었습니다";
		
//		System.out.println("onOpen::" + session
//			+ "\n onOpen:" + session.getId()
//			+ "\n getRequestURI:" + session.getRequestURI()
//			);
		
	}

	@OnClose
	public void onClose(Session session) {
		System.out.println("onClose::" + session.getId());
	}

	@OnMessage
	public String echo(String incomingMessage) {
		return "에코서버 (" + incomingMessage + ") 반환값";
	}

	@OnError
	public void onError(Throwable t) {
		System.out.println("onError::" + t.getMessage());
	}
}