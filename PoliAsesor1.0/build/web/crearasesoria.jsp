<%-- 
    Document   : crearasesoria
    Created on : 20/11/2021, 01:20:32 PM
    Author     : Administrador
--%>

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
           if(rol == "1"){
               
           }else{
           response.sendRedirect("AsesorPrincipal.jsp");
           }
       }else{
           response.sendRedirect("Inicio.jsp");
       }
    }else{
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
    <link rel="stylesheet" href="css/modificarAsesoria.css">
    
    
    
    <title>Crear Asesoria</title>
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

</head>

    <script src="JS/AgregarAsesoria.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
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
          src="img/misase.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
          <%   if(rol == "1"){ %>
                  <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="crearasesoria.jsp" style="padding: 0;"><img
                        src="img/masblaco.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
                        <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="AsesorPrincipal.jsp" style="padding: 0;"><img
                        src="img/homeblaco.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
            <li id="poliimg" style="float: right;margin-top: .4vw;display: flex;  margin-right:15.7vw;"><img
                    src="img/3 (2).png"></li>
           
                        <% }else if (rol =="2"){ %>
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><a href="AsesorPrincipal.jsp" style="padding: 0;"><img
                        src="img/home.png" width="40" height="40" style="display: inline-flex" alt="" /></a></li>
            <li id="poliimg" style="float: right;margin-top: .4vw;display: flex;  margin-right:18.7vw;"><img
                    src="img/3 (2).png"></li>
<%}%>         

    </ul>
    <form method="Post" id="form1" action="crearAsesoria">
        
        <div class="DescripcionAsesoria">
            <div class="Nombre">
                <strong style="color: #74003E;">Nombre:</strong>
                <input type="text" name="nombre" required id="nombre" class="nombrein" placeholder="Calculo Integral (Recueda no utilizar acentos en ningun campo)" cols="60" rows="2" style="height: 65%; "
                     autocomplete="off"onkeypress="return z()" maxlength="30ch"></textarea>
            </div>

            <div class="Descripcion">
                <strong style="color: #74003E;">Descripción:</strong>
                <textarea name="descripcion"onkeypress="return z()" maxlength="90ch" required class="descripcion" id="descripcion" placeholder="En esta Asesoria solo se resolveran dudas (mas no se dara la teoria) con respecto a los temas inidcados." cols="60" rows="2" style="height: 65%; "
                    ></textarea>
            </div>

            <div class="Temas">
                <strong style="color: #74003E;">Temas:</strong>
                <textarea name="temas"onkeypress="return z()" maxlength="50ch" required id="temas" cols="25" rows="4" placeholder="Integrales Indefinidas, Cambio de variable, Sustitucion Trigonometrica" ></textarea>
            </div>

            <div class="Zoom">
                <strong style="color: #74003E;">ID y Contraseña Aula:</strong>
                <textarea name="zoom" onkeypress="return z()" maxlength="40ch" required id="zoom" cols="25" rows="2" placeholder="Zoom/Teams: 8884 965 643 &nbsp; &nbsp;&nbsp; ID:2965df84"  ></textarea>
            </div>

            <div class="materiales">
                <strong style="color: #74003E;"> Material: </strong>
                <textarea name="material" onkeypress="return z()" maxlength="50ch" required id="material" cols="31" rows="2" placeholder="Calculadora Cientifica, Cuaderno" ></textarea>
            </div>

            <div class="CupoMax">
                <strong style="color: #74003E;"> Cupo máximo de alumnos: </strong>
                <input type="number"  required id="cupMax" name="cupMax" size="1" max="99" value="1" min="1" onkeypress="return (event.charCode == 00);">
            </div>

            <div class="CupoDis">
                <strong style="color: #74003E;"> Cupo disponible de alumnos: </strong>
                <input type="number" required id="CupoDis" name="CupoDis"   size="1" max="99" min="1" value="1" readonly >
            </div>

            <div class="horario">
                <strong style="color: #74003E;" > Horarios Completos: </strong>
                <br>
                

                <br>
                Lunes: <input type="time" style="background-color: #74003E;" id="luneshorain" name="luneshorain"> - <input type="time" readonly="true"  style="background-color: #74003E;" id="luneshorafin" name="luneshorafin">
                <br>
                Martes: <input type="time" style="background-color: #74003E;" id="marteshorain" name="marteshorain" > - <input type="time" readonly="true" style="background-color: #74003E;" id="marteshorafin" name="marteshorafin">
                <br>
                Miercoles: <input type="time" style="background-color: #74003E;" id="miercoleshorain" name="miercoleshorain"> - <input type="time" readonly="true" style="background-color: #74003E;" id="miercoleshorafin" name="miercoleshorafin">
                <br>
                Jueves: <input type="time" style="background-color: #74003E;" id="jueveshorain" name="jueveshorain"> - <input type="time" readonly="true" style="background-color: #74003E;" id="jueveshorafin" name="jueveshorafin">
                <br>
                Viernes: <input type="time" style="background-color: #74003E;" id="vierneshorain" name="vierneshorain"> - <input type="time" readonly="true" style="background-color: #74003E;" id="vierneshorafin" name="vierneshorafin">
                <br>
                Sabado: <input type="time" style="background-color: #74003E;" id="sabhorain" name="sabhorain"> - <input type="time" readonly="true" style="background-color: #74003E;" id="sabhorafin" name="sabhorafin">
                <br>
                Domingo: <input type="time" style="background-color: #74003E;" id="domhorain" name="domhorain"> - <input type="time" readonly="true" style="background-color: #74003E;" id="domhorafin" name="domhorafin">

            </div>

           

            <table>
                <tr>
                    <td> <input type="submit"   class="borrar" id="botonEdicion" value="Crear"></td>
                <td><input type="reset" class="edicion" id="botonborrar" value="Cancelar"> </td>
                </tr>
            </table>
           
           

           
            
    
    </div>
</form>


    <div id="myDropdown" class="dropdown-content">
        <center><a href="perfil.jsp">Mi Perfil</a>
            <a href="cerradoconexito.jsp">Cerrar Sesión</a>
        </center>

    </div>
    
</body>

</html>