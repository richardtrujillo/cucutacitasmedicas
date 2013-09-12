/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package citas_medicas;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ronald
 */
public class citasdisponibles {
    
    private String cedulamedico;
    private String fechacitadisponible;
    private String hora;
    private String estado;

    public citasdisponibles() {
    }

    public citasdisponibles(String cedulamedico, String fechacitadisponible, String hora, String estado) {
        this.cedulamedico = cedulamedico;
        this.fechacitadisponible = fechacitadisponible;
        this.hora = hora;
        this.estado = estado;
    }

    public String getCedulamedico() {
        return cedulamedico;
    }

    public void setCedulamedico(String cedulamedico) {
        this.cedulamedico = cedulamedico;
    }

    public String getFechacitadisponible() {
        return fechacitadisponible;
    }

    public void setFechacitadisponible(String fechacitadisponible) {
        this.fechacitadisponible = fechacitadisponible;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    public static String consultarcitas_disponibles(String fechacita,String ced_medico)throws SQLException
    {
        String cad="";
         Coneccion cn=new Coneccion();
         String sql="select hora from citasdisponibles where cedulamedico='"+ced_medico+"' and fechacitadisponible='"+fechacita +"'";
         ResultSet rs=cn.consulta(sql);
       
       while(rs.next())
       {
            cad=cad+"<option value=" +rs.getString("hora") + ">" + rs.getString("hora") + "</option>"+")";
             cad=cad+"\n";
       }
       
    return cad;
    }
    
}
