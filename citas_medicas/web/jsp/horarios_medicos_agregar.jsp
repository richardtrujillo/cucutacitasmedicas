<jsp:useBean id="objetoagenda" class="citas_medicas.agenda" scope="session" />
<jsp:setProperty name="objetoagenda" property="*" />

<jsp:useBean id="objetoControladorSesion" class="citas_medicas.controladorSesion" scope="session" />
<jsp:setProperty name="objetoControladorSesion" property="*" />



<jsp:useBean id="objetocitasdisponibles" class="citas_medicas.citasdisponibles" scope="session" />
<jsp:setProperty name="objetocitasdisponibles" property="*" />

<!DOCTYPE html>
<html lang="en">
<head>
         <Script src="../AJAX/ajax_turno.js"></Script>
        
 
 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>ADMINISTRADOR</title>
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
		if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("administrador"))
		{
			%>
			<span class="badge badge-success"> Bienvenido usuario <% out.println(objetoControladorSesion.getLoginCuentaUsuario()); %> </span>
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
        <form class="form-signin" name="form2" action="controladorsadmin.jsp?asignaragenda=citasdisponibles" method="POST" >
          	<h1>Asignacion De Horarios</h1>
          	<label>Documento Medico</label>
			     <select id="cedulamedico" class="form-control"  onchange="getDetalleturno('turno',this.value)" name="cedulamedico" >
				      <option value="0"  </option>seleccione medico
              <jsp:include page="selectmedico.jsp"/>
	    	   </select>

          	<label>Fecha cita</label>
          	<input type="date" name="fechacitadisponible"  class="form-control"  >
          	<input type="hidden" name="estado"  value="activa" class="input-block-level"  >
                    
       	  	<br>
            <td>Horas disponbles: </td>
           <div id="horamedico">
                <select name="hora" class="form-control">
                </select>
           </div>
           <br>
<button  class="btn btn-large btn-primary" type="submit">Registrar </button>
        </form>
   
        
    
      
           
    	</div>
	
      <div class="footer">
        <p>&copy; Coomeva 2013</p>
      </div>

    </div>
  </body>
</html>
