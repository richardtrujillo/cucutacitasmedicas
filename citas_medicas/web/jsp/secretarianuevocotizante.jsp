<jsp:useBean id="objetoControladorSesion" class="citas_medicas.controladorSesion" scope="session" />
<jsp:setProperty name="objetoControladorSesion" property="*" />


<%@ page contentType="text/html; charset=ISO-8859-1" language="java"  errorPage="" %>
<meta http-equiv="Content-Type"  content="text/html; charset=ISO-8859-1" />
<jsp:useBean id="insertacotizante" scope="session" class="citas_medicas.controladorCotizante"/>
<jsp:setProperty name="insertacotizante" property="*"/>


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

      <%@include file="../html/menu_secretaria.html" %>
	     
      <div class="container3">
      <% 
		if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("secretaria"))
		{
			%>
			<span class="badge badge-success"> Bienvenido usuario <% out.println(objetoControladorSesion.getLoginCuentaUsuario()); %> </span>
			<%
		}
		else if(objetoControladorSesion.estadoSesion() && objetoControladorSesion.getTipoCuentaUsuario().equals("administrador"))
		{
			response.sendRedirect("menuprincipal_admin.jsp");
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

<form role="form" name="form2" class="form-signin" method="POST" action="controladorsecretaria.jsp?paginap=cotizante">
  <div class="form-group">
  		<h1>Nuevo Cotizante</h1>
   		<label for="cedula">Cedula De Ciudadania</label>
   		<input name="cedulacotizante" type="number" class="form-control"  placeholder="digita tu cedula" required>
  </div>

  <div class="form-group">
    	<label for="primernombre">Primer Nombre </label>
    	<input name="primernombrecotizante" type="text" class="form-control"  required /> 
  </div>
  
  <div class="form-group">
  		<label for="primerapellidocotizante"> Primer Apellido</label>
  		<input name="primerapellidocotizante" type="text" class="form-control" required/>
  </div>

  <div class="form-group">
		<label for="segundonombre"> Segundo Nombre</label>
        <input name="segundonombrecotizante" type="text" class="form-control"/>
  </div>	

  <div class="form-group">
  		<label for="segundoapellido">Segundo Apellido</label>
  		<input name="segundoapellidocotizante" type="text" class="form-control" />

  </div>
     
  <div>
  		<label for="fechaexpediciondocumento">Fecha Expedicion Documento De Identidad</label>
  		<input name="fechaexpedicioncedulacotizante" required type="date" class="form-control"/>
  </div>

  <div>
  		<label for="fechadenacimiento">Fecha De Nacimiento </label>
  		<input name="fechadenacimientocotizante" type="date" required  class="form-control"/>
 </div>

 <div>
      <label>Direccion De Residencia</label>
      <input name="direccioncotizante" type="text" required class="form-control"/>
 </div>	
<div>
      <label>Telefono</label>
      <input name="telefonocotizante" type="number" required class="form-control" />
      <input type="hidden" name="estado" value="activo">
</div>
<div>
      <label>Departamento</label>
      <select id="departamento"  class="form-control" name="departamentocotizante">
          <option value="1" selected >- - - </option>
          <jsp:include page="selectdepartamento.jsp"/>
      </select>
</div>
<div>
    <label>Ciudad</label>
    <select id="ciudad" class="form-control" name="ciudadcotizante">
        <option value="1" selected >- - - </option>
        <jsp:include page="selectciudad.jsp"/>
    </select>
</div>




<div>
      <label>Sexo</label>
      <select id="sexocotizante"class="form-control"  name="sexocotizante">
        <option value="m" >Masculino</option> 
        <option value="f" >Femenino</option> 
      </select>

</div>

<div>

     <label>Login</label>
     <input type="text" name="loginusuario" required class="form-control" >

</div>
<div>
       <label>Clave</label>
       <input type="password" name="clave" required class="form-control" >
       <input type="hidden" name="tipo" value="cotizante">
</div>
<br>
<button  class="btn btn-large btn-primary" type="submit">Ingresar </button>
</form>


     
      <div class="footer">
        <p>&copy; Coomeva 2013</p>
      </div>

    </div> <!-- /container -->

  </body>
</html>



