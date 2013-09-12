<jsp:useBean id="objetoagenda" class="citas_medicas.agenda" scope="session" />
<jsp:setProperty name="objetoagenda" property="*" />

<jsp:useBean id="objetocitasdisponibles" class="citas_medicas.citasdisponibles" scope="session" />
<jsp:setProperty name="objetocitasdisponibles" property="*" />

<jsp:useBean id="objetoControladorSesion" class="citas_medicas.controladorSesion" scope="session" />
<jsp:setProperty name="objetoControladorSesion" property="*" />

<!DOCTYPE html>
<html lang="en">
<head>
  
 

 
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
<script type="text/javascript">
function cargar()
{
	form1.submit();
	}




</script> 

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
			response.sendRedirect("menuprincipal_secretaria.jsp");
		}
		else if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("cotizante"))
		{
			response.sendRedirect("menuprincipal_cotizante.jsp");
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
      <%@include file="../html/menu_administrador.html" %>
      
     
      <div class="hero-unit">
        <form class="form-signin" name="form2" action="controladorsadmin.jsp?asignaragenda=citasdisponibles" method="POST" >
          	<h1>Asignacion De Horarios</h1>
          	Documento Medico
			<input type="text" disabled class="input-block-level2" value="<%=objetocitasdisponibles.getCedulamedico()%>"  name="cedulamedico">
			Fecha cita
       		<input type="text" name="fechacitadisponible"value="<%=objetocitasdisponibles.getFechacitadisponible()%>" class="input-block-level"  disabled>
            <%
				 int tur=objetoagenda.consultarturno_medico(objetocitasdisponibles.getCedulamedico());
				 if(tur==1)
				 {
	 
			 %>
    	 	<select  class="input-block-level2"  name="hora">
				<option value="06:00"  </option>06:00
                <option value="07:00"  </option>07:00
                <option value="08:30"  </option>08:30
                <option value="09:30"  </option>09:30
                <option value="11:30"  </option>11:30
				
	  	 	</select>
            <%
				 }
				 else
	 				{
		 
			 %>
     	<select class="input-block-level2"    name="hora">
				<option value="13:00"  </option>13:00
                <option value="14:00"  </option>14:00
                <option value="15:30"  </option>15:30
                <option value="16:30"  </option>16:30
                <option value="17:30"  </option>17:30
				
	  	 </select>
            <%}%>
     
          	<input type="hidden" name="estado"  value="activa" class="input-block-level"  >
                    
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
