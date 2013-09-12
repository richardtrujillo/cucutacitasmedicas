<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Iniciar Sesion Citas_Medicas</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="css/bootstrap.css" rel="stylesheet">
     <link href="css/docs.css" rel="stylesheet">
      <link href="css/pygments-manni.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="css/bootstrap.min.js"></script>
 
    <!-- bootbox code -->
    <script src="bootbox.min.js"></script>
    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="../assets/ico/favicon.png">
  </head>

                       
      
  <body>

    <div class="container">

      <form class="form-signin" method="POST" action="jsp/iniciarSesion.jsp">
        <h2 class="form-signin-heading">Iniciar Sesion</h2>
        <input name="login" type="text" class="input-block-level" placeholder="Digite su numero documento" required>
        <input name="clave" type="password" class="input-block-level" placeholder="Ingrese su clave" required>
        
        <button class="btn btn-large btn-primary" type="submit">Ingresar</button>
      </form>

    </div> <!-- /container -->
	<%
		if(request.getParameter("error")!= null)
		{
                    %>
                    <script>alert("datos invalidos"); </script>

                    <%
		}
	%>
                        
                        
                     
                   
          
  </body>
       
            
</html>
