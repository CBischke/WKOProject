window.onload = loadUp;

var img;

function loadUp() {
	img  = document.getElementById('img');

	img.onmouseover = rollOverImage;
	img.onmouseout = rollOutImage;
}

function rollOverImage() {
	img.style.height = "100%";
    img.style.width = "100%";
}

function rollOutImage() {
	img.style.height = "65%";
    img.style.width = "65%";
}