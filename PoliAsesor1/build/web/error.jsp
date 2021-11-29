<%-- 
    Document   : error
    Created on : 24/11/2021, 09:30:20 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<% HttpSession sesionCliente = request.getSession();
    String usuario = (String) session.getAttribute("usuario");
    String privilegio = (String) session.getAttribute("privilegio");
    String rol = (String) session.getAttribute("rol");
    System.out.println(usuario);
    System.out.println(privilegio);
    System.out.println(rol);

 

%>
<!DOCTYPE html>
<html lang="en">
    
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="img/error.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/error.css">
    
    
    
    <title>Error</title>

</head>

<body style=" background-repeat: no-repeat; background-position: center; background-image:url(img/404.png), url(img/errorpag.png)";background-size: auto;  ">
    <ul>

        <li> <a href="https://www.ipn.mx" style="padding: 0;"><img class="ipn" src="img/logo.png"></a></li>




        <li style="float: right;">
            <div class="dropdown">
                <button onclick="myFunction()" class="dropbtn"><%=usuario%></button>

            </div>

        </li>

        <li style="float: right;margin-top: .7vw;margin-left: .4vw;margin-right: -2px;"><img src="img/prefil.png"
                width="40" height="40" style="display: inline-flex" alt="" /></li>
        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href=""
                style="padding: 0;"><img src="img/noti.png" width="40" height="40" style="display: inline-flex"
                    alt="" /></a></li>
        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="horario.jsp"
                style="padding: 0;"><img src="img/horario.png" width="40" height="40" style="display: inline-flex"
                    alt="" /></a></li>
        <%   if(rol == "1"){ %>
            <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="misasesorias.jsp" style="padding: 0;"><img
                        src="img/misase.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
                  <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="crearasesoria.jsp" style="padding: 0;"><img
                        src="img/mas.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
                        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="AsesorPrincipal.jsp" style="padding: 0;"><img
                        src="img/homeblaco.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
            <li id="poliimg" style="float: right;margin-top: .4vw;display: flex;  margin-right:15.7vw;"><img
                    src="img/3 (2).png"></li>
           
                        <% }else if (rol =="0"){ %>
                        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="misasesorias2.jsp" style="padding: 0;"><img
                        src="img/misase.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="AsesorPrincipal.jsp" style="padding: 0;"><img
                        src="img/homeblaco.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
            <li id="poliimg" style="float: right;margin-top: .4vw;display: flex;  margin-right:18.7vw;"><img
                    src="img/3 (2).png"></li>
<%}%>         
           
    </ul>
  



    <div id="myDropdown" class="dropdown-content">
        <center><a href="perfil.jsp">Mi Perfil</a>
            <a href="cerradoconexito.jsp">Cerrar Sesión</a>
        </center>

    </div>
    <div class="imgerror">
    </div>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
    <script src="JS/error.js"></script>
</body>

</html>