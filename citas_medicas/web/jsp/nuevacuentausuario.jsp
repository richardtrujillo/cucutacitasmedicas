<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="" %>
<%@ page import="citas_medicas.roles" %>

<jsp:useBean id="objetoControladorSesion" class="citas_medicas.controladorSesion" scope="session" />
<jsp:setProperty name="objetoControladorSesion" property="*" />

<jsp:useBean id="objetoControladorAdministrador" class="citas_medicas.controladorAdministrador" />
<jsp:setProperty name="objetoControladorAdministrador" property="*" />


	<script>
	window.opener.location.reload();
	window.close();
	</script>
<%	
	}
%>

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
      <!-- hero-unit -->
      <div class="hero-unit">
        
		<form class="form-signin" method="POST" action="nuevo_rol.jsp">
		<h1>Nueva cuenta usuario</h1>
		login<input name="rol" type="text" class="input-block-level2" />
        clave
		<input type="password" name="clave" class="field span12" placeholder="Ingrese su clave" />
			Tipo<input type="text" name="tipo" class="field span12" placeholder="" />
		<button class="btn btn-success" type="submit">Registrar</button>
		</form>
      </div>
  </body>
</html>
