/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package citas_medicas;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author ronald
 */
public class controladorAdministrador {
    
    private ArrayList lista_roles;

    public controladorAdministrador() {
        this.lista_roles = new ArrayList();
    }

    public ArrayList getLista_roles() {
        return lista_roles;
    }
    
    public void consultarRoles() throws SQLException
    {
        Coneccion cn=new Coneccion();
        ResultSet rs=cn.consulta("select r.rol,f.idfuncion,rf.consultar,rf.modificar,rf.agregar from roles r,funcionalides f,rol_vs_funcion rf where rf.rol=r.rol and rf.funcion=f.idfuncion order by r.rol;");
        while(rs.next())
        {
            roles r=new roles(rs.getString("rol"),rs.getString("descripcion"));
            this.lista_roles.add(r);
        }
    }
    
    public void insertarRol(String rol,String descripcion) throws SQLException
    {
        Coneccion cn=new Coneccion();
        cn.insertar("insert into roles values('"+rol+"','"+descripcion+"');");
    }
    
}
