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
 * @author ronald -- mao
 */
public class agenda {
    
    private String cedulamedico;
    private String fechainicioagenda;
    private String fechafinalagenda;
    private String idturno;

    public agenda() {
    }

    public agenda(String cedulamedico, String fechainicioagenda, String fechafinalagenda, String idturno) {
        this.cedulamedico = cedulamedico;
        this.fechainicioagenda = fechainicioagenda;
        this.fechafinalagenda = fechafinalagenda;
        this.idturno = idturno;
    }

    public String getCedulamedico() {
        return cedulamedico;
    }

    public void setCedulamedico(String cedulamedico) {
        this.cedulamedico = cedulamedico;
    }

    public String getFechainicioagenda() {
        return fechainicioagenda;
    }

    public void setFechainicioagenda(String fechainicioagenda) {
        this.fechainicioagenda = fechainicioagenda;
    }

    public String getFechafinalagenda() {
        return fechafinalagenda;
    }

    public void setFechafinalagenda(String fechafinalagenda) {
        this.fechafinalagenda = fechafinalagenda;
    }

    public String getIdturno() {
        return idturno;
    }

    public void setIdturno(String idturno) {
        this.idturno = idturno;
    }
    
   public int consultarturno_medico(String cedmedico) throws SQLException
{

         Coneccion cn=new Coneccion();
        String sql="select idturno from agenda where cedulamedico='"+cedmedico+"'";
        ResultSet rs=cn.consulta(sql);
       
        String idturno="";
        medico medi=null;
        
       if(rs.next())
        {
         idturno=rs.getString("idturno");
            }
       int id=Integer.parseInt(idturno);
     rs.close();
    return id;
} 
}
