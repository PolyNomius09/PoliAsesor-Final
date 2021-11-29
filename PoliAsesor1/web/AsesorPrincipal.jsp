<%-- 
    Document   : PrincipalAsesor
    Created on : 12/10/2021, 12:47:37 AM
    Author     : Administrador
--%>


<%@page import="Modelo.UnidadesA"%>
<%@page import="Modelo.AsesoriaD"%>
<%@page import="Modelo.Usuario"%>
<%@page import="Control.AccionesUsuario"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Asesorias"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true" %>
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/principal.css">
        <link rel="shortcut icon" type="" href="img/xxx.png">
        <title>Principal</title>
        <script src="JS/principal.js"></script>
    </head>

    <body style=" background-image: url(img/aa.png);" class="container">
        <ul>

            <li> <a href="https://www.ipn.mx" style="padding: 0;"><img class="ipn" src="img/logo.png"></a> </li>
           <li> 
              <input style=" visibility: hidden" class="nav" form="buscar" onkeypress="return z()"type="search" placeholder="Buscar" id="nav"  ></li>
           <button  style=" visibility: hidden" class="butcarr" form="buscar" type="submit" onclick="sumbit1()"><img class="butcar" src="img/buscar.png"></button>
                    <div  style=" visibility: hidden" class="dropfiltro">
                        <button class="dropbtn1" onclick="myFunction1()" id="filtros"><img class="filtro" src="img/filtro.png"></button>


                    </div>



            <li style="float: right;">
                <div class="dropdown">
                    <button onclick="myFunction()" class="dropbtn"><%=usuario %></button>

                </div>

            </li>

            <li style="float: right;margin-top: .7vw;margin-left: .4vw;margin-right: -2px;"><img src="img/prefil.png" width="40"
                                                                                                 height="40" style="display: inline-flex" alt="" /></li>
            <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href=""  style="padding: 0;"><img
                        src="img/noti.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
            <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="horario.jsp" style="padding: 0;"><img
                        src="img/horario.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
            
            
            <%   if(rol == "1"){ %>
            <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="misasesorias.jsp" style="padding: 0;"><img
                        src="img/misase.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
                  <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="crearasesoria.jsp" style="padding: 0;"><img
                        src="img/mas.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
                        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="AsesorPrincipal.jsp" style="padding: 0;"><img
                        src="img/home.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
            <li id="poliimg" style="float: right;margin-top: .4vw;display: flex;  margin-right:15.7vw;"><img
                    src="img/3 (2).png"></li>
           
                        <% }else if (rol =="0"){ %>
                        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="misasesorias2.jsp" style="padding: 0;"><img
                        src="img/misase.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="AsesorPrincipal.jsp" style="padding: 0;"><img
                        src="img/home.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
            <li id="poliimg" style="float: right;margin-top: .4vw;display: flex;  margin-right:18.7vw;"><img
                    src="img/3 (2).png"></li>
<%}%>         
           

        </ul>
        <div id="myDropdown" class="dropdown-content">
            <center><a href="perfil.jsp">Mi Perfil</a>
                <a href="cerradoconexito.jsp">Cerrar Sesión</a>
            </center>

        </div>
        <div class="dropfiltro-content" id="myDropdown1">
            <form id="buscar" action="Buscar" method="post">
                <div>
                    <p class="uni"> Unidad Academica:</p><select name="UnidadAcademica">
                        <option>Todos</option>
                        <%  List<UnidadesA> list = AccionesUsuario.UnidadesA();

                        for (UnidadesA c : list) {%>


                        <option><%=c.getNombre()%> </option>


                        <% } %>
                    </select>

                    <p class="uni"> Día:</p><select name="Dia">

                        <option>Todos</option>

                        <option>Lunes</option>
                        <option>Martes</option>
                        <option>Miercoles</option>
                        <option>Jueves</option>
                        <option>Viernes</option>
                        <option>Sabado</option>
                        <option>Domingo</option>

                    </select>
                    <p class="hora">Hora:</p>
                    <input type="time" name="horario">


                    <input type="checkbox" value="Asesor" id="asesor" onclick="uncheck()">
                    <p class="ase">Asesor</p>
                    <input type="checkbox" value="Asesor" id="asesorado" onclick="uncheck()">
                    <p class="ase">Asesoria</p>

                </div>
            </form>
        </div>


        <h1 class="titulo">Asesorías</h1>
        <%
            List<Asesorias> lis = AccionesUsuario.Asesorias(usuario);

            for (Asesorias c : lis) {

        %>

        <div class="asesorias"  style="display: block;">
            <img src="img/fotoperfil1.png" class="fotoperfil">
            <h1 class="materia"><%=c.getNombre()%></h1>
            <img src="img/borrar.png" class="borrar" id="<%=c.getId()%>" onclick="borrar(this)">
            <p class="nombre"><%=c.getNombreasesor()%></p>
            <div class="temasdiv">
                <p class="temas">
                   <%=c.getDescripcion()%>
                </p>
            </div>
            <img src="img/cupo.png" class="imgcupo">
            <p class="disp"><%=c.getCupomax()-c.getCupodis()%>/<%=c.getCupomax()%></p>
            <div class="horadiv">

                <table class="horario" >
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

                    <%
                        }
                    %>
                </table>



            </div>
            <form id="form1" method="post" action=""><% Usuario e = new Usuario();
            e.setBol(usuario); %> 
                <input type="text" name="idase" value="<%=c.getId() %>" style="visibility: hidden;" >
                <input type="text" name="usu" value="<%=e.getBol() %>" style="visibility: hidden;" >
                
                <table class="botonestabla">
                    <tr>
                        <td> <input type="submit"   formaction="vermas.jsp"  id="mas" value="Ver Más" class="botones2" ></td>
                        <td>  <input type="submit" id="ins"  formaction="inscribirasesoria"  value="Inscribir" class="botones"></td>
                    </tr>
                </table>

                
            </form>


        </div>
        <%
            }
        %>
    <center><a href="AsesorPrincipal.jsp"  style="  text-decoration: none"><h2 style="color: #74003E;">Cargar más</h2></a></center>



        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    </body>

</html>