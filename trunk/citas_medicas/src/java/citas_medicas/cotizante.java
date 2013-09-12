/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package citas_medicas;

import java.lang.reflect.Field;
import java.sql.SQLException;

/**
 *
 * @author ronald
 */
public class cotizante {
    
    private String cedulacotizante;
    private String primernombrecotizante;
    private String primerapellidocotizante;
    private String segundonombrecotizante;
    private String segundoapellidocotizante;
    private String fechaexpedicioncedulacotizante;
    private String fechadenacimientocotizante;
    private String direccioncotizante;
    private String departamentocotizante;
    private String ciudadcotizante;
    private String telefonocotizante;
    private String estado;
    private String loginusuario;
    private String sexocotizante;

    public cotizante(String cedulacotizante, String primernombrecotizante, String primerapellidocotizante, String segundonombrecotizante, String segundoapellidocotizante, String fechaexpedicioncedulacotizante, String fechadenacimientocotizante, String direccioncotizante, String departamentocotizante, String ciudadcotizante, String telefonocotizante, String estado, String loginusuario, String sexocotizante) {
        this.cedulacotizante = cedulacotizante;
        this.primernombrecotizante = primernombrecotizante;
        this.primerapellidocotizante = primerapellidocotizante;
        this.segundonombrecotizante = segundonombrecotizante;
        this.segundoapellidocotizante = segundoapellidocotizante;
        this.fechaexpedicioncedulacotizante = fechaexpedicioncedulacotizante;
        this.fechadenacimientocotizante = fechadenacimientocotizante;
        this.direccioncotizante = direccioncotizante;
        this.departamentocotizante = departamentocotizante;
        this.ciudadcotizante = ciudadcotizante;
        this.telefonocotizante = telefonocotizante;
        this.estado = estado;
        this.loginusuario = loginusuario;
        this.sexocotizante = sexocotizante;
    }

    public String getSexocotizante() {
        return sexocotizante;
    }

    public void setSexocotizante(String sexocotizante) {
        this.sexocotizante = sexocotizante;
    }

    public String getCedulacotizante() {
        return cedulacotizante;
    }

    public void setCedulacotizante(String cedulacotizante) {
        this.cedulacotizante = cedulacotizante;
    }

    public String getPrimernombrecotizante() {
        return primernombrecotizante;
    }

    public void setPrimernombrecotizante(String primernombrecotizante) {
        this.primernombrecotizante = primernombrecotizante;
    }

    public String getPrimerapellidocotizante() {
        return primerapellidocotizante;
    }

    public void setPrimerapellidocotizante(String primerapellidocotizante) {
        this.primerapellidocotizante = primerapellidocotizante;
    }

    public String getSegundonombrecotizante() {
        return segundonombrecotizante;
    }

    public void setSegundonombrecotizante(String segundonombrecotizante) {
        this.segundonombrecotizante = segundonombrecotizante;
    }

    public String getSegundoapellidocotizante() {
        return segundoapellidocotizante;
    }

    public void setSegundoapellidocotizante(String segundoapellidocotizante) {
        this.segundoapellidocotizante = segundoapellidocotizante;
    }

    public String getFechaexpedicioncedulacotizante() {
        return fechaexpedicioncedulacotizante;
    }

    public void setFechaexpedicioncedulacotizante(String fechaexpedicioncedulacotizante) {
        this.fechaexpedicioncedulacotizante = fechaexpedicioncedulacotizante;
    }

    public String getFechadenacimientocotizante() {
        return fechadenacimientocotizante;
    }

    public void setFechadenacimientocotizante(String fechadenacimientocotizante) {
        this.fechadenacimientocotizante = fechadenacimientocotizante;
    }

    public String getDireccioncotizante() {
        return direccioncotizante;
    }

    public void setDireccioncotizante(String direccioncotizante) {
        this.direccioncotizante = direccioncotizante;
    }

    public String getDepartamentocotizante() {
        return departamentocotizante;
    }

    public void setDepartamentocotizante(String departamentocotizante) {
        this.departamentocotizante = departamentocotizante;
    }

    public String getCiudadcotizante() {
        return ciudadcotizante;
    }

    public void setCiudadcotizante(String ciudadcotizante) {
        this.ciudadcotizante = ciudadcotizante;
    }

    public String getTelefonocotizante() {
        return telefonocotizante;
    }

    public void setTelefonocotizante(String telefonocotizante) {
        this.telefonocotizante = telefonocotizante;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getLoginusuario() {
        return loginusuario;
    }

    public void setLoginusuario(String loginusuario) {
        this.loginusuario = loginusuario;
    }

    

    public cotizante() {
    }

    

   
    
   
    
}
