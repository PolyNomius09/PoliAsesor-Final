<%-- 
    Document   : misasesorias2
    Created on : 22/11/2021, 07:22:50 AM
    Author     : Administrador
--%>

<%@page import="Modelo.Usuario"%>
<%@page import="Modelo.AsesoriaD"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Asesorias"%>
<%@page import="Modelo.Asesorias"%>
<%@page import="Control.AccionesUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<% HttpSession sesionCliente = request.getSession();
    String usuario = (String)session.getAttribute("usuario");
    String privilegio= (String)session.getAttribute("privilegio");
    String rol = (String)session.getAttribute("rol");
    System.out.println(usuario);
    System.out.println(privilegio);
    System.out.println(rol);
    
    if(usuario != null){
       if(privilegio == "2"){
         
       }else{
           response.sendRedirect("Inicio.jsp");
       }
    }else{
         response.sendRedirect("Inicio.jsp");
    }
    
           %>
<!DOCTYPE html>
<html lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="img/xxx.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/misasesorias2.css">
    <title>Mis Asesorias</title>
</head>
<body style=" background-image: url(img/aa.png);" class="container">
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
                        src="img/misaseblaco.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
                  <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="crearasesoria.jsp" style="padding: 0;"><img
                        src="img/mas.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
                        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="AsesorPrincipal.jsp" style="padding: 0;"><img
                        src="img/homeblaco.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
            <li id="poliimg" style="float: right;margin-top: .4vw;display: flex;  margin-right:15.7vw;"><img
                    src="img/3 (2).png"></li>
           
                        <% }else if (rol =="0"){ %>
                        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="misasesorias2.jsp" style="padding: 0;"><img
                        src="img/misaseblaco.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
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
  
      <% if(rol == "1") {%>
      <div class="opcion">
    <table>
      <tr>
        <td ><a href="misasesorias.jsp">Asesorias</a></td>
        <td style="font-weight: 350;">/</td>
       <td style="font-weight: 400;"> <a href="misasesorias2.jsp">Mis Asesorias</a></td>
      </tr>
    </table> </div><%} if(rol == "0") {%><center><div class="opcion" style="margin-left: 0;">
    <table>
      <tr>
        
      <td style="font-weight: 400;padding-right: 0;"> <a href="misasesorias2.jsp">Mis Asesorias</a></td>
      </tr>
    </table> </div></center><% } %>
  <%
            List<Asesorias> lis = AccionesUsuario.Asesoriastomadas(usuario);

            for (Asesorias c : lis) {

        %>
  <div class="asesorias" style="display: block;">
      
    <img src="img/fotoperfil1.png" class="fotoperfil">
    <h1 class="materia"><%=c.getNombre() %></h1>
    <p class="nombre"><%=c.getNombreasesor() %></p>
    <div class="temasdiv">
      <p class="temas">
       <%=c.getDescripcion() %>
      </p>
    </div>
    <img src="img/cupo.png" class="imgcupo">
    <p class="disp"><%=c.getCupomax()-c.getCupodis()%>/<%=c.getCupomax()%></p>
    <div class="horadiv">
      <table class="horario">
          <%
                        List<AsesoriaD> lisa = AccionesUsuario.Asesoriafecha(c.getId());

                        for (AsesoriaD a : lisa) {
                            System.out.println(a.getId_fec());
                          

                    %>
        <tr>
          <td><%                            if (a.getId_fec() == 1) {
                            %>L<%
                            } else if (a.getId_fec() == 2) {
                            %>M<%
                            } else if (a.getId_fec() == 3) {
                            %>MI<%
                            } else if (a.getId_fec() == 4) {
                            %>J<%
                            } else if (a.getId_fec() == 5) {
                            %>V<%
                            } else if (a.getId_fec() == 6) {
                            %>S<%
                            } else if (a.getId_fec() == 7) {
                            %>D<%
                                }

                            %></td>
                        <td style="padding-left: 4px;">&nbsp; <%=a.getHorainicio()%> - <%=a.getHorafin()%> </td>

        </tr>
              <% } %>
      </table>
    </div>
    <form id="form1" method="post" action="dardebaja"><% Usuario e = new Usuario();
            e.setBol(usuario); int id = c.getId(); System.out.println(id); %>
        <input type="text" name="idase" value="<%=id%>" style="visibility: hidden;" >
        <input type="text" name="usu" value="<%=e.getBol() %>" style="visibility: hidden;" >
      <table class="botonestabla">
        <tr>
          <td> <input type="submit" formaction="vermasins.jsp" value="Ver Más" class="botones2"></td>
          <td>  <input type="submit" formaction="dardebaja" value="Eliminar" class="botones"></td>
        </tr>
      </table>
      
    
    </form>
  
    
  </div><% }%>
<center><h2 style="color: #74003E;">No hay mas Asesorias para mostrar</h2></center>
 
  




 <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
                            function f() {
    Swal.fire({
        title: '¿Seguro que deseas Dar de Baja esta Asesoria?',

        showCancelButton: true,
        confirmButtonText: 'Si',
        cancelButtonText: 'No',
    }).then((result) => {
        /* Read more about isConfirmed, isDenied below */
        if (result.isConfirmed) {
            document.getElementById("form1").setAttribute('action', 'dardebaja')
document.forms["form1"].submit();

        }
    });
}
        </script>
  <script src="JS/misasesorias.js"></script>


      
    
</body>
</html>