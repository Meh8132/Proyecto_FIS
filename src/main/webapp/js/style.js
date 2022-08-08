// Colores del fondo

var bg_Colors = [
    "0deg, rgba(34,193,195,1) 0%, rgba(253,187,45,1) 100%", 
    "0deg, rgba(131,58,180,1) 0%, rgba(253,29,29,1) 50%, rgba(252,176,69,1) 100%",
    "0deg, rgba(37,37,222,1) 35%, rgba(0,212,255,1) 100%", 
    "0deg, rgba(63,94,251,1) 0%, rgba(252,70,107,1) 100%", 
    "0deg, rgba(222,85,145,1) 0%, rgba(116,170,233,1) 100%"
]

function random_bg(bg_Colors){
    return bg_Colors[Math.floor(Math.random()*bg_Colors.length)]
}
var bg_Random = "linear-gradient("+random_bg(bg_Colors)+")";

document.body.style.background = bg_Random;
