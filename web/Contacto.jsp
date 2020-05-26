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
    </head>
    <body>
         <nav class="navbar navbar-light navbar-expand-lg fixed-top navbar-light">
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
                            <a class="nav-link active" href="#">Acerca de nosotros</a>
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
                            <a class="nav-link" href="#">Contact</a>
                        </li>
                    </ul>

                </div> <!-- / .navbar-collapse -->

            </div> <!-- / .container -->
        </nav>
        <br>
        <br>
        <br>
        <section class="section section_discover">
            <div class=" centrado container">
                <div class="row">
                    <div class="col-md-2 align-self-start">

                        <!-- Description -->
                        <p class="section_discover__description">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                        </p>

                    </div>
                    <div class="col-md-4 align-self-start">

                        <!-- Image -->
                        <div class="section_discover__img">
                            <img src="img/2.jpg" class="img-fluid" alt="...">
                        </div>

                    </div>
                    <div class="col-md-6 align-self-center">

                        <!-- Content -->
                        <h2><em>Lorem ipsum</em> dolor sit amet</h2>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias veritatis nisi, consequatur, laborum libero a neque ducimus. Porro rem illum quo nostrum quisquam asperiores, blanditiis, consectetur. Possimus facilis velit, voluptatibus!
                        </p>
                    </div>
                </div> <!-- / .row -->
            </div> <!-- / .container -->
        </section>
    </body>
</html>