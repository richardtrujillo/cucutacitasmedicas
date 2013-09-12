
<jsp:useBean id="objetoControladorQuery" class="citas_medicas.controladorQuery" />
<jsp:setProperty name="objetoControladorQuery" property="*" />
<%

out.println(objetoControladorQuery.consultarExperto((String)session.getAttribute("tabla"),(String)session.getAttribute("campos"),(String)session.getAttribute("condiciones")));
				session.removeAttribute("campos");
				session.removeAttribute("condiciones");
				
%>