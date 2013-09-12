
<%@ page contentType="text/html; charset=ISO-8859-1" language="java"  errorPage="" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />

<jsp:useBean id="objetoquery" scope="session" class="citas_medicas.controladorQuery"/>
<jsp:setProperty name="objetoquery" property="*" />

<jsp:useBean id="objetocitasdisponibles" class="citas_medicas.citasdisponibles" scope="session" />
<jsp:setProperty name="objetocitasdisponibles" property="*" />


<jsp:useBean id="objetoagenda" class="citas_medicas.agenda"/>
<jsp:setProperty name="objetoagenda" property="*"/>

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
		if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("administrador"))
		{
			%>
			<p> Bienvenido usuario <% out.println(objetoControladorSesion.getLoginCuentaUsuario()); %> </p>
			<%
		}
		else if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("secretaria"))
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
     
    
      <div class="container2">
        
      </div>
      <div class="jumbotron">
        <img src="../img/inicio.png"/>
      </div>

    <div class="container3">

        
<%
    String pagi=request.getParameter("asignaragenda");
	
	if(pagi.equalsIgnoreCase("agenda"))
{
	
	 	   
	   String fechainicio=(String)request.getParameter("fechainicioagenda");
	   String fechafin=(String)request.getParameter("fechafinalagenda");
       char [] a= fechainicio.toCharArray();
	   char [] b= fechafin.toCharArray();
	   
	   String fini=String.valueOf(a[8])+String.valueOf(a[9]);
	    String ffin=String.valueOf(b[8])+String.valueOf(b[9]);
		
		
   
	  if((Integer.parseInt(ffin)-Integer.parseInt(fini))==7)
	  { 
	   objetoquery.insertarExperto("agenda",objetoagenda);
	    %> <script>alert("agenda agregada correctamente");</script> <%
	   
	   }
	   else
	   {
	 
	  
	     %> <script>alert("intervalo mayor a 7 dias");</script> <%
	   }
	   
	
	}
	if(pagi.equalsIgnoreCase("citasdisponibles"))
{
 Boolean insert=objetoquery.insertarExperto("citasdisponibles",objetocitasdisponibles);
 if(insert==true)
 {
%> <script>alert(<%=insert%>);</script> <%
 //response.sendRedirect("asignarhorarios.jsp");	
  
}}
	%>
  
    
    </div>
      
      <div class="footer">
        <p>&copy; Coomeva 2013</p>
      </div>

    </div> 
  </body>
</html>



