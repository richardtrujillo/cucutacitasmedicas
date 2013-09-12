
<%@ page contentType="text/html; charset=ISO-8859-1" language="java"  errorPage="" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />

<jsp:useBean id="objetoquery" scope="session" class="citas_medicas.controladorQuery"/>
<jsp:setProperty name="objetoquery" property="*" />

<jsp:useBean id="objetocontroladorCotizante" scope="session" class="citas_medicas.controladorCotizante"/>
<jsp:setProperty name="objetocontroladorCotizante" property="*"/>

<jsp:useBean id="objetocotizante" scope="session" class="citas_medicas.cotizante"/>
<jsp:setProperty name="objetocotizante" property="*"/>

<jsp:useBean id="objetobeneficiario" scope="session" class="citas_medicas.beneficiario"/>
<jsp:setProperty name="objetobeneficiario" property="*"/>

<jsp:useBean id="objetomedico" scope="session" class="citas_medicas.medico"/>
<jsp:setProperty name="objetomedico" property="*"/>

<jsp:useBean id="objetocitamedica" scope="session" class="citas_medicas.citamedica"/>
<jsp:setProperty name="objetocitamedica" property="*"/>




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

	<jsp:useBean id="objetoControladorSesion" class="citas_medicas.controladorSesion" scope="session" />
	<jsp:setProperty name="objetoControladorSesion" property="*" />
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
     <div class="jumbotron">
        <img src="../img/inicio.png"/>
      </div>
    <div class="hero-unit">
      
      <%
    String pagi=request.getParameter("paginap");
	
	if(pagi.equalsIgnoreCase("cotizante"))
{
	
	 	   
	  Boolean resul=objetoquery.validacion_cotizante(objetocotizante);
	  if(resul==true)
	  {
	  Boolean insertado=objetoquery.insertarExperto("cotizante",objetocotizante);
	  if(insertado==true)
          {
	    %> <script>alert("cotizante no se agrego correctamente, cedula ya registrada");</script> <%
          }
	  }
	else
	{
	%> <script>alert("cotizante no posee la mayoria de edad");</script> <%
}
}
	if(pagi.equalsIgnoreCase("beneficiario"))
	{
		Boolean insertado=objetoquery.insertarExperto("beneficiario",objetobeneficiario);
		%> <script>alert("Beneficiario agregado correctamente");</script> <%
		}
		
		if(pagi.equalsIgnoreCase("medico"))
	{
		Boolean insertado=objetoquery.insertarExperto("medico",objetomedico);
		%> <script>alert("medico agregado correctamente");</script> <%
		}
		/*
		if(pagi.equalsIgnoreCase("citamedica"))
	{
		String val="";
		String tipousuario=request.getParameter("tipousuario");
		String condiciones="";
		if(tipousuario.equalsIgnoreCase("cotizante"))
		{
			val="cedulacotizante";
			 condiciones=" where cedulacotizante='"+objetocitamedica.getDocumentousuario()+"' and estado='activo'" ;
		}
		else{
			     val="documentobeneficiario";
				  condiciones=" where documentobeneficiario='"+objetocitamedica.getDocumentousuario()+"' and estadobeneficiario='activo'" ;
		 }
	  
	
	    
		 String sql=" SELECT * FROM citasdisponibles INNER JOIN medico ON (citasdisponibles.cedulamedico = medico.cedulamedico) AND (medico.tipomedico='"+request.getParameter("tipomedico")+"')"+" and (citasdisponibles.estado='activa') and (medico.estadomedico='activo')"+" and  (citasdisponibles.fechacitadisponible='"+objetocitamedica.getFechacitamedica()+"')";
      objetoquery.consultarExperto_join(sql);
	          
     	   
         }
         */
         
   
%>
      
      
      <div class="footer">
        <p>&copy; Coomeva 2013</p>
      </div>

    </div> 
  </body>
</html>



