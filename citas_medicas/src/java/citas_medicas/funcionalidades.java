package citas_medicas;

 public class funcionalidades { 
 
	 private String idfuncion;
 
	 public funcionalidades(){} 
 
	 public funcionalidades(String idfuncion)
 	 { 
	 	 this.idfuncion=idfuncion; 

 	 } 
 
	 public void setidfuncion(String x) 
	 { 
 	 	 this.idfuncion=x; 
 	 } 
 
	 public String getidfuncion() 
	 { 
 	 	 return this.idfuncion; 
 	 } 
 
}