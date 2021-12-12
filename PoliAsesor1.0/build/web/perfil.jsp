<%-- 
    Document   : perfil
    Created on : 25/11/2021, 03:22:58 PM
    Author     : Administrador
--%>

<%@page import="Modelo.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="Control.AccionesUsuario"%>
<%@page import="Control.AccionesUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<% HttpSession sesionCliente = request.getSession();
    String usuario = (String) session.getAttribute("usuario");
    String privilegio = (String) session.getAttribute("privilegio");
    String rol = (String) session.getAttribute("rol");
    int rola = Integer.parseInt(rol);
    System.out.println(usuario);
    System.out.println(privilegio);
    System.out.println(rol);

 

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/perfil1.css">
    <title>Perfil</title>
    <link rel="shortcut icon" href="img/xxx.png">
    <script src="JS/perfil.js"></script>
</head>
<body>
    <ul >

    <li> <a href="https://www.ipn.mx" ><img class="ipn" src="img/logo.png"></a></li>




    <li class="regresar">
           <% if(rola ==2){ %>
            <a href="Admin.jsp" class="dropbtn" hreflang="Regresar a inicio">Regresar</a>
            <%}else{%>
            <a href="AsesorPrincipal.jsp" class="dropbtn" hreflang="Regresar a inicio">Regresar</a>
            <%} %>
     

    </li>
<li class="imgpoli" id="imgpoli"><img
             src="img/3 (2).png"></li>
</ul>

<center><div class="perfildiv">
    
      
       <%              List<Usuario> lisa = AccionesUsuario.datosalumno(usuario);
                
                 for (Usuario a : lisa) {
                    String rols;
                    if (rola == 0){
                        rols = "Asesorado";%>
                          <img src="img/fotopefil2.png"  class="imgperfil" id="foto" >
                    <%
                    }else if (rola == 1){
                        rols = "Asesor";%>
                          <img src="img/fotoperfil1.png"  class="imgperfil" id="foto" >
                    <%}else{
                        rols = "Administrador";%>
                          <img src="img/fotopefil3.png"  class="imgperfil" id="foto"  >
                    <%
                    }
                    String unidad ;
                    if (a.getUnidad() ==9){
                         unidad = "CECyT 9";
                    }else {
                         unidad = "Admin";
                    }
                      %>
                      <div class="datos" >
                          <p style="float: left"  class="nombretxt" id="nombretxt">Nombre:</p> <input style="float: left"   type="text" <%if(rola == 2){ %>  value="<%=a.getNombre()+" "+a.getApellido() %> " <%}if(rola !=2){%>value="<%=a.getApellido()+" "+a.getNombre() %> " <%}%> readonly class="nombre" id="nombre" maxlength="31">
                          <br> <br><br><p class="boletatxt">Boleta:</p> <input type="text"  value="<%=usuario %>" readonly class="boleta" id="boleta" maxlength="11">
        <br><br><p class="passtxt">Contraseña:</p> <input type="password"  value="<%=a.getContraseña() %>" readonly class="contraseña" id="contraseña" minlength="7" maxlength="15">
        <br><br><p class="tipotxt">Tipo de Usuario:</p> <input type="text"  value="<%=rols%>" readonly class="tipo" id="tipo" maxlength="13">
        <br><br><p class="unidadtxt">Unidad Academica:</p> <input type="text"  value="<%=unidad %>" readonly class="unidad" id="unidad" maxlength="20">
        <br><br><p class="contactotxt">Correo:</p> <input type="text"  value="<%=a.getContacto() %>" readonly class="correo" id="correo" maxlength="60">
           <br> <a href="cambiarcontra.jsp"><button class="contracam">Cambiar Contraseña</button></a>
    
    <% }%>
    
    </div>



</div></center>
    
</body>
</html>
