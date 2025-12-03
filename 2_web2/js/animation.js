const canvas_image = document.getElementById("image");
const ctx_image = canvas_image.getContext("2d");

const img_ski = new Image();
img_ski.onload = function() {
    ctx_image.drawImage(img_ski,0,0);
}
// img.src = "/2_web/site_web/images/image1.png";
img_ski.src="images/animation.svg";

const canvasSizeX = canvas_image.width= canvas_image.clientWidth;
const canvasSizeY = canvas_image.height= canvas_image.clientHeight;
const dx=1;
const dy=1;
var x=1;
var y=1;



function init(){
    img_ski.src="images/animation.svg";
    window.requestAnimationFrame(draw);
}

function draw(){
    ctx_image.setTransform(1,0,0,1,0,0)
    ctx_image.clearRect(0,0,canvasSizeX,canvasSizeY);
    if ( x> canvasSizeX) {
        x=1;

    }else{
        ctx_image.drawImage(img_ski, x ,5,30,30);
        x=x+dx;
        
    }
    window.requestAnimationFrame(draw);
}

init()