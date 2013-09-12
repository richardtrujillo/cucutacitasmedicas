package citas_medicas;

 public class rol_vs_funcion { 
 
	 private String rol;
 
	 private String funcion;
 
	 private String consultar;
 
	 private String modificar;
 
	 private String eliminar;
 
	 public rol_vs_funcion(){} 
 
	 public rol_vs_funcion(String rol,String funcion,String consultar,String modificar,String eliminar)
 	 { 
	 	 this.rol=rol; 
	 	 this.funcion=funcion; 
	 	 this.consultar=consultar; 
	 	 this.modificar=modificar; 
	 	 this.eliminar=eliminar; 

 	 } 
 
	 public void setrol(String x) 
	 { 
 	 	 this.rol=x; 
 	 } 
 
	 public String getrol() 
	 { 
 	 	 return this.rol; 
 	 } 
 
	 public void setfuncion(String x) 
	 { 
 	 	 this.funcion=x; 
 	 } 
 
	 public String getfuncion() 
	 { 
 	 	 return this.funcion; 
 	 } 
 
	 public void setconsultar(String x) 
	 { 
 	 	 this.consultar=x; 
 	 } 
 
	 public String getconsultar() 
	 { 
 	 	 return this.consultar; 
 	 } 
 
	 public void setmodificar(String x) 
	 { 
 	 	 this.modificar=x; 
 	 } 
 
	 public String getmodificar() 
	 { 
 	 	 return this.modificar; 
 	 } 
 
	 public void seteliminar(String x) 
	 { 
 	 	 this.eliminar=x; 
 	 } 
 
	 public String geteliminar() 
	 { 
 	 	 return this.eliminar; 
 	 } 
 
}