
package citas_medicas;

import java.sql.*;
import java.lang.reflect.Field;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.ResultSet;

public class Coneccion {
   static String login = "postgres";
   static String password = "1234";
   static String url = "jdbc:postgresql://localhost:5432/citas_medicas";

   Connection conn = null;

   /** Constructor de conneccion */
   public Coneccion() {
      try{
         //obtenemos el driver de para postgres
         Class.forName("org.postgresql.Driver");
         //obtenemos la conexión
         conn = DriverManager.getConnection(url,login,password);
         if (conn!=null){
         }
      }catch(SQLException e){
         System.out.println(e);
      }catch(ClassNotFoundException e){
         System.out.println(e);
      }
   }
   /**Permite retornar la conexión*/

   public ResultSet consulta(String cons) throws SQLException
   {
       PreparedStatement ps=null;
       try {
            ps=this.conn.prepareStatement(cons);
            } catch (SQLException ex) {
                Logger.getLogger(Coneccion.class.getName()).log(Level.SEVERE, null, ex);    
                }
       return ps.executeQuery();
   }
   
    
   
   public boolean insertar(String cons) throws SQLException
   {
       PreparedStatement ps=null;
       try {
            ps=this.conn.prepareStatement(cons);
            ps.execute();
            return true;
            } catch (SQLException ex) {
                Logger.getLogger(Coneccion.class.getName()).log(Level.SEVERE, null, ex);
                return false;
                }
       
   }
   public void actualizar(String actualiza) throws SQLException{
	 PreparedStatement ps=null;
       try {
            ps=this.conn.prepareStatement(actualiza);
            ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(Coneccion.class.getName()).log(Level.SEVERE, null, ex);
                }
       
	}
   
   public void desconectar(){
      conn = null;
      
   }

}