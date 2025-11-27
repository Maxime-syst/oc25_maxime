const canvas_image = document.getElementById("image");
const ctx_image = canvas_image.getContext("2d");

const img_ski = new Image();
img_ski.onload = function() {
    ctx_image.drawImage(img_ski,0,0);
}
// img.src = "/2_web/site_web/images/image1.png";
img_ski.src="/2_web/site_web/images/ski-svgrepo-com.svg";

const canvasSizeX = 500;
const canvasSizeY = 500;
const dx=1;
const dy=1;
var x=1;
var y=1;



function init(){
    img_ski.src="/2_web/site_web/images/ski-svgrepo-com.svg";
    window.requestAnimationFrame(draw);
}

function draw(){
    ctx_image.clearRect(0,0,500,500);
    if ( x> canvasSizeX) {
        ctx_image.translate(-canvasSizeX, -canvasSizeY);
        x=1;
        y=1;
    }else{
        ctx_image.drawImage(img_ski, 5,5,150,150);
        ctx_image.translate(dx,dy);
        x=x+dx;
        y=y+dy;
    }
    window.requestAnimationFrame(draw);
}

init()