<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "Modelo.*"%>
<%@page import = "Modelo.Usuario, java.util.ArrayList" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>adm Usuarios</title>
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
                <a class="navbar-brand d-lg-none" href="principalAdmin.jsp">Administrador</a>

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
                    <a class="navbar-brand d-none d-lg-flex" href="principalAdmin.jsp">
                        Administrador
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
        <div class="admin-content">

            <div class="title-content">
            </div>

            <div class="row-content">
                <h4 style="color: greenyellow">Lista de usuarios</h4>
                <hr/>
            </div>
            <%
                ArrayList<Usuario> platillo = null;
                GestorBD gestorBD = new GestorBD();

                platillo = gestorBD.Todosusuarios();
            %> 
            <table id="users_table" class="table table-hover ">
                <thead>
                    <tr style="color: greenyellow">
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Email</th>
                        <th>Direccion</th>
                        <th>Telefono</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Usuario plato : platillo) {
                    %>
                    <tr style="color: greenyellow">
                        <td><%=plato.getIdUsuario()%></td>
                        <td><%=plato.getNombreUsuario()%></td>
                        <td><%=plato.getEmail()%></td>
                        <td><%=plato.getDireccion()%></td>
                        <td><%=plato.getTelefono()%></td>
                        <td>
                            <input id="clickMe" id="Editar" class="btn btn-primary btn-sm" type="button" value="Editar"/>
                            <form action="#" method="POST">
                                <input type="hidden" name="user_id" value="">
                                <button type="submit" class="btn btn-danger btn-sm">Eliminar</button>
                            </form>
                        </td>
                        <% }%>
                    </tr>
                </tbody>
            </table>

        </div>
    </body>
</html>
