<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="" %>
<%@ page import="citas_medicas.citamedica" %>

<jsp:useBean id="objetoControladorSesion" class="citas_medicas.controladorSesion" scope="session" />
<jsp:setProperty name="objetoControladorSesion" property="*" />

<jsp:useBean id="objetoControladorQuery" class="citas_medicas.controladorQuery" />
<jsp:setProperty name="objetoControladorQuery" property="*" />

<%  if(request.getParameter("fecha")!=null && request.getParameter("hora")!=null && request.getParameter("medico")!=null)
	{
		citamedica cm=new citamedica((String)objetoControladorSesion.getNumeroDocumento(),(String)request.getParameter("medico"),(String)request.getParameter("fecha"),(String)request.getParameter("hora"),"activo");
		objetoControladorQuery.insertarExperto("citamedica",cm);
%>
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
		if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("cotizante"))
		{
			%>
			<span class="badge badge-success"> Bienvenido usuario <% out.println(objetoControladorSesion.getLoginCuentaUsuario()); %> </span>
			<%
		}
		else if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("secretaria"))
		{
			response.sendRedirect("menuprincipal_secretaria.jsp");
		}
		else if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("administrador"))
		{
			response.sendRedirect("menuprincipal_admin.jsp");
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
        
		<form class="form-signin" method="POST" name="form1" action="nueva_cita.jsp">
		    	<h1>Nueva Cita</h1>
        		<p>Tipo</p>
        		<select name="tipo_cita" class="tipo_cita">
        			<jsp:include page="selecttipomedico.jsp"/>
        		</select>
        		<p>Doctor</p>
        		<select name="medico" class="doctor">
        			<jsp:include page="selectmedico.jsp"/>
        		</select>
        		<p>Fecha Cita </p>
        		<input type="date" name="fecha">
        		<p>Hora Cita </p>
        		<input type="time" name="hora">
        		<br>
		    	<button class="btn btn-success" type="submit">Registrar</button>
		</form>
      </div>
  </body>
</html>