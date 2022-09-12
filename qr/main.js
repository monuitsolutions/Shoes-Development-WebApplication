var btn = document.querySelector('.btn');
var code = document.querySelector('.code');
var input = document.querySelector('.input');
var toast = document.querySelector('#toast');

btn.addEventListener("click", generate);
function generate(){
    var data = input.value;
    code.url = `https://api.qrserver.com/v1/create-qr-code/?${data}`;
    code.src = url;
    toastDiv();
}

function toastDiv(){
    toast.className = "show";
    setTimeout(
         function(){
        toast.className = toast.className.replace("show", "");
    },1000);
}
