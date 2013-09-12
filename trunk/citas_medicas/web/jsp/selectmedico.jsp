<%@ page import="java.util.*"%>
<%@ page import ="citas_medicas.medico"%>

<%
LinkedList resultadotipo=(LinkedList)medico.consultarmedico();
for (int i=0;i<resultadotipo.size();i++)
{
medico me=(medico)resultadotipo.get(i);

%>
<option value="<%=me.getCedulamedico()%>"> <%=me.getPrimernombremedico()+" " + me.getSegundonombremedico() +" " + me.getPrimerapellidomedico() +" " + me.getSegundonombremedico() %></option>
<%
}

%>


       