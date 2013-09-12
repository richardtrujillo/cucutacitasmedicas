<jsp:useBean id="objetoControladorSesion" class="citas_medicas.controladorSesion" scope="session" />
<jsp:setProperty name="objetoControladorSesion" property="*" />
<%@page import="citas_medicas.cotizante"%>
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

<form name="form2" class="form-signin" method="POST" action="controladorsecretaria.jsp?paginap=beneficiario">
       <h2 class="form-signin-heading"></h2>
       <h1> Nuevo Beneficiario </h1>
       <div>
             <label>Documento Cotizante</label>
             <input name="cedulacotizante" type="number" class="form-control"  required/>
       </div>
       <div>
            <label>Tipo Documento</label>
            <select id="tipodocumentobeneficiario" class="form-control" name="tipodocumentobeneficiario">
                <option value="null"  >---------</option>
                <option value="cedula"  >Cedula</option>
                <option value="targeta de identidad"  >Targeta de Identidad </option>
                <option value="registro civil"  >Registro Civil </option>
            </select>
       </div>
       <div>
             <label>Documento De Identidad</label>
             <input name="documentobeneficiario" type="number" class="form-control"  required/>
       </div>
       <div>
             <label>Primer Nombre</label>
             <input name="primernombrebeneficiario" type="text" class="form-control" required />
       </div>
       
       <div>
             <label>Primer Apellido</label>
             <input name="primerapellidobeneficiario" class="form-control" type="text"  required/>
       </div>

       <div>
             <label>Segundo Nombre</label>
             <input name="segundonombrebeneficiario" type="text" class="form-control"/>
       </div>

       <div>
             <label>Segundo Apellido</label>
             <input name="segundoapellidobeneficiario" type="text" class="form-control" />
       </div>
		
       <div>
             <label>Fecha De Nacimiento</label>
             <input name="fechadenacimientobeneficiario" type="date" required class="form-control" /> 
       </div>
	     <div>
            <label>Fecha Expedicion Documento De Identidad</label>
            <input name="fechaexpediciondocumentobeneficiario" required type="date" class="form-control"/>
       </div>
       <div>
            <label>sexo</label>
            <select name="sexobeneficiario" class="form-control">
               <option value="null"> seleccione sexo</option>
               <option value="m">Masculino</option>
               <option value="f">Femenino</option>  
            </select>
       </div>
        
       <div>
            <label>Direccion De Residencia</label>
            <input name="direccionbeneficiario" type="text" required class="form-control" />
       </div>       
                    
	     <div>
            <label>Parentesco</label>
            <select id="parentescocotizante" class="form-control" name="parentescocotizante">
                <option value="Padre"  >Padre</option>
                <option value="Madre"  >Madre </option>
                <option value="Conyugue"  >Conyugue </option>
                <option value="Hija"  >Hija </option>
                <option value="Hijo"  >Hijo </option>
            </select>
       </div>
	     <div>
            <label>Ciudad</label>
            <select id="ciudad" class="form-control" name="ciudadbeneficiario">
              <option value="1" selected >- - - </option>
              <jsp:include page="selectciudad.jsp"/>
            </select>
       </div>
		   <div>
           <label>Departamento</label>
           <select id="departamento" class="form-control" name="departamentobeneficiario">
              <option value="1" selected >- - - </option>
             <jsp:include page="selectdepartamento.jsp"/>
            </select>
       </div>
       <div>
             <label>Telefono</label>
             <input name="telefonobeneficiario" type="number" required class="form-control" />
       </div>
	    <div>
             <label>login</label>
              <input type="text" name="loginbeneficiario" required class="form-control" >
      </div
		 
		 <input type="hidden" name="estadobeneficiario" value="activo">
		<button  class="btn btn-large btn-primary" type="submit">Ingresar </button>
		</form>
        </div>

      <div class="footer">
        <p>&copy; Coomeva 2013</p>
      </div>

    </div> <!-- /container -->

    <!-- Le javascript
    ================================================== -->
    

  </body>
</html>



