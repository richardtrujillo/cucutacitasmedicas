<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="" %>
<jsp:useBean id="objetoControladorSesion" class="citas_medicas.controladorSesion" scope="session" />
<jsp:setProperty name="objetoControladorSesion" property="*" />

<!DOCTYPE html>
<html lang="en">
  <head>

    <Script src="../AJAX/ajax_turno.js"></Script>
    <meta charset="utf-8">
    <title>Inicio Beneficiario</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="../css/bootstrap.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../css/estilos.css">
    <link href="../css/bootstrap-responsive.css" rel="stylesheet">

  </head>

  <body>

    <div class="container">

	<% String resul=(objetoControladorSesion.listaMenu()); 
        out.println(resul);
        session.setAttribute( "menudi", resul );
        %>
        
  <!-- Jumbotron -->
      <div class="jumbotron">
        <img src="../img/inicio.png"/>
      </div>
      <hr>

      <div class="footer">
        <p>&copy; Company 2013</p>
      </div>

    </div> <!-- /container -->

  </body>
</html>
