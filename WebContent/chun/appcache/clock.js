let timeOut = null;

function initClock(){
    document.getElementById("btn").disabled = false;
}
function startClock(){
    var b = document.getElementById("btn");
    
    if (b.innerHTML==="시계시작"){
        setClock();
        b.innerHTML = "시계종료";
    } else {
        stopClock();
        b.innerHTML = "시계시작";
    }
}
function setClock(){
    const now = new Date();
    let target = document.getElementById("clock");
    target.innerHTML = now;

    timeOut = setTimeout('setClock()', 1000);
}

function stopClock(){
    clearTimeout(timeOut);
}