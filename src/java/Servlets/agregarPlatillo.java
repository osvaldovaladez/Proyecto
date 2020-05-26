package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.*;

@WebServlet(name = "agregarPlatillo", urlPatterns = {"/agregarPlatillo"})
public class agregarPlatillo extends HttpServlet {

    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String clave = request.getParameter("clave");
            String usuario = request.getParameter("usuario");
            String nombre = request.getParameter("nombre");
            String descripcion = request.getParameter("descripcion");
            String precio = request.getParameter("precio");

            GestorBD gestorBD = new GestorBD();

            if (gestorBD.registrarplatillo(clave, nombre, usuario, descripcion, precio)) {
                request.getRequestDispatcher("/gestionPlatillos.jsp")
                        .forward(request, response);
            } else {
                request.getRequestDispatcher("/errorEnRegistro.jsp")
                        .forward(request, response);
            }

        } finally {
            out.close();
        }

    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    public static void main(String[] args) {
    }
}
