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
public class ciudad {
    
    private String nombre;
    private String departamento;
    

    public ciudad() {
    }

    public ciudad(String nombre, String departamento) {
        this.nombre = nombre;
        this.departamento = departamento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }
    
public static LinkedList consultarciudades() throws SQLException
{
LinkedList listaci = new LinkedList();
         Coneccion cn=new Coneccion();
        String sql="select * from ciudad";
        ResultSet rs=cn.consulta(sql);
        ciudad ciu=null;
       while(rs.next())
        {
           ciu= new ciudad(rs.getString("nombre"),rs.getString("departamento"));
           listaci.add(ciu);
                     
            }
     rs.close();
    return listaci;
}
}

