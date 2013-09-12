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
     <Script src="../AJAX/ajax_turno.js"></Script>
        
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
			%>
			<span class="badge badge-success"> Bienvenido usuario <% out.println(objetoControladorSesion.getLoginCuentaUsuario()); %> </span>
			<%
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
        <form class="form-signin" name="form3" method="POST" action="controladorsecretaria.jsp?paginap=citamedica">
          	<h1>Nueva cita</h1>
         	 <select  class="form-control"  required name="tipousuario" >
			<option value="0"  </option>seleccione Tipo Usuario
			<option value="cotizante"  </option>Cotizante
                        <option value="beneficiario"  </option>Beneficiario
	    	 </select>
          	<label>Documento usuario</label>
         	 <input name="documentousuario"  type="number" class="form-control" placeholder="Digite su numero documento" required>
                 <label>Fecha cita</label>
                 <input type="date" name="fechacitamedica" onchange="getDetalleturnocita('fechacitamedica',this.value)"class="form-control" onClick="" >
         	 <label>Tipo de Cita</label>
                 
          	<select  class="form-control"  onchange="getDetalleturno('medico',this.value)"  name="tipomedico" >
			<option value="0"  </option>seleccione Tipo
			<jsp:include page="selecttipomedico.jsp"/>
	    	</select>
                
                <label>doctores disponbles:</label>
                <div id="horamedico">
                     <select class="form-control" name="nombredoctor" onchange="gethoramedico(this.value)" >
                        <option value="0"  </option>seleccione Tipo
                    </select>
               </div>
          
          <label>horas disponbles: </label>
          
           <div id="horamedicoseleccion">
                <select name="horam"  class="form-control">
                    <option value="0"  </option>seleccione hora
                </select>
           </div>
          <br>
          <button  class="btn btn-large btn-primary" type="submit">Ingresar </button>
       </form>
   
   
   
    </div>
      <div class="footer">
        <p>&copy; Coomeva 2013</p>
      </div>

    </div>
  </body>
</html>
