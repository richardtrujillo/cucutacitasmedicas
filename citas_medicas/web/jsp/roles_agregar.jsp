<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="" %>
<%@ page import="citas_medicas.roles" %>

<jsp:useBean id="objetoControladorSesion" class="citas_medicas.controladorSesion" scope="session" />
<jsp:setProperty name="objetoControladorSesion" property="*" />

<jsp:useBean id="objetoControladorAdministrador" class="citas_medicas.controladorAdministrador" />
<jsp:setProperty name="objetoControladorAdministrador" property="*" />
<%  if(request.getParameter("rol")!=null || request.getParameter("descripcion")!=null )
	{
		objetoControladorAdministrador.insertarRol(request.getParameter("rol"),request.getParameter("descripcion"));
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
		if(objetoControladorSesion.estadoSesion())
		{
			%>
			<span class="badge badge-success"> Bienvenido usuario <% out.println(objetoControladorSesion.getLoginCuentaUsuario()); %> </span>
			<%
		}
		else
		{
			response.sendRedirect("../index.jsp");
		}
	%>
      <!-- hero-unit -->
        <%
            out.println(session.getAttribute("menudi"));
        %>
      <div class="hero-unit">
        
		<form class="form-signin" method="POST" action="roles_agregar.jsp">
		<h1>Nuevo Rol</h1>
                <label> Rol</label>
                <input name="rol" type="text"  class="form-control" />
                <label>Descripcion</label>
		<textarea name="descripcion" class="form-control" rows="3" placeholder="Ingrese su descripcion"></textarea>
                <br>
                <button class="btn btn-success" type="submit">Registrar</button>
		</form>
      </div>
  </body>
</html>
