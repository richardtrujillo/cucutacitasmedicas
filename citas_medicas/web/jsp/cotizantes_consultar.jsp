<jsp:useBean id="objetoControladorSesion" class="citas_medicas.controladorSesion" scope="session" />
<jsp:setProperty name="objetoControladorSesion" property="*" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>SECRETARIA &middot;</title>
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
<% 
		if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("secretaria"))
		{
			%>
			<span class="badge badge-success"> Bienvenido usuario <% out.println(objetoControladorSesion.getLoginCuentaUsuario()); %> </span>
			<%
		}
		else if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("administrador"))
		{
			response.sendRedirect("menuprincipal.jsp");
		}
		else if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("cotizante"))
		{
			response.sendRedirect("menuprincipal.jsp");
		}
		else if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("beneficiario"))
		{
			response.sendRedirect("menuprincipal.jsp");
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
        <form class="form-signin" method="POST" action="cotizantes_consultar.jsp">
          <h1>Consultar Cotizante</h1>
          <input name="cedulacotizante" type="text" class="input-block-level" placeholder="Digite su numero documento" required>
          <br>
          <button class="btn btn-large btn-primary" type="submit">Ingresar</button>
        </form>
   
   <%
       String cedulacotizante=request.getParameter("cedulacotizante");
       if(cedulacotizante!=null)
       {
     String cod="";
          if(cedulacotizante.equalsIgnoreCase("*"))
            {
               cod=" ";
              }
          else{
               cod=" where cedulacotizante='"+cedulacotizante+"'";
          }
          session.setAttribute("tabla","cotizante");
          session.setAttribute("condiciones",cod);
          session.setAttribute("campos","cedulacotizante as cedula,(primernombrecotizante || ' ' || segundonombrecotizante || ' ' || primerapellidocotizante || ' ' || segundoapellidocotizante) as Nombre, direccioncotizante as direccion, (ciudadcotizante || ',' || departamentocotizante)as ciudad,telefonocotizante as telefono, estado");
%>  
      <jsp:include page="tabla_consulta.jsp" />
<%
        }
%>       
   
    </div>
      <div class="footer">
        <p>&copy; Coomeva 2013</p>
      </div>

    </div>
  </body>
</html>
