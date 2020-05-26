<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
    <!--hola--->
    <body>
        <nav class="navbar navbar-dark navbar-expand-lg fixed-top navbar-light">
            <div class="container">

                <!-- Navbar: Brand -->
                <a class="navbar-brand d-lg-none" href="#">Buscar Platillo</a>

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
                        Buscar Platillo
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
        <div class="container">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-6">
                        <form action="buscarplatillo" method="post">
                            <div class="form-group">
                                <label class="table-dark">Clave: </label>
                                <input type="text" name="idplatillo"/>
                            </div>
                            <div class="form-group">
                                <br>
                                <label class="table-dark">Nombre: </label>
                                <input type="text" name="nombre"/>
                            </div>
                            <br>
                            <input type="reset" class="btn btn-light" value="Borrar">
                            <input type="submit" class="btn btn-light" value="Buscar Platillo">
                        </form>
                        <br>    
                        <form action="gestionPlatillos.jsp" method="post">
                            <input type="submit" class="btn btn-light" value="Regresar">
                        </form>
                </div>
                <div class="col-sm-2"></div>
            </div>
        </div>
    </body>
</html>
