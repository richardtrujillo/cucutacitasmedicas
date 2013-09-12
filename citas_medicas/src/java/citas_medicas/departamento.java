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
public class departamento {
    
    
    private String nombredepartamento;
public void departamento(){}

    public String getNombredepartamento() {
        return nombredepartamento;
    }

    public void setNombredepartamento(String nombredepartamento) {
        this.nombredepartamento = nombredepartamento;
    }

    public departamento(String nombredepartamento) {
        this.nombredepartamento = nombredepartamento;
    }

    public static LinkedList consultardepartamentos() throws SQLException
    {
   LinkedList lista = new LinkedList();
         Coneccion cn=new Coneccion();
        String sql="select * from departamento";
        ResultSet rs=cn.consulta(sql);
        departamento dep=null;
       while(rs.next())
        {
           dep= new departamento(rs.getString("nombredepartamento"));
           lista.add(dep);
                     
            }
     
    return lista;
    }
}