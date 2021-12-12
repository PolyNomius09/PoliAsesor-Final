<%-- 
    Document   : horario
    Created on : 24/11/2021, 03:27:30 AM
    Author     : Administrador
--%>

<%@page import="Modelo.ListaUsuarios"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.AsesoriaD"%>
<%@page import="Control.AccionesUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<% HttpSession sesionCliente = request.getSession();
    String usuario = (String) session.getAttribute("usuario");
    String privilegio = (String) session.getAttribute("privilegio");
    String rol = (String) session.getAttribute("rol");
    System.out.println(usuario);
    System.out.println(privilegio);
    System.out.println(rol);

    if (usuario != null) {
        if (privilegio == "2") {

        } else {
            response.sendRedirect("Inicio.jsp");
        }
    } else {
        response.sendRedirect("Inicio.jsp");
    }


%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="shortcut icon" href="img/xxx.png">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/horario.css">
        <script src="JS/horario.js"></script>
        <title>Lista Alumnos</title>
        
    </head>
    <body style=" background-image: url(img/aa.png);background-size: auto " class="container">
        <ul> 

            <li> <a href="https://www.ipn.mx" style="padding: 0;"><img class="ipn" src="img/logo.png"></a></li>



            <li style="float: right;">
                <div class="dropdown">
                    <button onclick="myFunction()" class="dropbtn"><%=usuario%></button>

                </div>

            </li>

        </li>

        <li style="float: right;margin-top: .7vw;margin-left: .4vw;margin-right: -2px;"><img src="img/prefil.png" width="40"
                                                                                             height="40" style="display: inline-flex" alt="" /></li>
        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="" style="padding: 0;"><img
                    src="img/noti.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="horario.jsp" style="padding: 0;"><img
                    src="img/horario.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
                <%   if (rol == "1") { %>
        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="misasesorias.jsp" style="padding: 0;"><img
                    src="img/misaseblaco.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>

        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="crearasesoria.jsp" style="padding: 0;"><img
                    src="img/mas.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="AsesorPrincipal.jsp" style="padding: 0;"><img
                    src="img/homeblaco.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
        <li id="poliimg" style="float: right;margin-top: .4vw;display: flex;  margin-right:15.7vw;"><img
                src="img/3 (2).png"></li>

        <% } else if (rol == "0") { %>
        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="misasesorias2.jsp" style="padding: 0;"><img
                    src="img/misaseblaco.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>

        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="AsesorPrincipal.jsp" style="padding: 0;"><img
                    src="img/homeblaco.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
        <li id="imgpoli" style="float: right;margin-top: .4vw;display: flex;  margin-right:18.7vw;"><img
                src="img/3 (2).png"></li>
            <%}%>         

    </ul>
    <div id="myDropdown" class="dropdown-content" style="margin-top:-1px">
        <center><a href="perfil.jsp">Mi Perfil</a>
            <a href="cerradoconexito.jsp">Cerrar Sesión</a>
        </center>
    </div>
<center><h1 class="titulo"> Alumno </h1></center>
<table border="1" width="90%" align="center" bgcolor="white"  class="tabla" >


    <tr>
        <th style="font-size: 20px;"> N. </th>

        <th > <b> Nombre </b> </th>
        
        <th> <b> Boleta </b> </th>
        <th> <b> Contacto </b> </th>
        <th> <b> </b> </th>
       
    </tr>
    <%  int id = Integer.parseInt(request.getParameter("idase"));
    System.out.println(id+"aa");
     List<ListaUsuarios> lisa = AccionesUsuario.alumnoslista(id); 
        int i=1;
        for (ListaUsuarios a: lisa){
       %>
       <td><%=i%></td>
       <td><%=a.getNombre()%></td>
       <td><%=a.getBol_usu()%></td>
       <td><%=a.getCon()%></td>               
       <td>
          
           <form method="post" action="borraralumno?idusu=<%=a.getBol_usu() %>&idase=<%=id%>">
               <input type="image" src="img/borrar1.png" class="borraes" style="width: 13%;" 
                      alt="Eliminar" ></form></td>
          
       
       <%i++;}%>
       <style>
           .borraes:hover{
            cursor: pointer;  
           }
       </style>
   
</table>
<center><p style="color: #74003E;font-size: 1.6vw">No hay mas Alumnos Inscritos</p></center>

</body>
</html>