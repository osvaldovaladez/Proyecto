<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "Modelo.*"%>
<%@page import = "Modelo.platillos, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--JQUERY-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- FRAMEWORK BOOTSTRAP para el estilo de la pagina-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

        <!-- Los iconos tipo Solid de Fontawesome-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
        <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

        <!-- Nuestro css-->
        <link rel="stylesheet" type="text/css" href="css/general.css"> 
    </head>
    <body>
        <nav class="navbar navbar-dark navbar-expand-lg fixed-top navbar-light">
            <div class="container">

                <!-- Navbar: Brand -->
                <a class="navbar-brand d-lg-none" href="#">Touché</a>

                <!-- Navbar: Toggler -->
                <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- Navbar: Collapse -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" style="">

                    <!-- Navbar navigation: Left -->
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item ">
                            <a class="nav-link active" href="Acerca.jsp">Acerca de nosotros</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="menu.jsp">
                                Menu
                            </a>
                        </li>
                    </ul>

                    <!-- Navbar: Brand -->
                    <a class="navbar-brand d-none d-lg-flex" href="#">
                        Touché
                    </a>

                    <!-- Navbar navigation: Right -->
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="index.jsp">Salir</a>
                        </li>
                    </ul>

                </div> <!-- / .navbar-collapse -->

            </div> <!-- / .container -->
        </nav>
        <br>
        <br>
        <br>
        <%
            ArrayList<Reservacion> reservaciones = null;
            GestorBD gestorBD = new GestorBD();
            
            session = (HttpSession) request.getSession();
            
            reservaciones = gestorBD.TodasReservaciones((String)session.getAttribute("usuario"));
        %> 
        <div class="container">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">

                <table class="table">
                    <tr class="table-dark">
                        <th>Clave</th>
                        <th>Hora</th>
                        <th>Fecha</th>
                        <th>Mesa</th>
                        <th>Personas</th>
                    </tr>
                    <%
                            for (Reservacion reserva : reservaciones) {
                    %>
                    <tr class="table-dark" valign="rigth">
                            <td><%=reserva.getId()%></td>
                            <td><%=reserva.getHora()%></td>
                            <td><%=reserva.getFecha()%></td>
                            <td><%=reserva.getMesa()%></td>
                            <td><%=reserva.getPersonas()%></td>
                        </tr>

                        <% }%>
                </table>

                <br>
                
                </div>
                <div class="col-sm-3"></div>
            </div>
        </div>	
    </body>
</html>
