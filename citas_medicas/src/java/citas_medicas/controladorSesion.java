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
public class controladorSesion {
    private String tipousuario="";
    private cuentausuario cuentausuario=null;
    private boolean estado=false;

    public controladorSesion() {
    }
    
    

    public boolean estadoSesion() {
        return this.estado;
    }

    public String getTipoCuentaUsuario() {
        return this.cuentausuario.getTipo();
    }
    
    public String getLoginCuentaUsuario(){
        return this.cuentausuario.getLoginusuario();
    }
    
    public String getNumeroDocumento() throws SQLException{
        String cedula=" ";
        if(this.cuentausuario!=null)
        {
            if(this.cuentausuario.getTipo().equals("beneficiario")){
            Coneccion cn=new Coneccion();
            ResultSet rs=cn.consulta("select documentobeneficiario from beneficiario where loginbeneficiario='"
                    +this.getLoginCuentaUsuario()+"';");
                if(rs.next()){
                    cedula=rs.getString("documentobeneficiario");
                }
            }
            else if(this.cuentausuario.getTipo().equals("cotizante")){
                Coneccion cn=new Coneccion();
                ResultSet rs=cn.consulta("select cedulacotizante from cotizante where loginusuario='"
                    +this.getLoginCuentaUsuario()+"';");
                if(rs.next()){
                    cedula=rs.getString("cedulacotizante");
                }
            }
        }
        return cedula;
    }

    public boolean iniciar_sesion(String login,String clave) throws SQLException
    {
        Coneccion cn=new Coneccion();
        String sql="select * from cuentausuario where login='"+login+"' and clave='"+clave+"';";
        ResultSet rs=cn.consulta(sql);
        if(rs.next())
        {
            this.estado=true;
            this.tipousuario=rs.getString("tipo");
            cuentausuario=new cuentausuario(login,clave,tipousuario);
        }
        return estado;
    }
    
    public String listaMenu() throws SQLException
    {   
        Coneccion cn=new Coneccion();
        String sql="select * from rol_vs_funcion where rol='"+this.tipousuario+"';";
        ResultSet rs=cn.consulta(sql);
        
        String menu="<ul class=\"menu\">" +
"    <li><a href=\"menuprincipal.jsp\">Inicio</a></li>" ;
        
        while(rs.next())
        {
            menu=menu+"<li><a href=\"#\">"+rs.getString("funcion")+"</a>" +
"        <ul>\n";
                    if(rs.getString("agregar").equals("activa")){
                      menu=menu+"<li><a href=\""+rs.getString("funcion")+"_agregar.jsp\" onChange='cargar(this.value)' >Agregar</a></li>";
                      
                    }
                    if(rs.getString("consultar").equals("activa")){
                        menu=menu+"<li><a href=\""+rs.getString("funcion")+"_consultar.jsp\">Consultar</a></li>";
                    }
                    if(rs.getString("modificar").equals("activa")){
                        menu=menu+"<li><a href=\""+rs.getString("funcion")+"_modificar.jsp\">Modificar</a></li>";
                    }
                    menu=menu+"</ul></li>";
        }
        menu=menu+"<li><a href=\"cerrarSesion.jsp\">Salir</a></li></ul>";
        
        return menu;
    }
    
    public  String tipousuario()
    {
    return tipousuario;
    }
    public void cerrar_sesion()
    {
        this.cuentausuario=null;
        this.estado=false;
    }
    
}
