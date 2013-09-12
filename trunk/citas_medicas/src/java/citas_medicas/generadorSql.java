package citas_medicas;
 
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

public class generadorSql {

	public static void main (String args[]) throws SQLException, IOException
	{
          generar();
        }
	
	public static void generar() throws SQLException, IOException 
        {
            Coneccion cn=new Coneccion();
            String consultarTablas="SELECT tablename FROM pg_tables WHERE schemaname = 'public'";
            ResultSet rs=cn.consulta(consultarTablas);
        
            while(rs.next())
            {   
                String tabla=rs.getString("tablename");        
                
                File clase=new File(tabla+".java");
                File formulario=new File("formulario_"+tabla+".jsp");
                FileWriter escribirClase=new FileWriter(clase);
                FileWriter escribirFormulario=new FileWriter(formulario);
                
                String importaciones="";
                String clasetxt="\n public class "+tabla+" { \n \n";
                String constructor="\t public "+tabla+"(){} \n \n";
                String constructorParametros="\t public "+tabla+"(";
                String atributos="";
                String metodos="";
                
                String parametros="";
                String asignaciones="";
                
                String formularioJsp="<form name=\""+tabla+"\" method=\"POST\" "
                        + "action=\"controladorFormularios.jsp\"> \n";
                
                String consultarTabla="SELECT * FROM "+tabla;
                ResultSet rs1=cn.consulta(consultarTabla);
        
                ResultSetMetaData rm=rs1.getMetaData();
                for(int i=1;i<=rm.getColumnCount();i++)
                {
                    String nombreCampo=rm.getColumnName(i);
                    String tipoCampo="";
                    String tipoEtiqueta="";
                    if(rm.getColumnTypeName(i).equals("text") || rm.getColumnTypeName(i).equals("varchar"))
                    {
                        tipoCampo="String";
                        tipoEtiqueta="text";
                    }
                    else if(rm.getColumnTypeName(i).equals("date"))
                    {
                        tipoCampo="date";
                        tipoEtiqueta="date";
                        if(importaciones.indexOf("sql.Date")==-1)
                        {
                            importaciones=importaciones+"import java.sql.Date;\n";
                        }
                    }
                    //atributos de la clase
                    atributos=atributos+"\t private "+tipoCampo+" "+nombreCampo+";\n \n";
                    //constructor con parametros
                    if(i!=rm.getColumnCount())
                    {
                        parametros=parametros+tipoCampo+" "+nombreCampo+",";
                    }
                    else
                    {
                        parametros=parametros+tipoCampo+" "+nombreCampo;
                    }
                    asignaciones=asignaciones+"\t \t this."+nombreCampo+"="+nombreCampo+"; \n";
                    //metodos set
                    metodos=metodos+"\t public void set"+nombreCampo+"("+tipoCampo+" x) \n"
                            +"\t { \n \t \t this."+nombreCampo+"=x; \n \t } \n \n";
                    //metodos get
                    metodos=metodos+"\t public "+tipoCampo+" get"+nombreCampo+"() \n"
                            +"\t { \n \t \t return this."+nombreCampo+"; \n \t } \n \n";
                    //formulario Jsp
                    formularioJsp=formularioJsp+"\t"+nombreCampo+"\n"+"\t"
                            + "<input name=\""+nombreCampo+"\" type=\""+tipoEtiqueta+"\""
                            + " placeholder=\"Digite "+nombreCampo
                            + " \" required> \n";
                }
                formularioJsp=formularioJsp+"\t<button type=\"submit\">Registrar</button> \n </form>";
                constructorParametros=constructorParametros+parametros+")\n \t { \n"+asignaciones+"\n \t } \n \n";
                clasetxt=importaciones+clasetxt+atributos+constructor+constructorParametros+metodos+"}";
                escribirClase.write(clasetxt);
                escribirClase.close();
                escribirFormulario.write(formularioJsp);
                escribirFormulario.close();
            }
	}
}