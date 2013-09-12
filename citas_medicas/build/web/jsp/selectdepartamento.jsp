<%@ page import="java.util.*"%>
<%@ page import ="citas_medicas.departamento"%>

<%
LinkedList resultadodepartamento=(LinkedList)departamento.consultardepartamentos();
for (int i=0; i<resultadodepartamento.size();i++)
{
departamento t=(departamento)resultadodepartamento.get(i);

%>
<option value="<%=t.getNombredepartamento()%>"> <%=t.getNombredepartamento()%></option>
<%
}

%>


       