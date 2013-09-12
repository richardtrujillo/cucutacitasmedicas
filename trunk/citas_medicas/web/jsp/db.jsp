<jsp:useBean id="objetoagenda" class="citas_medicas.agenda" scope="session" />
<jsp:setProperty name="objetoagenda" property="*" />
<jsp:useBean id="objetomedico" class="citas_medicas.medico" scope="session" />
<jsp:setProperty name="objetomedico" property="*" />
<jsp:useBean id="objetocitasdisponibles" class="citas_medicas.citasdisponibles" scope="session" />
<jsp:setProperty name="objetocitasdisponibles" property="*" />


<%
String pagina=request.getParameter("pagina");
String valor = request.getParameter("c");
if(pagina.equalsIgnoreCase("turno"))
{
out.write("<select name='hora' class='form-control'>");
int tur=objetoagenda.consultarturno_medico(valor);

if(tur==1)
	{
out.write("<option value='06:00 '> 06:00 am </option> ");
out.write("<option value='07:00 '> 07:00 am </option> ");
out.write("<option value='08:00 '> 08:00 am </option> ");
out.write("<option value='09:30 '> 09:30 am </option> ");

     }
     else
     {           

out.write("<option value='12:00 '> 12:00 pm </option> ");
out.write("<option value='14:00 '> 02:00 pm </option> ");
out.write("<option value='15:00 '> 03:00 pm </option> ");
out.write("<option value='16:00 '> 04:00 pm </option> ");
}
 out.write("</select>");

}
else if(pagina.equalsIgnoreCase("medico"))
{
    
    out.write("<select name='nombredoctor' onchange='gethoramedico(this.value)' class='form-control'>");
    out.write("<option value='0'>seleccione medico </option> ");
    String nombredoctor=objetomedico.consultamedico_segunarea(valor);
    out.write(nombredoctor);
    out.write("</select>");
    
}

else if(pagina.equalsIgnoreCase("horamedico"))
{
     
     out.write("<select name='horam' class='form-control'>");
     out.write("<option value='0'>seleccione la hora </option> ");
     String hours=objetocitasdisponibles.consultarcitas_disponibles((String)session.getAttribute("fechacitamedica"),valor);
     out.write(hours);
   
     out.write("</select>");
    


}
else if(pagina.equalsIgnoreCase("fechacitamedica"))
{

session.setAttribute("fechacitamedica", valor);
}
%>
