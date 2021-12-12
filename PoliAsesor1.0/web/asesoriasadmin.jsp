<%-- 
    Document   : asesoriasadmin
    Created on : 24/11/2021, 12:17:29 AM
    Author     : Administrador
--%>
<%@page import="Modelo.UnidadesA"%>
<%@page import="Modelo.AsesoriaD"%>
<%@page import="Control.AccionesUsuario"%>
<%@page import="Control.AccionesUsuario"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Asesorias"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<% HttpSession sesionCliente = request.getSession();
    String usuario = (String) session.getAttribute("usuario");
    String privilegio = (String) session.getAttribute("privilegio");
    String rol = (String) session.getAttribute("rol");
    System.out.println(usuario);
    System.out.println(privilegio);
    System.out.println(rol);

    if (usuario != null) {
        if (privilegio == "0" || privilegio == "1") {

        } else {
            response.sendRedirect("Inicio.jsp");
        }
    } else {
        response.sendRedirect("Inicio.jsp");
    }

%>
<!DOCTYPE html>
<html lang="en">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="img/xxx.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/principal1.css">

    <title>Asesorias</title>
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
        

        <li style="float: right;" >

            <div class="dropdown" >
                <button onclick="myFunction()" class="dropbtn"><%=usuario%> </button>
            </div>

        </li>



        <li style="float: right;margin-top: .7vw;margin-left: .4vw;margin-right: -2px;"><img src="img/prefil.png" width="40" height="40" style="display: inline-flex" alt=""/></li>

        <% if (privilegio == "1") { %>
            <a href="RegistrarUsuario.jsp">
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/CrearUsuario.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a>
            <a href="asesoriasadmin.jsp">    
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/misaseblaco.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a>   <a href="usuariosinactivos.jsp">    
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/usuin.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a>
            <a href="Admin.jsp">    
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/Usuarios.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a>

            <%}
                 if (privilegio == "0") { %>
            <a href="RegistrarAdmin.jsp">
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/CrearUsuario.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a>


            <a href="asesoriasadmin.jsp">    
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/misaseblaco.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a>   <a href="usuariosinactivos.jsp">    
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/usuin.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a><a href="Adminsver.jsp">    
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/adminsver.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a>
            <a href="Admin.jsp">    
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/Usuarios.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a>


            <%} %>




    </ul>





        <div id="myDropdown" class="dropdown-content" style="margin-top:69px">
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

<br><br><br><center><h1 style="color:#74003E;">Asesorias</h1></center>
<%
    List<Asesorias> lis = AccionesUsuario.Asesoriasa(usuario);

    for (Asesorias c : lis) {

%>

<div class="asesorias" id="ase" style="display: block;">
 <img src="img/fotoperfil1.png" class="fotoperfil">
    <h1 class="materia"><%=c.getNombre()%></h1>
 <p class="nombre"><%=c.getNombreasesor()%></p>
    <div class="temasdiv">
        <p class="temas">
            <%=c.getDescripcion()%>
        </p>
    </div>
    <img src="img/cupo.png" class="imgcupo">
    <p class="disp"><%=c.getCupomax() - c.getCupodis()%>/<%=c.getCupomax()%></p>
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
            <% }%>
        </table>
    </div>
    <form id="form1" action="borrarasesoria">
        <input type="number" name="idase" value="<%=c.getId()%>" style="visibility: hidden;" >
        <table style="   margin-left: 57vw;
               margin-top: 1.7vw;">
            <tr>
                <td> <input type="submit"  value="Eliminar" class="asd"></td>
            </tr>
            <style>
                .asd{
                    border: 2px #74003E solid;
                    background: none;
                    font-family: 'Roboto';
                    border-radius: 7px;
                    font-size: 1.5vw;
                    padding-left: 1vw;
                    padding-right: 1vw;
                    font-weight: 400;
                    color: #74003E;

                    display: flex;}
                .asd:hover{
                    color: white;
                    background: #74003E;
                    cursor: pointer;
                }
            </style>
        </table>


    </form>


</div>
<% }%>

<center><a href="asesoriasadmin.jsp"  style="  text-decoration: none"><h2 style="color: #74003E;">Cargar más</h2></a></center>







<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
<script src="JS/principal.js"></script>

</body>
</html>