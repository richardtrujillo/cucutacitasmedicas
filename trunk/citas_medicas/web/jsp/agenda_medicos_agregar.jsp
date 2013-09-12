
<jsp:useBean id="objetoControladorSesion" class="citas_medicas.controladorSesion" scope="session" />
<jsp:setProperty name="objetoControladorSesion" property="*" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>Administrador &middot;</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="../css/bootstrap-responsive.css" rel="stylesheet">
	  <link href="../css/bootstrap.css" rel="stylesheet">
	  <link href="../css/estilos.css" rel="stylesheet">
    <link href="../css/bootstrap-responsive.css" rel="stylesheet">

  </head>

  <body>
      

    <div class="container">
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
			response.sendRedirect("menuprincipal.jsp.jsp");
		}
		else if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("cotizante"))
		{
			response.sendRedirect("menuprincipal.jsp.jsp");
		}
		else if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("beneficiario"))
		{
			response.sendRedirect("menuprincipal.jsp.jsp");
		}
		else
		{
			response.sendRedirect("../index.jsp");
		}
	%>
      <%
     out.println(session.getAttribute("menudi"));
     %>

      <div class="hero-unit">
        <form class="form-signin" method="POST" action="controladorsadmin.jsp?asignaragenda=agenda">
          <h1>Nueva Agenda</h1>
          <label>Documento Medico</label>
		      <select id="cedulamedico" class="form-control" name="cedulamedico">
		        <option value="1" selected >- - - </option>
		        <jsp:include page="selectmedico.jsp"/>
	       </select>

          <label>Inicio Agenda</label>
          <input type="date" name="fechainicioagenda" class="form-control" >
          <label>Fin Agenda</label>
          <input type="date" name="fechafinalagenda" class="form-control"   >
          <label>Turno</label>
          <select  class="form-control" name="idturno">
		        <option value="1"  >mañana</option>
            <option value="2"  >tarde </option>
          </select>
          <button class="btn btn-large btn-primary" type="submit">Ingresar</button>
        </form>
   
   
   
    </div>
      <div class="footer">
        <p>&copy; Coomeva 2013</p>
      </div>

    </div>
  </body>
</html>
