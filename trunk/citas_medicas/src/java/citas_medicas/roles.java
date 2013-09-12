package citas_medicas;

 public class roles { 
 
	 private String rol;
 
	 private String descripcion;
 
	 public roles(){} 
 
	 public roles(String rol,String descripcion)
 	 { 
	 	 this.rol=rol; 
	 	 this.descripcion=descripcion; 

 	 } 
 
	 public void setrol(String x) 
	 { 
 	 	 this.rol=x; 
 	 } 
 
	 public String getrol() 
	 { 
 	 	 return this.rol; 
 	 } 
 
	 public void setdescripcion(String x) 
	 { 
 	 	 this.descripcion=x; 
 	 } 
 
	 public String getdescripcion() 
	 { 
 	 	 return this.descripcion; 
 	 } 
 
}