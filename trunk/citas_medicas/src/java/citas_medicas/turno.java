/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package citas_medicas;

/**
 *
 * @author ronald
 */
public class turno {
 
    private String idturno;
    private String nombreturno;

    public turno() {
    }

    public turno(String idturno, String nombreturno) {
        this.idturno = idturno;
        this.nombreturno = nombreturno;
    }

    public String getIdturno() {
        return idturno;
    }

    public void setIdturno(String idturno) {
        this.idturno = idturno;
    }

    public String getNombreturno() {
        return nombreturno;
    }

    public void setNombreturno(String nombreturno) {
        this.nombreturno = nombreturno;
    }
    
    
}
