/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package citas_medicas;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Mauro
 */
public class controladorCotizante {
    
    ArrayList lista_citas;
    
    public controladorCotizante(){
    this.lista_citas=new ArrayList();
    }

    public ArrayList getLista_citas() {
        return lista_citas;
    }
    
    
    /*
    public cotizante consultarcotizante(String cedulacotizante) throws SQLException
    {
        
        Coneccion cn=new Coneccion();
        String sql="select * from cotizante where cedulacotizante='"+cedulacotizante+"';";
        ResultSet rs=cn.consulta(sql);
        cotizante cot=null;
        if(rs.next())
        {
           cot= new cotizante(rs.getString("cedulacotizante"),rs.getString("primernombrecotizante"),rs.getString("primerapellidocotizante"),rs.getString("segundonombrecotizante"),rs.getString("segundoapellidocotizante"),rs.getString("fechaexpedicioncedulacotizante"),rs.getString("fechadenacimientocotizante"),rs.getString("direccioncotizante"),rs.getString("departamentocotizante"),rs.getString("ciudadcotizante"),rs.getString("telefonocotizante"),rs.getString("estado"));
                    
            }
       
        return cot;
    }
   
    */
        public void consultarCitas(String documentousuario) throws SQLException
    {
        Coneccion cn=new Coneccion();
        ResultSet rs=cn.consulta("Select * from citamedica"+" where documentousuario='"+documentousuario+"';");
        while(rs.next())
        {
            citamedica r=new citamedica(rs.getString("documentousuario"),rs.getString("cedulamedico"),
                    rs.getString("fechacitamedica"),rs.getString("horacitamedica"),rs.getString("estado"));
            this.lista_citas.add(r);
        }
        
    }
    
        
}
