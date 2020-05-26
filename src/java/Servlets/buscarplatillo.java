package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.*;
import javax.servlet.http.HttpSession;

@WebServlet(name = "buscarplatillo", urlPatterns = {"/buscarplatillo"})
public class buscarplatillo extends HttpServlet {

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String clave = request.getParameter("idplatillo");
        String nombre = request.getParameter("nombre");

        try {
            platillos plato;
            GestorBD gestorBD = new GestorBD();

            plato = gestorBD.buscarPlatillo(clave, nombre);

            if (plato != null) {
                HttpSession session = request.getSession();
                session.setAttribute("idPlatillo", plato.getId());
                session.setAttribute("idUsuario", plato.getUsuario());
                session.setAttribute("nombre", plato.getNombre());
                session.setAttribute("descripcion", plato.getDescripcion());
                session.setAttribute("precio", plato.getPrecio());
                    request.getRequestDispatcher("/platilloEncontrado.jsp")
                            .forward(request, response);
            } else {
                request.getRequestDispatcher("/noEncontrado.jsp")
                        .forward(request, response);
            }

        } finally {
            out.close();
        }
    }
    @Override
    protected void doPost(HttpServletRequest request,
                HttpServletResponse response) throws ServletException, IOException{
        processRequest(request, response);
    }
}
