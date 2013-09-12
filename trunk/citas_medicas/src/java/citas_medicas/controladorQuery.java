/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package citas_medicas;

import java.io.IOException;
import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ronald
 */
public class controladorQuery {
   
    ArrayList columnas=new ArrayList();
   
    
    public controladorQuery() {
    }
    
    public ArrayList valoresColumnas()
    {
        
        return this.columnas;
    }
    
    public boolean validacion_cotizante(Object objeto)
    {
       boolean f=false;
       cotizante c= (cotizante)objeto;
       String fechaexpedicioncc=c.getFechaexpedicioncedulacotizante();
       String fechanacimiento=c.getFechadenacimientocotizante();
       char [] a= fechaexpedicioncc.toCharArray();
       char [] b= fechanacimiento.toCharArray();
	   
	String fexp=String.valueOf(a[0])+String.valueOf(a[1])+String.valueOf(a[2])+String.valueOf(a[3]);
	String fnac=String.valueOf(b[0])+String.valueOf(b[1])+String.valueOf(b[2])+String.valueOf(b[3]);
		
	 if((Integer.parseInt(fexp)-Integer.parseInt(fnac))>18)
	    {
                f=true;
                
            }  
       return f;
            
    }
    public boolean insertarExperto(String tabla,Object objeto) throws IllegalArgumentException, SQLException, IllegalAccessException {

      boolean insertado=false;
        
       Class clase = objeto.getClass();
        Field[] userfield = clase.getDeclaredFields();
        
        String nombres="";
        String campos="";
          for(int x=0;x<userfield.length;x++){
              userfield[x].setAccessible(true);
          }
        for(int x=0;x<userfield.length-1;x++){
       
            nombres+=userfield[x].getName()+",";
        }
        
        nombres+=userfield[userfield.length-1].getName();
    
        for(int x=0;x<=userfield.length-1;x++){
          
              campos += "'" + userfield[x].get(objeto)+"',";
        }
       
        campos=campos.substring(0, campos.length()-1);
        String sql="insert into"+" "+tabla+" "+" "+"("+nombres+") VALUES ("+campos.trim()+")";
        Coneccion cn=new Coneccion();
       
            cn.insertar(sql);
            insertado=true;
        
        cn.desconectar();
        
        return insertado;


    }
    
    
     public String consultarExperto(String tabla,String campos,String condiciones) throws SQLException {

        Coneccion cn=new Coneccion();
        String sql="select "+campos+" from "+tabla+condiciones;
        ResultSet rs=cn.consulta(sql);
        ResultSet rs2=cn.consulta(sql);
        
        String cad="<table class=\"table table-striped\">"
                + "<thead>";
        
        ResultSetMetaData rm=rs.getMetaData();
        for(int i=1;i<=rm.getColumnCount();i++)
	{
            cad=cad+"<th>"+rm.getColumnName(i)+"</th>";
        }
        cad=cad+"</thead><tbody>";
        
        while(rs.next())
        {
            cad=cad+"<tr>";
            for(int j=1;j<=rm.getColumnCount();j++)
            {
                cad=cad+"<th>"+rs.getString(rm.getColumnName(j))+"</th>";
            }
            cad=cad+"</tr>";
        }
       cad=cad+"</tbody></table>";
       return cad;
    }
      
     
     public void eliminarRegistro(String tabla,String campo_condicion,String valor_condicion) throws SQLException
     {
         String sql="delete from "+tabla+" where "+campo_condicion+"='"+valor_condicion+"'";
         Coneccion cn=new Coneccion();
         cn.actualizar(sql);
     }
}
