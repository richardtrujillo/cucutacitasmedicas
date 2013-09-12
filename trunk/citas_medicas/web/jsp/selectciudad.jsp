<%@ page import="java.util.*"%>
<%@ page import ="citas_medicas.ciudad"%>

<%
LinkedList resultadociudad=(LinkedList)ciudad.consultarciudades();
for (int i=0;i<resultadociudad.size();i++)
{
ciudad ciu=(ciudad)resultadociudad.get(i);

%>
<option value="<%=ciu.getNombre()%>"> <%=ciu.getNombre()%></option>
<%
}

%>


       