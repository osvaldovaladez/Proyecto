<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--JQUERY-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- FRAMEWORK BOOTSTRAP para el estilo de la pagina-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

        <!-- Los iconos tipo Solid de Fontawesome-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
        <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>

        <!-- Nuestro css-->
        <link rel="stylesheet" href="css/general.css">
    </head>
    <body>
        <br>
        <br>
        <br>
        <br>
        <br>
        <nav class="navbar navbar-dark navbar-expand-lg fixed-top navbar-light">
            <div class="container">

                <!-- Navbar: Brand -->
                <a class="navbar-brand d-lg-none" href="index.jsp">Touché</a>

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
                            <a class="nav-link" href="#">
                                Menu
                            </a>
                        </li>
                    </ul>

                    <!-- Navbar: Brand -->
                    <a class="navbar-brand d-none d-lg-flex" href="index.jsp">
                        Touché
                    </a>

                    <!-- Navbar navigation: Right -->
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">Login</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="Contacto.jsp">Contact</a>
                        </li>
                    </ul>

                </div> <!-- / .navbar-collapse -->

            </div> <!-- / .container -->
        </nav>
        <br>
        <br>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-6">
                    <form action="login" method="post">
                        <table border="0">    
                            <tr>
                                <td>
                                    <label class="table-dark">Usuario: </label>
                                </td>
                                <td>
                                    <input type="text" name="user"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                    <label class="table-dark">Contraseña: </label>
                                </td>
                                <td>
                                    <input type="password" name="pass"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                    <input type="submit" class="btn btn-light" value="Entrar">
                                </td>
                                <td>
                                    <br>
                                    
                                </td>
                            </tr>
                        </table>
                    </form>
                    <br> 
                    <form action="Registro_Usuario.jsp" method="post">
                        <input type="submit" class="btn btn-light" value="Registrar">
                    </form>
                </div>
                <div class="col-sm-2"></div>
            </div>
        </div>
    </body>
</html>
