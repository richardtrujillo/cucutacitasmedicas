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
     <%
     out.println(session.getAttribute("menudi"));
     %>
      <div class="hero-unit">
        <form class="form-signin" method="POST" action="beneficiarios_consultar.jsp">
          <h1>Consultar Beneficiario</h1>
          <input name="documentobeneficiario" type="text" class="input-block-level" placeholder="Digite su numero documento" required>
          <input type="hidden" name="paginap" value="beneficiario" >
          <button class="btn btn-large btn-primary" type="submit">Ingresar</button>
        </form>
          
<%
       String documentobeneficiario=request.getParameter("documentobeneficiario");
       if(documentobeneficiario!=null)
       {
          String cod="";
          if(documentobeneficiario.equalsIgnoreCase("*"))
          {
              cod=" ";
             }
             else{
                 cod=" where documentobeneficiario='"+documentobeneficiario+"'";
              }
          session.setAttribute("tabla","beneficiario");
          session.setAttribute("condiciones",cod);
          session.setAttribute("campos","documentobeneficiario as cedula,(primernombrebeneficiario || ' ' || segundonombrebeneficiario || ' ' || primerapellidobeneficiario || ' ' || segundoapellidobeneficiario) as Nombre, direccionbeneficiario as direccion, (ciudadbeneficiario || ',' || departamentobeneficiario)as ciudad,telefonobeneficiario as telefono, estadobeneficiario as estado");
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
