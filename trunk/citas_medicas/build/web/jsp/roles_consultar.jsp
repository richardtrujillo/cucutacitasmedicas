<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="citas_medicas.roles" %>

<jsp:useBean id="objetoControladorSesion" class="citas_medicas.controladorSesion" scope="session" />
<jsp:setProperty name="objetoControladorSesion" property="*" />

<jsp:useBean id="objetoControladorAdministrador" class="citas_medicas.controladorAdministrador" />
<jsp:setProperty name="objetoControladorAdministrador" property="*" />

<jsp:useBean id="objetoRoles" class="citas_medicas.roles" />
<jsp:setProperty name="objetoRoles" property="*" />

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
	<%
     out.println(session.getAttribute("menudi"));
     %>
	
      <!-- hero-unit -->
      <div class="hero-unit">
        <p>
			<a class="btn btn-success" href="nuevo_rol.jsp" target="_blank" 
			onClick="window.open(this.href, this.target, 'width=600,height=400'); return false;">Crear</a>
		</p>
    
<% 
session.setAttribute("campos","*");
session.setAttribute("tabla","roles ");
session.setAttribute("condiciones"," ");
%>
    <jsp:include page="tabla_consulta.jsp" />
 
      </div>

      <div class="footer">
        <p>&copy; Company 2013</p>
      </div>

    </div> <!-- /container -->

  </body>
</html>
