function MyWebSocket(){
    this.ws = null;
}

MyWebSocket.prototype.setWs = function(_ws){
    this.ws = _ws;
}

MyWebSocket.prototype.open = function(){
    this.ws.onopen = function() {
        console.log("연결성공!");
        alert(textID.innerHTML);
        
        echo_websocket.send(textID.innerHTML);
        doSend(textID.innerHTML);
    }
}

function doSend(message) {
    
    writeToScreen("Sent message: " + message);
}

let ws_obj = null;

function init_ws(evnet){
    console.log("evnet:", evnet);
    console.log("window:", window);

    ws_obj = new MyWebSocket();

    let wsProto = null;
    let wsUrl = null;
        
    if (window.location.protocol == 'http:'){
        wsProto = 'ws://';
    } else if (window.location.protocol == 'https:'){
        wsProto = 'wss://';
    }
    wsUrl = wsProto + window.location.host + window.location.pathname + "chun2";

    console.log(wsUrl);

    let dev_point = 0;
    if ('WebSocket' in window){
        dev_point = 1;
        ws_obj.setWs(new WebSocket(wsUrl));
    } else if('MozWebSocket' in window) {
        dev_point = 2;
        ws_obj.setWs(new MozWebSocket(wsUrl));
    } else {
        dev_point = 3;
        alert('WebSocket is not supported by this browser.');
		return;
    }
    ws_obj.open();
    
    console.log("dev_point:"+dev_point)
}