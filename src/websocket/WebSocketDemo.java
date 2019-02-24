package websocket;

import java.io.IOException;

import javax.websocket.OnMessage;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

//https://seban21.blog.me/220012438384
@ServerEndpoint("/echo")
public class WebSocketDemo {

	@OnMessage
	public void echoTextMessage(Session session, String msg, boolean last) {

		try {
			if (session.isOpen()) {
				String msg2 = ">>>" + msg;
				session.getBasicRemote().sendText(msg2, last);
			}

		} catch (IOException e) {
			try {
				session.close();
			} catch (IOException e1) {
				// Ignore
			}
		}
	}
}
