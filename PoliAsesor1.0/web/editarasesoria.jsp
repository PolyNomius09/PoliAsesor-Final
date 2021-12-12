<%-- 
    Document   : editarasesoria
    Created on : 22/11/2021, 12:48:54 AM
    Author     : Administrador
--%>

<%@page import="Modelo.AsesoriaD"%>
<%@page import="Modelo.AsesoriaD"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="Control.AccionesUsuario"%>
<%@page import="Control.AccionesUsuario"%>
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
        if (privilegio == "2") {
            if (rol == "1") {

            } else {
                response.sendRedirect("Inicio.jsp");
            }
        } else {
            response.sendRedirect("Inicio.jsp");
        }
    } else {
        response.sendRedirect("Inicio.jsp");
    }
    int id = Integer.parseInt(request.getParameter("idase"));

%>
<!DOCTYPE html>
<!DOCTYPE html>

<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="shortcut icon" href="img/xxx.png">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/modificarAsesoria.css">



        <title>Crear Asesoria</title>

    </head>

    <body style=" background-image: url(img/fondo.png);">
        <ul>

            <li> <a href="https://www.ipn.mx" style="padding: 0;"><img class="ipn" src="img/logo.png"></a></li>




            <li style="float: right;">
                <div class="dropdown">
                    <button onclick="myFunction()" class="dropbtn">2019090388</button>

                </div>

            </li>

        </li>

        <li style="float: right;margin-top: .7vw;margin-left: .4vw;margin-right: -2px;"><img src="img/prefil.png" width="40"
                                                                                             height="40" style="display: inline-flex" alt="" /></li>
        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="" style="padding: 0;"><img
                    src="img/noti.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="horario.jsp" style="padding: 0;"><img
                    src="img/horario.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="misasesorias.jsp" style="padding: 0;"><img
                    src="img/misaseblaco.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="crearasesoria.jsp" style="padding: 0;"><img
                    src="img/mas.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>

        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="AsesorPrincipal.jsp" style="padding: 0;"><img
                    src="img/homeblaco.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
        <li id="poliimg" style="float: right;margin-top: .4vw;display: flex;  margin-right:16vw;"><img
                src="img/3 (2).png"></li>

    </ul>
    <form method="Post" id="form1" action="EditarAsesoria">
        <%  List<Asesorias> datos = AccionesUsuario.Obtenerdatosase(id, usuario);

            for (Asesorias a : datos) {%>
        <div class="DescripcionAsesoria">
            <div class="Nombre">
                <strong style="color: #74003E;">Nombre:</strong>
                <input type="text" name="nombre" required id="nombre" class="nombrein" value = "<%=a.getNombre()%>" cols="60" rows="2" style="height: 65%; "
                       autocomplete="off"onkeypress="return z()" maxlength="30ch"></textarea>
            </div>

            <div class="Descripcion">
                <strong style="color: #74003E;">Descripción:</strong>
                <textarea name="descripcion"onkeypress="return z()" maxlength="90ch" required class="descripcion" 
                          id="descripcion" 
                          cols="60" rows="2" style="height: 65%; "
                          > <%=a.getDescripcion()%></textarea>
            </div>

            <div class="Temas">
                <strong style="color: #74003E;">Temas:</strong>
                <textarea name="temas"onkeypress="return z()" maxlength="50ch" required id="temas"
                          cols="25" rows="4" placeholder="Integrales Indefinidas, Cambio de variable,
                          Sustitucion Trigonometrica" ><%=a.getTemas()%></textarea>
            </div>

            <div class="Zoom">
                <strong style="color: #74003E;">ID y Contraseña Aula:</strong>
                <textarea name="zoom" onkeypress="return z()" maxlength="40ch"
                          required id="zoom" cols="25" rows="2"
                          placeholder="Zoom/Teams: 8884 965 643 &nbsp; &nbsp;&nbsp; ID:2965df84"  ><%=a.getAula()%></textarea>
            </div>

            <div class="materiales">
                <strong style="color: #74003E;"> Material: </strong>
                <textarea name="material" onkeypress="return z()" maxlength="50ch" required id="material"
                          cols="31" rows="2" placeholder="Calculadora Cientifica, Cuaderno" ><%=a.getMaterial()%></textarea>
            </div>

            <div class="CupoMax">
                <strong style="color: #74003E;"> Cupo máximo de alumnos: </strong>
                <input type="number"  required readonly id="cupMax" name="cupMax" size="1" max="99" value="<%=a.getCupomax()%>" min="1" onkeypress="return (event.charCode == 00);">
            </div>

            <div class="CupoDis">
                <strong style="color: #74003E;"> Cupo disponible de alumnos: </strong>
                <input type="number" required readonly id="CupoDis" name="CupoDis"   size="1" max="99" min="1" value="<%=a.getCupodis()%>" readonly >
            </div>

            <div class="horario">
                <strong style="color: #74003E;" > Horarios Completos: </strong>
                <br>

                <br>  
                Lunes: <input type="time" style="background-color: #74003E;" id="luneshorain" 
                              <%  List<AsesoriaD> datosdl = AccionesUsuario.Obtenerdatosased(id, 1);
                                  for (AsesoriaD c : datosdl) {

                              %>value="<%=c.getHorainicio()%>"<%}%> name="luneshorain"> - 
                <input type="time" readonly="true"  style="background-color: #74003E;" id="luneshorafin" 
                       <%  List<AsesoriaD> datosdlf = AccionesUsuario.Obtenerdatosased(id, 1);
                           for (AsesoriaD c : datosdlf) {

                       %>value="<%=c.getHorafin()%>"<% }%> name="luneshorafin">
                <br>
                Martes: <input type="time" style="background-color: #74003E;" id="marteshorain" 
                               <%  List<AsesoriaD> datosdm = AccionesUsuario.Obtenerdatosased(id, 2);
                                   for (AsesoriaD c : datosdm) {

                               %>value="<%=c.getHorainicio()%>"<%}%> name="marteshorain"> - 
                <input type="time" readonly="true"  style="background-color: #74003E;" id="marteshorafin" 
                       <%  List<AsesoriaD> datosdmf = AccionesUsuario.Obtenerdatosased(id, 2);
                           for (AsesoriaD c : datosdmf) {

                       %>value="<%=c.getHorafin()%>"<% }%> name="marteshorafin"><br>
                Miercoles: <input type="time" style="background-color: #74003E;" id="miercoleshorain" 
                                  <%  List<AsesoriaD> datosdmi = AccionesUsuario.Obtenerdatosased(id, 3);
                                      for (AsesoriaD c : datosdmi) {

                                  %>value="<%=c.getHorainicio()%>"<%}%>
                                  name="miercoleshorain"> - <input type="time"
                                  <%  List<AsesoriaD> datosdmif = AccionesUsuario.Obtenerdatosased(id, 3);
                                      for (AsesoriaD c : datosdmif) {

                                  %>value="<%=c.getHorafin()%>"<% }%>
                                  readonly="true" style="background-color: #74003E;" id="miercoleshorafin" name="miercoleshorafin">
                <br>

                Jueves: <input <%  List<AsesoriaD> datosdj = AccionesUsuario.Obtenerdatosased(id, 4);
                    for (AsesoriaD c : datosdj) {

                    %>value="<%=c.getHorainicio()%>"<%}%> type="time" style="background-color: #74003E;"
                    id="jueveshorain" name="jueveshorain"> - <input type="time" readonly="true" 
                    <%  List<AsesoriaD> datosdjf = AccionesUsuario.Obtenerdatosased(id, 4);
                        for (AsesoriaD c : datosdjf) {

                    %>value="<%=c.getHorafin()%>"<%}%>
                    style="background-color: #74003E;" id="jueveshorafin" name="jueveshorafin">
                <br>
                Viernes: <input  <%  List<AsesoriaD> datosdv = AccionesUsuario.Obtenerdatosased(id, 5);
                    for (AsesoriaD c : datosdv) {

                    %>value="<%=c.getHorainicio()%>"<%}%> type="time" style="background-color: #74003E;" id="vierneshorain" name="vierneshorain">
                - <input    <%  List<AsesoriaD> datosdvf = AccionesUsuario.Obtenerdatosased(id, 5);
                        for (AsesoriaD c : datosdvf) {

                    %>value="<%=c.getHorafin()%>"<%}%> type="time" readonly="true" style="background-color: #74003E;" id="vierneshorafin" name="vierneshorafin">
                <br>
                Sabado: <input  <%  List<AsesoriaD> datosds = AccionesUsuario.Obtenerdatosased(id, 6);
                    for (AsesoriaD c : datosds) {

                    %>value="<%=c.getHorainicio()%>"<%}%> type="time" style="background-color: #74003E;" id="sabhorain" name="sabhorain"> - 
                <input    <%  List<AsesoriaD> datosdsf = AccionesUsuario.Obtenerdatosased(id, 6);
                        for (AsesoriaD c : datosdsf) {

                    %>value="<%=c.getHorafin()%>"<%}%> type="time" readonly="true" style="background-color: #74003E;" id="sabhorafin" name="sabhorafin">
                <br>
                Domingo: <input  <%  List<AsesoriaD> datosdd= AccionesUsuario.Obtenerdatosased(id, 7);
                    for (AsesoriaD c : datosdd) {

                    %>value="<%=c.getHorainicio()%>"<%}%> type="time" style="background-color: #74003E;" id="domhorain" name="domhorain"> - 
                <input    <%  List<AsesoriaD> datosddf = AccionesUsuario.Obtenerdatosased(id, 7);
                        for (AsesoriaD c : datosddf) {

                    %>value="<%=c.getHorafin()%>"<%}%> type="time" readonly="true" style="background-color: #74003E;" id="domhorafin" name="domhorafin">

            </div>

                    <input type="text" class="idase" name="idase" style="visibility: hidden;" value= "<%=a.getId() %>">
     

            <table>
                <tr>
                    <td> <input type="submit"   class="borrar" id="botonEdicion" value="Editar"></td>
                    <td><input type="reset" onclick ="history.back();" class="edicion" id="botonborrar" value="Cancelar"> </td>
                </tr>
                <tr
                    ><td >
                        <input type="button" onclick="return borrartodo(this)" class="eliminar" id="botonEliminar" value="Borrar"></td></tr>

            </table>






        </div>
        <%}%>  
    </form>


    <div id="myDropdown" class="dropdown-content">
        <center><a href="perfil.jsp">Mi Perfil</a>
            <a href="cerradoconexito.jsp">Cerrar Sesión</a>
        </center>

    </div>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
    <script src="JS/AgregarAsesoria.js"></script>
    <script>
    
     window.onkeydown = function(){
    var myInput = document.getElementById('descripcion');
    myInput.onpaste = function (e) {
        e.preventDefault();

    };

    myInput.oncopy = function (e) {
        e.preventDefault();

    };
    var myInput = document.getElementById('temas');
    myInput.onpaste = function (e) {
        e.preventDefault();

    };

    myInput.oncopy = function (e) {
        e.preventDefault();

    };
    var myInput = document.getElementById('zoom');
    myInput.onpaste = function (e) {
        e.preventDefault();

    };

    myInput.oncopy = function (e) {
        e.preventDefault();

    };
    var myInput = document.getElementById('material');
    myInput.onpaste = function (e) {
        e.preventDefault();

    };

    myInput.oncopy = function (e) {
        e.preventDefault();

    };
    var myInput = document.getElementById('nombre');
    myInput.onpaste = function (e) {
        e.preventDefault();

    };

    myInput.oncopy = function (e) {
        e.preventDefault();

    };
    var myInput = document.getElementById('cupMax');
    myInput.onpaste = function (e) {
        e.preventDefault();

    };

    myInput.oncopy = function (e) {
        e.preventDefault();

    };
    };
    window.onload() = function (){
        
    if (window.screen.width < 1200) {
        var img = document.getElementById("poliimg");
        img.style.visibility = "hidden";
        img.style.marginRight = "0vw";

    };




};</script>
</body>

</html>
