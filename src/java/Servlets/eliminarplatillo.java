
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.*;

@WebServlet(name = "eliminarplatillo", urlPatterns = {"/eliminarplatillo"})
public class eliminarplatillo extends HttpServlet {

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            String clave = request.getParameter("clave");
        String nombre = request.getParameter("nombre");
            GestorBD gestorBD = new GestorBD();

            if (gestorBD.eliminarplatillo(clave,nombre)) {
                    request.getRequestDispatcher("/gestionPlatillos.jsp")
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
