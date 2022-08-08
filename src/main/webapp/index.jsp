<%@ page import="java.util.ArrayList" %>
<%@ page import="Clases.Jugador" %>
<%!
    private void jugadorAgregar(String jugador) {
        String tarjetaJugador = "" +
                "<div class=\"card but_index mx-auto shadow animate__animated animate__fadeInLeft\">\n" +
                "   <div class=\"card-body text-center\"><h2 class=\"fw-semibold\">"+jugador+"</h2></div>\n" +
                "</div>";
    }
    private void imprimirJugador(String jugador){
        String gridJugador="" +
                "<div class=\"col-sm-3 mx-auto gy-3\">\n" +
                "    <div class=\"jugador-circle shadow position-relative mx-auto my-2\">\n" +
                "        <h2 class=\"fw-semibold position-absolute top-50 start-50 translate-middle\">Puntos</h2>\n" +
                "    </div>\n" +
                "    <div class=\"card but-index mx-auto shadow\" style=\"max-width: 200px;\">\n" +
                "        <div class=\"card-body text-center\"><h5 class=\"fw-semibold\">Nombre jugador</h5></div>\n" +
                "    </div>\n" +
                "</div>\n";
    }
    private String imprimirJugadores(HttpServletRequest request){
        HttpSession session = request.getSession();
        Object listaObjetoJugadores = session.getAttribute("listaJugadores");
        ArrayList<Jugador> listaJugadores = new ArrayList<Jugador>();
        if(listaObjetoJugadores != null){
            listaJugadores = (ArrayList<Jugador>) listaObjetoJugadores;
        }
        String resultado = "";
        for (Jugador jugador: listaJugadores) {
            resultado += "<div class = 'jugadorEnlistado'>" + jugador.getNombre() + "</div>";
        }
        return resultado;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="support.js">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="/resource/estilos.css" type="text/css">
    <title>Document</title>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<h1>JUEGO PARA BEBER Y DAÑARSE LA CABEZA RE DURO</h1>
<!-- Button trigger modal -->
<div class="listaPlayers">
    <%
        out.println(imprimirJugadores(request));
    %>
</div>
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
    Agregar Jugador
</button>

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form method="get" name="formAgregarJugador" id="formAgregarJugador" action="AgregarUsuario">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Agregar Jugador</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <input type="text" name="nombreJugador" id="nombreJugador" placeholder="Ponga su nombre">
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">Agregar</button>
            </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
