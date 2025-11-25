console.log("Bonjour");


const statut = document.getElementById("statut");
const ctx_statut = statut.getContext("2d");

ctx_statut.fillStyle="green";
ctx_statut.fillRect(0,0,300,300);

const dessin = document.getElementById("dessin");
const context = dessin.getContext("2d");

context.fillStyle="black";
context.fillRect(0,0,100,100);
context.fillRect(100,100,100,100);
context.fillRect(200,200,100,100);

for(var i=0; i<5; i++){
    for (var j =0;j<5;j++){
        if()
    }
}