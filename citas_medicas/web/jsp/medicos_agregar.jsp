<jsp:useBean id="objetoControladorSesion" class="citas_medicas.controladorSesion" scope="session" />
<jsp:setProperty name="objetoControladorSesion" property="*" />
<%@ page contentType="text/html; charset=ISO-8859-1" language="java"  errorPage="" %>
<meta http-equiv="Content-Type"  content="text/html; charset=ISO-8859-1" />



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
       
      <div class="container3">

<form name="form2" class="form-signin" method="POST" action="controladorsecretaria.jsp?paginap=medico">
       <h2 class="form-signin-heading"></h2>
       <h1> Nuevo Medico </h1>
  
  <div class="form-group">
      <label for="cedula"> Documento De Identidad</label>
      <input name="cedulamedico" type="number"  class="form-control"   required/>
  </div>

  <div>
      <label> Primer Nombre</label>
      <input name="primernombremedico" type="text" class="form-control" required />
  </div> 

  <div>
      <label>Primer Apellido</label>
      <input name="primerapellidomedico" type="text"  class="form-control" required/>
 </div>

 <div>
      <label>Segundo Nombre</label>
      <input name="segundonombremedico" type="text" class="form-control"/>
 </div>
	 
 <div>
      <label>Segundo Apellido</label>
      <input name="segundoapellidomedico" type="text" class="form-control" />
 </div>   
   

 <div>
      <label>Fecha De Nacimiento</label>
       <input name="fechadenacimientomedico" type="date" required class="form-control" />    
</div>      
<div>
      <label>sexo</label>
      <select id="sexomedico"class="form-control"  name="sexomedico" required>
        <option value="null" >Seleccione su sexo</option> 
        <option value="m" >Masculino</option> 
        <option value="f" >Femenino</option> 
      </select>
</div>   
<div>
      <label>Direccion De Residencia</label>
      <input name="direccionmedico" type="text" required class="form-control" />
</div>     
        
<div>
      <label>Departamento</label>
      <select id="departamento" class="form-control" name="departamentomedico">
         <option value="1" selected >- - - </option>
         <jsp:include page="selectdepartamento.jsp"/>
      </select>
</div>

<div>
      <label>Ciudad</label>
      <select id="ciudad" class="form-control" name="ciudadmedico">
          <option value="1" selected >- - - </option>
          <jsp:include page="selectciudad.jsp"/>
      </select>
</div>              
	 
<div>
      <label>Telefono</label>
      <input name="telefonomedico" type="number" required class="form-control" />
</div>    
       
	    
<div>
    <label>Email</label>
    <input name="emailmedico" type="email" required class="form-control" />
</div>

<div>
    <label>Tipo</label>
    <select id="tipomedico" class="form-control" name="tipomedico">
      <option value="0" selected >- - - </option>
      <jsp:include page="selecttipomedico.jsp"/>
    </select>
    <input type="hidden" name="estadomedico" value="activo">
</div>
		
		
<button  class="btn btn-large btn-primary" type="submit">Ingresar </button>
		</form>
        

      <div class="footer">
        <p>&copy; Coomeva 2013</p>
      </div>

    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    

  </body>
</html>



