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
public class medico {

    private String cedulamedico;
    private String primernombremedico;
    private String primerapellidomedico;
    private String segundonombremedico;
    private String segundoapellidomedico;
    private String fechadenacimientomedico;
    private String direccionmedico;
    private String departamentomedico;
    private String ciudadmedico;
    private String telefonomedico;
    private String emailmedico;
    private String tipomedico;
    private String estadomedico;
    private String sexomedico;

    public String getSexomedico() {
        return sexomedico;
    }

    public void setSexomedico(String sexomedico) {
        this.sexomedico = sexomedico;
    }

    public medico(String cedulamedico, String primernombremedico, String primerapellidomedico, String segundonombremedico, String segundoapellidomedico, String fechadenacimientomedico, String direccionmedico, String departamentomedico, String ciudadmedico, String telefonomedico, String emailmedico, String tipomedico, String estadomedico, String sexomedico) {
        this.cedulamedico = cedulamedico;
        this.primernombremedico = primernombremedico;
        this.primerapellidomedico = primerapellidomedico;
        this.segundonombremedico = segundonombremedico;
        this.segundoapellidomedico = segundoapellidomedico;
        this.fechadenacimientomedico = fechadenacimientomedico;
        this.direccionmedico = direccionmedico;
        this.departamentomedico = departamentomedico;
        this.ciudadmedico = ciudadmedico;
        this.telefonomedico = telefonomedico;
        this.emailmedico = emailmedico;
        this.tipomedico = tipomedico;
        this.estadomedico = estadomedico;
        this.sexomedico = sexomedico;
    }

    public medico(String cedulamedico, String primernombremedico, String primerapellidomedico, String segundonombremedico, String segundoapellidomedico) {
        this.cedulamedico = cedulamedico;
        this.primernombremedico = primernombremedico;
        this.primerapellidomedico = primerapellidomedico;
        this.segundonombremedico = segundonombremedico;
        this.segundoapellidomedico = segundoapellidomedico;
    }
    

    public String getEstadomedico() {
        return estadomedico;
    }

    public void setEstadomedico(String estadomedico) {
        this.estadomedico = estadomedico;
    }

   
    public medico() {
    }

    

    public String getCedulamedico() {
        return cedulamedico;
    }

    public void setCedulamedico(String cedulamedico) {
        this.cedulamedico = cedulamedico;
    }

    public String getPrimernombremedico() {
        return primernombremedico;
    }

    public void setPrimernombremedico(String primernombremedico) {
        this.primernombremedico = primernombremedico;
    }

    public String getPrimerapellidomedico() {
        return primerapellidomedico;
    }

    public void setPrimerapellidomedico(String primerapellidomedico) {
        this.primerapellidomedico = primerapellidomedico;
    }

    public String getSegundonombremedico() {
        return segundonombremedico;
    }

    public void setSegundonombremedico(String segundonombremedico) {
        this.segundonombremedico = segundonombremedico;
    }

    public String getSegundoapellidomedico() {
        return segundoapellidomedico;
    }

    public void setSegundoapellidomedico(String segundoapellidomedico) {
        this.segundoapellidomedico = segundoapellidomedico;
    }

    public String getFechadenacimientomedico() {
        return fechadenacimientomedico;
    }

    public void setFechadenacimientomedico(String fechadenacimientomedico) {
        this.fechadenacimientomedico = fechadenacimientomedico;
    }

    public String getDireccionmedico() {
        return direccionmedico;
    }

    public void setDireccionmedico(String direccionmedico) {
        this.direccionmedico = direccionmedico;
    }

    public String getDepartamentomedico() {
        return departamentomedico;
    }

    public void setDepartamentomedico(String departamentomedico) {
        this.departamentomedico = departamentomedico;
    }

    public String getCiudadmedico() {
        return ciudadmedico;
    }

    public void setCiudadmedico(String ciudadmedico) {
        this.ciudadmedico = ciudadmedico;
    }

    public String getTelefonomedico() {
        return telefonomedico;
    }

    public void setTelefonomedico(String telefonomedico) {
        this.telefonomedico = telefonomedico;
    }

    public String getEmailmedico() {
        return emailmedico;
    }

    public void setEmailmedico(String emailmedico) {
        this.emailmedico = emailmedico;
    }

    public String getTipomedico() {
        return tipomedico;
    }

    public void setTipomedico(String tipomedico) {
        this.tipomedico = tipomedico;
    }

   public static String consultamedico_segunarea(String tipomedico)throws SQLException
   {
       Coneccion cn=new Coneccion();
       String sql="select cedulamedico,primernombremedico,primerapellidomedico from medico where tipomedico='"+tipomedico +"'";
       ResultSet rs=cn.consulta(sql);
        String cad="";
       while(rs.next())
       {
       cad=cad+"<option value=" +rs.getString("cedulamedico") + ">" + rs.getString("primernombremedico")+" "+rs.getString("primerapellidomedico") + "</option>"+")";
       cad=cad+"\n";
       }
       return cad; 
   }
    public static LinkedList consultarmedico() throws SQLException
{
LinkedList listati = new LinkedList();
         Coneccion cn=new Coneccion();
        String sql="select cedulamedico,primernombremedico,primerapellidomedico,segundonombremedico, segundoapellidomedico from medico";
        ResultSet rs=cn.consulta(sql);
        
        medico medi=null;
       while(rs.next())
        {
           medi= new medico(rs.getString("cedulamedico"),rs.getString("primernombremedico"),rs.getString("primerapellidomedico"),
                   rs.getString("segundonombremedico"),rs.getString("segundoapellidomedico"));
           listati.add(medi);
                     
            }
     rs.close();
    return listati;
}
   
}
