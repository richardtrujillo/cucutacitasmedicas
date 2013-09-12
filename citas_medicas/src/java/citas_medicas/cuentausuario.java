/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package citas_medicas;

/**
 *
 * @author ronald
 */
public class cuentausuario {
    
    private String loginusuario;
    private String clave;
    private String tipo;

    public String getLoginusuario() {
        return loginusuario;
    }

    public void setLoginusuario(String loginusuario) {
        this.loginusuario = loginusuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public cuentausuario(String loginusuario, String clave, String tipo) {
        this.loginusuario = loginusuario;
        this.clave = clave;
        this.tipo = tipo;
    }

    public cuentausuario() {
    }

}