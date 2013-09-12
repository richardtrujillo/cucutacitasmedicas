<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="" %>
<jsp:useBean id="objetoControladorSesion" class="citas_medicas.controladorSesion" scope="session"/>
<jsp:setProperty name="objetoControladorSesion" property="*" />
<%
	String login=request.getParameter("login");
	String clave=request.getParameter("clave");
	boolean sesion=objetoControladorSesion.iniciar_sesion(login,clave);
	String tipo=objetoControladorSesion.tipousuario();
	if(sesion)
	{
		response.sendRedirect("menuprincipal.jsp");
	}
	else
	{
		response.sendRedirect("../index.jsp?error=1");
	}
%>