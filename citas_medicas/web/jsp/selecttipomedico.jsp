<%@ page import="java.util.*"%>
<%@ page import ="citas_medicas.tipomedico"%>

<%
LinkedList resultadotipo=(LinkedList)tipomedico.consultartipomedico();
for (int i=0;i<resultadotipo.size();i++)
{
tipomedico me=(tipomedico)resultadotipo.get(i);

%>
<option value="<%=me.getNombre()%>"> <%=me.getNombre()%></option>
<%
}

%>


       