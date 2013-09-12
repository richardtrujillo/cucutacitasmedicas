<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="" %>
<jsp:useBean id="objetoControladorSesion" class="citas_medicas.controladorSesion" scope="session" />
<jsp:setProperty name="objetoControladorSesion" property="*" />

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Inicio Administrador</title>
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
	
	<% 
		if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("administrador"))
		{
			%>
			<span class="badge badge-success"> Bienvenido usuario <% out.println(objetoControladorSesion.getLoginCuentaUsuario()); %> </span>
			<%
		}
		else if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("secretaria"))
		{
			response.sendRedirect("menuprincipal_secretaria.jsp");
		}
		else if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("cotizante"))
		{
			response.sendRedirect("menuprincipal_cotizante.jsp");
		}
		else if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("beneficiario"))
		{
			response.sendRedirect("menuprincipal_beneficiario.jsp");
		}
		else
		{
			response.sendRedirect("../index.jsp");
		}
	%>
	<%@include file="/html/menu_administrador.html"%>	
      <!-- Jumbotron -->
      <div class="jumbotron">
        <img src="../img/inicio.png"/>
      </div>

      <div class="footer">
        <p>&copy; Company 2013</p>
      </div>

    </div> <!-- /container -->

  </body>
</html>
