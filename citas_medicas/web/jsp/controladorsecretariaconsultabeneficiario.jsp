<%@page import="citas_medicas.cotizante"%>
<%@ page contentType="text/html; charset=ISO-8859-1" language="java"  errorPage="" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<jsp:useBean id="objetocontroladorCotizante" class="citas_medicas.controladorCotizante"/>
<jsp:setProperty name="objetocontroladorCotizante" property="*"/>

<jsp:useBean id="objetocotizante" class="citas_medicas.cotizante"/>
<jsp:setProperty name="objetocotizante" property="*"/>

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

      <%@include file="../html/menusecretaria.html" %>
      </div>
	  
    
      <div class="container2">
      <form class="form-signin" method="POST" action="controladorsecretaria.jsp">
       <h2 class="form-signin-heading">Consultar</h2>
        <input name="cedulacotizante" type="text" class="input-block-level" placeholder="Digite su numero documento" required>
        <button class="btn btn-large btn-primary" type="submit">Ingresar</button>
      </form>
      </div>

<div class="container3">

<%
    session.removeAttribute("resul");
	String cedulacotizant=request.getParameter("cedulacotizante");
	
	cotizante cot=(cotizante) objetocontroladorCotizante.consultarcotizante(cedulacotizant);
	if(cot!=null)
	{
		session.setAttribute("resul",cot);
		%> <jsp:include page="respuestaconsultacotizante.jsp"/> <%
	}
	else
	{
		
	}
%>
</div>

      </div>

      <hr>

      <div class="footer">
        <p>&copy; Coomeva 2013</p>
      </div>

    </div> <!-- /container -->

  </body>
</html>



