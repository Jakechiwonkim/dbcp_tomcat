function WebSocketClass(){
	this. wsProto = null;
    this. wsUri = null;
	this.ws = null;
	this.created = false;
}

WebSocketClass.prototype.getUri = function(){
	if (window.location.protocol == 'http:'){
		this.wsProto = 'ws://';
    } else if (window.location.protocol == 'https:'){
    	this.wsProto = 'wss://';
    }
	this.wsUri = this.wsProto + window.location.host + window.location.pathname + "chun2";
	console.log(this.wsUri);
}

WebSocketClass.prototype.getWebSocket = function(){
    let dev_point = 0;
    if ('WebSocket' in window){
        dev_point = 1;
        ws_obj.ws = new WebSocket(this.wsUri);
    } else if('MozWebSocket' in window) {
        dev_point = 2;
        ws_obj.ws = new MozWebSocket(this.wsUri);
    } else {
        dev_point = 3;
        alert('WebSocket is not supported by this browser.');
        this.created = false;
        return;
    }
    console.log("dev_point:"+dev_point);
    this.created = true;
}
ws_obj = null;


function init_ws(evnet){
    console.log("evnet:", evnet);
    console.log("window:", window);
    
    ws_obj = new WebSocketClass();
    
    ws_obj.getUri();
    
    console.log("ws_obj.wsUri:", ws_obj.wsUri);

    ws_obj.getWebSocket();
    
    console.log(ws_obj.created);
    
    if (ws_obj.create===false) {
    	return;
    }
    
    ws_obj.ws.onopen = function(e){
        console.log("연결성공!");
        //alert(textID.innerHTML);
        
        ws_obj.ws.send(textID.value);
        log('Websocket connect closed,...');
    }

    ws_obj.ws.onmessage = function(evt) {
    	//log(evt.data);
    	document.getElementById('console').innerHTML = evt.data;
    	ws_obj.ws.close();
    };
    
    ws_obj.ws.onerror = function(evt) {
    	document.getElementById('console').innerHTML = "ERROR:" + evt.data;
    	ws_obj.ws.close();
	};
}


function log(message){
	var console = document.getElementById('console');
	var p = document.createElement('p');
	p.style.wordWrap = 'break-word';
	p.appendChild(document.createTextNode(message));
	
	while(console.childNodes.length > 25){
		console.removeChild(console.firstChild);
	}
	console.scrollTop = console.scrollHeight;
}
