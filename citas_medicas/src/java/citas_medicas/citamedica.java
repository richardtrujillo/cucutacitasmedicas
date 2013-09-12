/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package citas_medicas;

/**
 *
 * @author ronald
 */
public class citamedica {
    
    private String documentousuario;
    private String cedulamedico;
    private String fechacitamedica;
    private String horacitamedica;
    private String estado;

    public citamedica() {
    }

    public citamedica(String documentousuario, String cedulamedico, String fechacitamedica, String horacitamedica, String estado) {
        this.documentousuario = documentousuario;
        this.cedulamedico = cedulamedico;
        this.fechacitamedica = fechacitamedica;
        this.horacitamedica = horacitamedica;
        this.estado = estado;
    }

    public String getDocumentousuario() {
        return documentousuario;
    }

    public void setDocumentousuario(String documentousuario) {
        this.documentousuario = documentousuario;
    }

    public String getCedulamedico() {
        return cedulamedico;
    }

    public void setCedulamedico(String cedulamedico) {
        this.cedulamedico = cedulamedico;
    }

    public String getFechacitamedica() {
        return fechacitamedica;
    }

    public void setFechacitamedica(String fechacitamedica) {
        this.fechacitamedica = fechacitamedica;
    }

    public String getHoracitamedica() {
        return horacitamedica;
    }

    public void setHoracitamedica(String horacitamedica) {
        this.horacitamedica = horacitamedica;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
}
