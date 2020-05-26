<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Platillo Encontrado</title>
        <!--JQUERY-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- FRAMEWORK BOOTSTRAP para el estilo de la pagina-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

        <!-- Los iconos tipo Solid de Fontawesome-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
        <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

        <!-- Nuestro css-->
        <link rel="stylesheet" type="text/css" href="css/general.css" th:href="@{/css/estilos.css}">
    </head>
    <body>
        <nav class="navbar navbar-dark navbar-expand-lg fixed-top navbar-light">
            <div class="container">

                <!-- Navbar: Brand -->
                <a class="navbar-brand d-lg-none" href="#">Platillo Encontrado</a>

                <!-- Navbar: Toggler -->
                <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- Navbar: Collapse -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" style="">

                    <!-- Navbar navigation: Left -->
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item ">
                            <a class="nav-link active" href="administrarUsuarios.jsp">Usuarios</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#">
                                Reservaciones
                            </a>
                        </li>
                    </ul>

                    <!-- Navbar: Brand -->
                    <a class="navbar-brand d-none d-lg-flex" href="#">
                        Platillo Encontrado
                    </a>

                    <!-- Navbar navigation: Right -->
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="gestionPlatillos.jsp">Platillos</a>
                        </li>
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
        <br>
        <%
            String clave = (String) session.getAttribute("idPlatillo");
            String usuario = (String) session.getAttribute("idUsuario");
            String nombre = (String) session.getAttribute("nombre");
            String descripcion = (String) session.getAttribute("descripcion");
            String precio = (String) session.getAttribute("precio");
        %>
        <h3 class="text-center">Datos del platillo encontrado</h3>
        <div class="container">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <form action="gestionPlatillos.jsp" method="post">

                        <table class="table table-sm table-primary">
                            <tr>
                                <td align="right">Clave:</td>
                                <td><%=clave%></td>
                            </tr>
                            <tr>
                                <td align="right">Usuario:</td>
                                <td><%=usuario%></td>
                            </tr>
                            <tr>
                                <td align="right">Nombre:</td>
                                <td><%=nombre%></td>
                            </tr>
                            <tr>
                                <td align="right">Descripcion:</td>
                                <td><%=descripcion%></td>
                            </tr>
                            <tr>
                                <td align="right">Precio:</td>
                                <td>$<%=precio%></td>
                            </tr>
                        </table>
                        <input type="submit" class="btn btn-primary" value="Regresar a la lista de platillos">
                    </form>
                </div>
                <div class="col-sm-3"></div>
            </div>
        </div>	
    </body>
</html>
