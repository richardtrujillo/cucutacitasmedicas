<%@ page import="citas_medicas.*" %>
<%@ page import="java.util.ArrayList" %>
<jsp:useBean id="objetoControladorQuery" class="citas_medicas.controladorQuery" />
<jsp:setProperty name="objetoControladorQuery" property="*" />
<%
	if((String)session.getAttribute("campo_condicion")!=null){
	objetoControladorQuery.eliminarRegistro((String)session.getAttribute("tabla"),(String)session.getAttribute("campo_condicion"),(String)session.getAttribute("valor_condicion"));
	session.removeAttribute("campo_condicion");
	session.removeAttribute("valor_condicion");
	}
%>
	<SCRIPT LANGUAGE=javascript>
   		history.go(-1)
	</SCRIPT> 