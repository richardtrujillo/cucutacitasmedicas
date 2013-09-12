/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package citas_medicas;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;

/**
 *
 * @author ronald
 */
public class tipomedico {
    
   
    private String nombre;
    private String descripcion;

    public tipomedico(String nombre, String descripcion) {
        this.nombre = nombre;
        this.descripcion = descripcion;
    }

    public tipomedico() {
    }

    

  

    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    public static LinkedList consultartipomedico() throws SQLException
{
LinkedList listati = new LinkedList();
         Coneccion cn=new Coneccion();
        String sql="select * from tipomedico";
        ResultSet rs=cn.consulta(sql);
        tipomedico tm=null;
       while(rs.next())
        {
           tm= new tipomedico(rs.getString("nombre"),rs.getString("descripcion"));
           listati.add(tm);
                     
            }
     rs.close();
    return listati;
}
}
