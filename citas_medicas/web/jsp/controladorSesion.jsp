<%@ page contentType="text/html; charset=ISO-8859-1" language="java"  errorPage="" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<jsp:useBean id="objeto" class="citas_medicas.controladorSesion"/>
<jsp:setProperty name="objeto" property="*"/>
<%
	String login=request.getParameter("login");
	String clave=request.getParameter("clave");
	
	boolean sesion=objeto.iniciar_sesion(login,clave);
	String tipo=objetoControladorSesion.tipo();
	if(sesion)
	{
		if(tipo.equals("administrador"))
		{
			%><jsp:include page="menuprincipal_admin.jsp"/><%
		}
		else if(tipo.equals("cotizante"))
		{
			%><jsp:include page="menuprincipal_cotizante.jsp"/><%
		}
		else if(tipo.equals("beneficiario"))
		{
			%><jsp:include page="menuprincipal_beneficiario.jsp"/><%
		}
		else
		{
			%><jsp:include page="menuprincipal_secretaria.jsp"/><%
		}
	}
	else
	{
		response.sendRedirect("../index.jsp?error=1");
	}
%>