/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package citas_medicas;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Mauricio
 */
public class Archivo {

    public static void grabar(String na,String Cad)
            {
        FileWriter fw = null;
        try {
           File f = new File ("C:\\Program Files\\Apache Software Foundation\\Tomcat 7.0\\webapps\\citasmedicascucuta\\jsp\\"+na);
 
            fw = new FileWriter(f);
            fw.write(Cad);
            fw.close();
        } catch (IOException ex) {
            Logger.getLogger(Archivo.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                fw.close();
            } catch (IOException ex) {
                Logger.getLogger(Archivo.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

}


}
