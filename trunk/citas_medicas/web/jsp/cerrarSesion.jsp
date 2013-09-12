<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="" %>
<jsp:useBean id="objetoControladorSesion" class="citas_medicas.controladorSesion" scope="session"/>
<jsp:setProperty name="objetoControladorSesion" property="*" />
<%
	objetoControladorSesion.cerrar_sesion();
	response.sendRedirect("../index.jsp");
%>