<%!
    private void jugadorAgregar(String jugador) {
        String tarjetaJugador = "" +
                "<div class=\"card but_index mx-auto shadow animate__animated animate__fadeInLeft\">\n" +
                "   <div class=\"card-body text-center\"><h2 class=\"fw-semibold\">"+jugador+"</h2></div>\n" +
                "</div>";
    }
    private void imprimirJugador(String jugador){
        String gridJugador="" +
                "<div class=\"row justify-content-center d-flex\">\n" +
                "    <div class=\"col-sm-3 mx-auto gy-3\">\n" +
                "        <div class=\"jugador-circle shadow position-relative mx-auto my-2\">\n" +
                "            <h2 class=\"fw-semibold position-absolute top-50 start-50 translate-middle\">Puntos</h2>\n" +
                "        </div>\n" +
                "        <div class=\"card but-index mx-auto shadow\" style=\"max-width: 200px;\">\n" +
                "            <div class=\"card-body text-center\"><h5 class=\"fw-semibold\">Nombre jugador</h5></div>\n" +
                "        </div>\n" +
                "   </div>\n" +
                "</div>";
    }
%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio</title>

    <!-- Estilos -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Titan+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

    <link rel="shortcut icon" href="#" />
    <link rel="stylesheet" href="style/style.css">
    <link rel="stylesheet" href="style/animations.css">

</head>

<!-- Cuerpo -->

<body class="d-flex flex-column" style="min-height: 100vh !important;">

<div class="container mt-5 position-relative">
    <div class="card shadow animate__animated animate__fadeInDownBig" id="title">
        <div class="card-body text-center"><h1>Juego para beber o algo asi 🍻</h1></div>
    </div>
    <button class="card but_index mx-auto shadow animate__animated animate__fadeInLeft" id="but-agregar-jugador">
        <div class="card-body text-center"><h2 class="fw-semibold">Agregar Jugador</h2></div>
    </button>
    <button class="card but_index mx-auto shadow animate__animated animate__fadeInLeft" id="but-iniciar">
        <div class="card-body text-center"><h2 class="fw-semibold">Iniciar</h2></div>
    </button>
</div>

<form class="card but_index shadow animate__animated popup mx-auto" id="pop-agregar">
    <div class="card-body">
        <div class="card-title d-flex justify-content-between">
            <h2 class="fw-semibold" style="display: inline-block">Ingrese el nombre del jugador</h2>
            <button type="button" class="btn btn-close fw-semibold" id="but-cancelar-pop"></button>
        </div>
        <input class="form-control fw-semibold" type="text" aria-label="agregar-jugador"><br>
        <button type="button" class="btn btn-success fw-semibold mx-auto" id="but-agregar-pop">Agregar</button>
    </div>
</form>

<!-- Scripts -->

<script src="js/style.js"></script>
<script src="js/animations.js"></script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>

</body>
</html>
