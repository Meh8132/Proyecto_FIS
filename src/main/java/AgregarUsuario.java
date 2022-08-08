import Clases.ControladorJuego;
import Clases.Jugador;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "AgregarUsuario", value = "/AgregarUsuario")
public class AgregarUsuario extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        HttpSession session = request.getSession();

        Object listaObjetoJugadores = session.getAttribute("listaJugadores");
        ArrayList<Jugador> listaJugadores = new ArrayList<Jugador>();
        if(listaObjetoJugadores != null){
            listaJugadores = (ArrayList<Jugador>) listaObjetoJugadores;
        }
        ControladorJuego controller = new ControladorJuego();
        controller.inicializarJugadores(listaJugadores);
        controller.AgregarJugador(request.getParameter("nombreJugador"));
        session.setAttribute("listaJugadores", controller.getListaJugadores());

        response.sendRedirect("index.jsp");




        /*HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();

        }
        session = request.getSession();

        session.setAttribute("documento", p.getDocumentoIdentidad());*/
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
