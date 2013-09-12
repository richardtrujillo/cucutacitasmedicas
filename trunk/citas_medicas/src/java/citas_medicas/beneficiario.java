/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package citas_medicas;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ronald
 */
public class beneficiario {
    
    private String documentobeneficiario;
    private String primernombrebeneficiario;
    private String primerapellidobeneficiario;
    private String segundonombrebeneficiario;
    private String segundoapellidobeneficiario;
    private String fechadenacimientobeneficiario;
    private String tipodocumentobeneficiario;
    private String fechaexpediciondocumentobeneficiario;
    private String direccionbeneficiario;
    private String departamentobeneficiario;
    private String ciudadbeneficiario;
    private String telefonobeneficiario;
    private String cedulacotizante;
    private String parentescocotizante;
    private String estadobeneficiario;
    private String loginbeneficiario;

    public String getParentescocotizante() {
        return parentescocotizante;
    }

    public void setParentescocotizante(String parentescocotizante) {
        this.parentescocotizante = parentescocotizante;
    }

    public beneficiario(String documentobeneficiario, String primernombrebeneficiario, String primerapellidobeneficiario, String segundonombrebeneficiario, String segundoapellidobeneficiario, String fechadenacimientobeneficiario, String tipodocumentobeneficiario, String fechaexpediciondocumentobeneficiario, String direccionbeneficiario, String departamentobeneficiario, String ciudadbeneficiario, String telefonobeneficiario, String cedulacotizante, String parentescocotizante, String estadobeneficiario, String loginbeneficiario) {
        this.documentobeneficiario = documentobeneficiario;
        this.primernombrebeneficiario = primernombrebeneficiario;
        this.primerapellidobeneficiario = primerapellidobeneficiario;
        this.segundonombrebeneficiario = segundonombrebeneficiario;
        this.segundoapellidobeneficiario = segundoapellidobeneficiario;
        this.fechadenacimientobeneficiario = fechadenacimientobeneficiario;
        this.tipodocumentobeneficiario = tipodocumentobeneficiario;
        this.fechaexpediciondocumentobeneficiario = fechaexpediciondocumentobeneficiario;
        this.direccionbeneficiario = direccionbeneficiario;
        this.departamentobeneficiario = departamentobeneficiario;
        this.ciudadbeneficiario = ciudadbeneficiario;
        this.telefonobeneficiario = telefonobeneficiario;
        this.cedulacotizante = cedulacotizante;
        this.parentescocotizante = parentescocotizante;
        this.estadobeneficiario = estadobeneficiario;
        this.loginbeneficiario = loginbeneficiario;
    }

    public String getDocumentobeneficiario() {
        return documentobeneficiario;
    }

    public void setDocumentobeneficiario(String documentobeneficiario) {
        this.documentobeneficiario = documentobeneficiario;
    }


    public beneficiario() {
    }

   

    public String getPrimernombrebeneficiario() {
        return primernombrebeneficiario;
    }

    public void setPrimernombrebeneficiario(String primernombrebeneficiario) {
        this.primernombrebeneficiario = primernombrebeneficiario;
    }

    public String getPrimerapellidobeneficiario() {
        return primerapellidobeneficiario;
    }

    public void setPrimerapellidobeneficiario(String primerapellidobeneficiario) {
        this.primerapellidobeneficiario = primerapellidobeneficiario;
    }

    public String getSegundonombrebeneficiario() {
        return segundonombrebeneficiario;
    }

    public void setSegundonombrebeneficiario(String segundonombrebeneficiario) {
        this.segundonombrebeneficiario = segundonombrebeneficiario;
    }

    public String getSegundoapellidobeneficiario() {
        return segundoapellidobeneficiario;
    }

    public void setSegundoapellidobeneficiario(String segundoapellidobeneficiario) {
        this.segundoapellidobeneficiario = segundoapellidobeneficiario;
    }

    public String getFechadenacimientobeneficiario() {
        return fechadenacimientobeneficiario;
    }

    public void setFechadenacimientobeneficiario(String fechadenacimientobeneficiario) {
        this.fechadenacimientobeneficiario = fechadenacimientobeneficiario;
    }

    public String getTipodocumentobeneficiario() {
        return tipodocumentobeneficiario;
    }

    public void setTipodocumentobeneficiario(String tipodocumentobeneficiario) {
        this.tipodocumentobeneficiario = tipodocumentobeneficiario;
    }

    public String getFechaexpediciondocumentobeneficiario() {
        return fechaexpediciondocumentobeneficiario;
    }

    public void setFechaexpediciondocumentobeneficiario(String fechaexpediciondocumentobeneficiario) {
        this.fechaexpediciondocumentobeneficiario = fechaexpediciondocumentobeneficiario;
    }

    public String getDireccionbeneficiario() {
        return direccionbeneficiario;
    }

    public void setDireccionbeneficiario(String direccionbeneficiario) {
        this.direccionbeneficiario = direccionbeneficiario;
    }

    public String getDepartamentobeneficiario() {
        return departamentobeneficiario;
    }

    public void setDepartamentobeneficiario(String departamentobeneficiario) {
        this.departamentobeneficiario = departamentobeneficiario;
    }

    public String getCiudadbeneficiario() {
        return ciudadbeneficiario;
    }

    public void setCiudadbeneficiario(String ciudadbeneficiario) {
        this.ciudadbeneficiario = ciudadbeneficiario;
    }

    public String getTelefonobeneficiario() {
        return telefonobeneficiario;
    }

    public void setTelefonobeneficiario(String telefonobeneficiario) {
        this.telefonobeneficiario = telefonobeneficiario;
    }

    public String getCedulacotizante() {
        return cedulacotizante;
    }

    public void setCedulacotizante(String cedulacotizante) {
        this.cedulacotizante = cedulacotizante;
    }

   

    public String getEstadobeneficiario() {
        return estadobeneficiario;
    }

    public void setEstadobeneficiario(String estadobeneficiario) {
        this.estadobeneficiario = estadobeneficiario;
    }

    public String getLoginbeneficiario() {
        return loginbeneficiario;
    }

    public void setLoginbeneficiario(String loginbeneficiario) {
        this.loginbeneficiario = loginbeneficiario;
    }

    

   

    

    
}
