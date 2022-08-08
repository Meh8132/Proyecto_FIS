var iniciar_Btn = document.getElementById("but-iniciar")
var agregar_Jugador_Btn = document.getElementById("but-agregar-jugador")
var pop_Agregar = document.getElementById("pop-agregar")
var agregar_Btn_Pop = document.getElementById("but-agregar-pop")
var cancelar_Btn_Pop = document.getElementById("but-cancelar-pop")

// funciones

function fade_Out(element){
    element.style.pointerEvents = "none"
    element.classList.add("animate__fadeOut")
    setTimeout(function(){
        element.style.display = "none"
        element.style.pointerEvents = "auto"
        element.classList.remove("animate__fadeOut")
    }, 1000)
}

function pop_Blur(){
    var blur_Body = document.getElementsByClassName("container")[0]
    if(blur_Body.classList.contains("blur")){
        setTimeout(function(){blur_Body.classList.toggle("blur")}, 1000)
    }
    else{
        blur_Body.classList.toggle("blur")
    }
}

// animaciones

iniciar_Btn.onclick = function(){
    fade_Out(iniciar_Btn)
    setTimeout(function(){agregar_Jugador_Btn.style.display = "block"}, 1000)
}

agregar_Jugador_Btn.onclick = function(){   
    pop_Blur()
    pop_Agregar.classList.add("animate__fadeInDown")
    pop_Agregar.style.display = "block"
}

agregar_Btn_Pop.onclick = function(){
    var jugador = pop_Agregar.value
    fade_Out(pop_Agregar)
    pop_Blur()
}

cancelar_Btn_Pop.onclick = function(){
    fade_Out(pop_Agregar)
    pop_Blur()
}