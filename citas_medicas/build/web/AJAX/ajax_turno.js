var xmlHttp

function getDetalleturno(prueba,ced_medico){
   xmlHttp=new XMLHttpRequest();
   
    if (xmlHttp==null){
        alert ("Tu navegador no soporta AJAX!");
        return;
    }
     
    var url = "db.jsp";
    url = url + "?pagina=" + prueba;
    url = url + "&c=" + ced_medico;
    
    xmlHttp.onreadystatechange = function()
    {
      if (xmlHttp.readyState==4){
         document.getElementById("horamedico").innerHTML=xmlHttp.responseText;
    }  
    }


    xmlHttp.open("GET",url,true);
    xmlHttp.send(null);
   

}

function getDetalleturnocita(prueba,ced_medico){
   xmlHttp=new XMLHttpRequest();
   
    if (xmlHttp==null){
        alert ("Tu navegador no soporta AJAX!");
        return;
    }
    
    var url = "db.jsp";
    url = url + "?pagina=" + prueba;
    url = url + "&c=" + ced_medico;
    
    xmlHttp.onreadystatechange = function()
    {
      if (xmlHttp.readyState==4){
         //document.getElementById("horamedico").innerHTML=xmlHttp.responseText;
    }  
    }


    xmlHttp.open("GET",url,true);
    xmlHttp.send(null);
     
    

}
function gethoramedico(ced_medico){
   xmlHttp=new XMLHttpRequest();
  var prueba="horamedico";
    if (xmlHttp==null){
        alert ("Tu navegador no soporta AJAX!");
        return;
    }
     
    var url = "db.jsp";
    url = url + "?pagina=" + prueba;
    url = url + "&c=" + ced_medico;
    
    xmlHttp.onreadystatechange = function()
    {
      if (xmlHttp.readyState==4){
         document.getElementById("horamedicoseleccion").innerHTML=xmlHttp.responseText;
    }  
    }


    xmlHttp.open("GET",url,true);
    xmlHttp.send(null);
  

}
function probar(variable)
{
 alert (variable);   
    
}




