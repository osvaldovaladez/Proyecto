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
        <div class="container">        
        <h2>Hola, ingresa los datos de tu reservacion</h2>
        <form action="agregarReservacion" method="POST">
            <p>
 Selecciona la hora deseada:
  <input type="time" name="hora" min="10:00" max="21:00" step="1800">
  <br><br>                   
                
 Fecha:
 <input type="date" name="fecha" min="2020-05-26" max="2021-05-25" step="1"></option>

  <br><br>               
  
  Numero de personas: <select name="personas">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
  </select>
  <br><br>   
  Su mesa: <select name="mesa">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
  </select>
  <br><br>
  
  Nombre registrado:
  <input type="text" name="nombre">
  <br><br>
  
  <button class="boton table-dark">
  Confirmar
  </button>
</form>
        </p>
        </div>
    </body>
</html>
