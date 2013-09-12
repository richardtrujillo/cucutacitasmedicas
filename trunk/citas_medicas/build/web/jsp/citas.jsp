<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="citas_medicas.citamedica" %>

<jsp:useBean id="objetoControladorSesion" class="citas_medicas.controladorSesion" scope="session" />
<jsp:setProperty name="objetoControladorSesion" property="*" />

<jsp:useBean id="objetoControladorCotizante" class="citas_medicas.controladorCotizante" />
<jsp:setProperty name="objetoControladorCotizante" property="*" />

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Citas Cotizante</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="../css/bootstrap.css" rel="stylesheet">
	  <link rel="stylesheet" type="text/css" href="../css/estilos.css">
    </style>
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
      response.sendRedirect("menuprincipal_administrador.jsp");
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

	<%@include file="/html/menu_cotizante.html"%>
	
      <!-- hero-unit -->
      <div class="hero-unit">
        <p>
			<a class="btn btn-success" href="nueva_cita.jsp" target="_blank" 
			onClick="window.open(this.href, this.target, 'width=800,height=600'); return false;">Crear</a>
		</p>
		<%
      session.setAttribute("tabla","citamedica");
      session.setAttribute("campos","*");
      session.setAttribute("condiciones"," where documentousuario='"+objetoControladorSesion.getNumeroDocumento()+"'");
    %>
    <jsp:include page="tabla_consulta.jsp" />
 
      </div>

      <div class="footer">
        <p>&copy; Company 2013</p>
      </div>

    </div> <!-- /container -->

  </body>
</html>
