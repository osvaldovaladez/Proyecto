<%-- 
    Document   : Reserva
    Created on : 25-may-2020, 16:03:51
    Author     : Ferlily
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Haz tu reservacion</title>
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
        <br>
        <br>
        <br>
        <div class="container">        
            <h3>Hola, ingresa los datos de tu reservacion</h3>
            <br>
            <br>
            <form action="some.jsp" method="POST">
                <table border="0">
                    <tr>
                        <td>
                            <p>Selecciona la hora deseada:</p>
                        </td>
                        <td>
                            <input type="time" name="hora" min="10:00" max="21:00" step="1800">
                            <br><br>                   
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p> Fecha:</p>
                        </td>
                        <td>
                            <input type="date" name="fecha" min="2020-05-26" max="2021-05-25" step="1">
                            <br><br>               
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p> Numero de personas:</p> 
                        </td>
                        <td>
                            <select name="personas">    
                                <option value="1">1 Persona</option>
                                <option value="2">2 Personas</option>
                                <option value="3">3 Personas</option>
                                <option value="4">4 Personas</option>
                                <option value="5">5 Personas</option>
                                <option value="6">6 Personas</option>
                                <option value="7">7 Personas</option>
                                <option value="8">8 Personas</option>
                                <option value="9">9 Personas</option>
                            </select>
                        </td>
                    <tr>
                        <td>  
                            <p> Su mesa: </p>
                        </td>
                        <td>
                            <select name="mesa">
                                <option value="1">Mesa NO.1</option>
                                <option value="2">Mesa NO.2</option>
                                <option value="3">Mesa NO.3</option>
                                <option value="4">Mesa NO.4</option>
                                <option value="5">Mesa NO.5</option>
                                <option value="6">Mesa NO.6</option>
                                <option value="7">Mesa NO.7</option>
                                <option value="8">Mesa NO.8</option>
                                <option value="9">Mesa NO.9</option>
                            </select>
                        </td>
                    </tr>
                </table>
                <br><br>     
                <button class="boton table-dark">
                    Confirmar
                </button>
            </form>
        </div>
    </body>
</html>
