<%-- 
    Formulario de ingreso administrador que redirecciona a ValidaAdmin.jsp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <style type="text/css" >
               /* estilos CSS*/
             @import url("estilos.css");
                      #login
  {
       border: gray 2px solid;
    margin-bottom: 50px;
        margin-left:150px;
        margin-right:200px;
        
        margin-top:150px;
  }
             
        </style>
   
    </head>
    <body>
   <%  if(request.getParameter("nombre")== null)
        {
        %><%-- si no exixte el campo usuario --%>
        <div  id="principal"  >   
            
            <div id="top">
              <div id="menu">
                     
                <ul class="nav">
                    <li><a href="index.html">Inicio</a></li>  
                     <li><a href="about.html">Acerca de</a></li>  
                     <li><a href="registro.html">Registro</a></li>  
                     <li><a href="ingresoUsuario.html">Login</a></li>  
                                <li><a href="Contacto.html">Contacto</a></li>  
                  
                </ul>
                       </div>
                
       
            <div id="logo"> <a href="index.html"><img src="imagenes/banner.jpg"  alt="banner" height="150" width="850"/> </a></div><!--Banner de la pagina-->
                  
           </div>
            
            <div id="login">
            <form action="" method="POST">
                <br>
                <h3>Administrador </h3>
                <center>    Usuario:<input type="text" name="nombre"/></center><br>
                <center> Contraseña:<input type="password" name="pass"/>  </center><br>
                 <center> <input type="submit" name="boton" value="Entrar"/>  </center><br>
            </form>
                </div>
            <%} 
        else
               {
                  HttpSession admin = request.getSession();
                  admin.setAttribute("nombre",request.getParameter("nombre"));
                  admin.setAttribute("pass",request.getParameter("pass"));
                 String nombre =(String)admin.getAttribute("nombre");
                 String pass =(String)admin.getAttribute("pass");
           
         if((nombre.equals("admin123" ))&&(pass.equals("123"))){

                    }


                
                  response.sendRedirect(".jsp");
               }

        %>
           
            <div id="pie" >
               @2016 TheMountain.cl  
           </div> 
                     
                        </div >  
    </body>
</html>
