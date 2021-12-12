<%-- 
    Document   : horario
    Created on : 24/11/2021, 03:27:30 AM
    Author     : Administrador
--%>

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
        <title>Horario</title>
        
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
                    src="img/horarioselec.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
                <%   if (rol == "1") { %>
        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="misasesorias.jsp" style="padding: 0;"><img
                    src="img/misase.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>

        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="crearasesoria.jsp" style="padding: 0;"><img
                    src="img/mas.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="AsesorPrincipal.jsp" style="padding: 0;"><img
                    src="img/homeblaco.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
        <li id="poliimg" style="float: right;margin-top: .4vw;display: flex;  margin-right:15.7vw;"><img
                src="img/3 (2).png"></li>

        <% } else if (rol == "0") { %>
        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="misasesorias2.jsp" style="padding: 0;"><img
                    src="img/misase.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>

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
<center><h1 class="titulo"> Horario </h1></center>
<table border="1" width="90%" align="center" bgcolor="white"  class="tabla" >


    <tr>
        <th style="font-size: 20px;"> Asesoria </th>

        <th > <b> Lunes </b> </th>
        <th > <b> Martes </b> </th>
        <th> <b> Miércoles </b> </th>
        <th> <b> Jueves </b> </th>
        <th> <b> Viernes </b> </th>
        <th > <b> Sábado </b> </th>
        <th > <b> Domingo </b> </th>
    </tr>
    

          

        <tr><%              List<AsesoriaD> lisa = AccionesUsuario.mishorarios(usuario);
             
                 for (AsesoriaD as : lisa) {
                      %>
            
                      <td><a href="vermasins.jsp?idase=<%=as.getId_ase() %>" class="vermas" style="text-decoration: none;color: #74003E;"><%=as.getNombre()%></a></td>
         
         <td><%              List<AsesoriaD> lisaa = AccionesUsuario.horariosl(as.getId_ase());
             
                 for (AsesoriaD a : lisaa) {
                     
                     if (a.getId_fec() == 1 ){
                        %><%=a.getHorainicio()%> - <%=a.getHorafin()%>  <%
                     }
                 }
                      %></td>
         <td><%              List<AsesoriaD> lisaat = AccionesUsuario.horarios2(as.getId_ase());
             
                 for (AsesoriaD ad : lisaat) {
                     
                     if (ad.getId_fec() == 2 ){
                        %><%=ad.getHorainicio()%> - <%=ad.getHorafin()%>  <%
                     }
                 }
                      %></td>
         <td><% 
             List<AsesoriaD> lisaas = AccionesUsuario.horarios3(as.getId_ase());
             
                 for (AsesoriaD af : lisaas) {
                     
                     if (af.getId_fec() == 3 ){
                        %><%=af.getHorainicio()%> - <%=af.getHorafin()%>  <%
                     }
                 }
                      %></td>
         <td><% 
             List<AsesoriaD> lisaaf = AccionesUsuario.horarios4(as.getId_ase());
             
                 for (AsesoriaD af : lisaaf) {
                     
                     if (af.getId_fec() == 4 ){
                        %><%=af.getHorainicio()%> - <%=af.getHorafin()%>  <%
                     }
                 }
                      %></td>
         <td><% 
             List<AsesoriaD> lisaafs = AccionesUsuario.horarios5(as.getId_ase());
             
                 for (AsesoriaD af : lisaafs) {
                     
                     if (af.getId_fec() == 5 ){
                        %><%=af.getHorainicio()%> - <%=af.getHorafin()%>  <%
                     }
                 }
                      %></td>
         <td><% 
             List<AsesoriaD> lisaaw = AccionesUsuario.horarios6(as.getId_ase());
             
                 for (AsesoriaD af : lisaaw) {
                     
                     if (af.getId_fec() == 6 ){
                        %><%=af.getHorainicio()%> - <%=af.getHorafin()%>  <%
                     }
                 }
                      %></td>
         <td><% 
             List<AsesoriaD> lisaap = AccionesUsuario.horarios7(as.getId_ase());
             
                 for (AsesoriaD af : lisaap) {
                     
                     if (af.getId_fec() == 7 ){
                        %><%=af.getHorainicio()%> - <%=af.getHorafin()%>  <%
                     }
                 }
                      %></td>
         
    </tr>
<%} %>

   
</table>
<center><p style="color: #74003E;font-size: 1.6vw">No hay mas Asesorias Inscritas</p></center>

</body>
</html>