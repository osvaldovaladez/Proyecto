
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
    <body>
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
                            <a class="nav-link" href="login.jsp">Login</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="Contacto.jsp">Contact</a>
                        </li>
                    </ul>

                </div> <!-- / .navbar-collapse -->

            </div> <!-- / .container -->
        </nav>
        <div class="centrado">
            <h2>Touche</h2>
            <p>Lorem ipsum dolor sit amet, 
                consectetur adipisicing elit. 
                Non illo, alias animi iusto neque, 
                sint corrupti? Laudantium, 
                dignissimos id excepturi facilis, 
                facere saepe quasi placeat praesentium 
                ipsa sapiente illo molestiae? 
            </p>
            <br>
            <a class="boton table-dark" href="Registro_Usuario.jsp"> REGISTRARSE </a>           
        </div>	
<div class="resp-iframe">        
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14888.335088438853!2d
                    -101.6274982!3d21.1092261!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xff3c8cc2b5af
                    98fc!2sInstituto%20Tecnol%C3%B3gico%20de%20Le%C3%B3n!5e0!3m2!1ses!2smx!4v1590516
                    759080!5m2!1ses!2smx" width="600" height="450" frameborder="0" style="border:0;" 
                    allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>	 
</div>         
    </body>
</html>
