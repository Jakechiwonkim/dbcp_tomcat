/*
http://localhost:8080/tomcat/chun/websocket/
*/
function Ws (){
	this.ws = null;
};

Ws.prototype.open = function() {
	console.log("window", window);

    if ('WebSocket' in window) {
    	console.log('websock');
        ws = new WebSocket("ws://localhost:8080/tomcat/websocket/echoProgrammatic");
    } else if ('MozWebSocket' in window) {
    	console.log('MozWebsock');
        ws = new MozWebSocket("ws://localhost:8080/tomcat/websocket/echoProgrammatic");
    } else {
        alert('WebSocket is not supported by this browser.');
        return;
    }
    ws.onopen = function () {
        setConnected(true);
    	
        log('Info: WebSocket connection opened.');
    };
    ws.onmessage = function (event) {
        log('Received: ' + event.data);
    };
    ws.onclose = function (event) {
        setConnected(false);
    	
        log('Info: WebSocket connection closed, Code: ' + event.code + (event.reason == "" ? "" : ", Reason: " + event.reason));
    };
}

function setConnected(connected){
//	console.log('setConnected');
	
	document.getElementById('connect').disabled = connected;
    document.getElementById('disconnect').disabled = !connected;
//   document.getElementById('echo').disabled = !connected;
}

function log(message) {
    var console = document.getElementById('console');
    var p = document.createElement('p');
    p.style.wordWrap = 'break-word';
    p.appendChild(document.createTextNode(message));
    console.appendChild(p);
    while (console.childNodes.length > 25) {
        console.removeChild(console.firstChild);
    }
    console.scrollTop = console.scrollHeight;
}
var ws_obj = new Ws();

function ws_open(){
	ws_obj.open();
}

function ws_close(){
	ws_obj.ws.close();
	ws_obj.ws=null;
}