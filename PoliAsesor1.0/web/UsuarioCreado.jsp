<%-- 
    Document   : RegistarUsuario
    Created on : 23/11/2021, 08:37:05 PM
    Author     : Administrador
--%>

<%@page import="Modelo.UnidadesA"%>
<%@page import="java.util.List"%>
<%@page import="Control.AccionesUsuario"%>
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
        if (privilegio == "1") {

        } else {
            response.sendRedirect("RegistrarAdmin.jsp");
        }
    } else {
        response.sendRedirect("Inicio.jsp");
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="shortcut icon" href="img/xxx.png">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/principal1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Usuario</title>
        <style>
            *{
                font-family: 'Roboto';
            }
        </style>
        <script>
            function uncheck() {
                var checkbox1 = document.getElementById("asesor");
                var checkbox2 = document.getElementById("asesorado");
                checkbox1.onclick = function () {
                    if (checkbox1.checked != false) {
                        checkbox2.checked = null;
                    }
                }

                checkbox2.onclick = function () {
                    if (checkbox2.checked != false) {
                        checkbox1.checked = null;
                    }
                }
            }

            function myFunction() {
                document.getElementById("myDropdown").classList.toggle("show");
            }
            function myFunction1() {
                document.getElementById("myDropdown1").classList.toggle("show");
            }

            // Close the dropdown menu if the user clicks outside of it
            window.onclick = function (event) {

                if (!event.target.matches('.dropbtn')) {
                    var dropdowns = document.getElementsByClassName("dropdown-content");
                    var i;
                    for (i = 0; i < dropdowns.length; i++) {
                        var openDropdown = dropdowns[i];
                        if (openDropdown.classList.contains('show')) {
                            openDropdown.classList.remove('show');
                        }
                    }
                }

            }




            //Validacion campos vacios






        </script>
    </head>




    <body style=" background-image: url(img/fondo.png);background-size: auto;background-repeat: no-repeat">
        <ul>


            <li> <a href="https://www.ipn.mx" style="padding: 0;"><img class="ipn" src="img/logo.png"></a> </li>



            <li style="float: right;" >

                <div class="dropdown" >
                    <button onclick="myFunction()" class="dropbtn"><%=usuario%> </button>
                </div>

            </li>



            <li style="float: right;margin-top: .7vw;margin-left: .4vw;margin-right: -2px;"><img src="img/prefil.png" width="40" height="40" style="display: inline-flex" alt=""/></li>

            <% if (privilegio == "1") { %>
            <a href="RegistrarUsuario.jsp">
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/CrearUsuarioselec.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a>
            <a href="asesoriasadmin.jsp">    
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/misase.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
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
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/misase.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a>   <a href="usuariosinactivos.jsp">    
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/usuin.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a><a href="Adminsver.jsp">    
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/adminsver.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a>
            <a href="Admin.jsp">    
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/Usuariosselec.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a>


            <%} %>



        </ul>


        <div id="myDropdown" class="dropdown-content" style="margin-top:66px">
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


                        <% }%>
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

    <center>
        <br><br><br>
        <h1 style="font-size: 15mm;
            font-family: 'Calibri';
            color: #74003E;">
            Registrar Usuario
        </h1>

    <form action="guardarAdmin" autocomplete="off" method="POST" style="font-size: 5mm;
              font-weight: 500;
              top: 7%;
              left: 45%">

            <input type="file" name="imgUsu" style="border: 2px solid #74003E;
                   background: #74003E;
                   border-radius: 20px; visibility: hidden"/>
            <br>
            <br>
            <label style="position: absolute;
                   left: 37%;"> Boleta: </label>
                   <input type="text" maxlength="11ch" id="boletaUsu" onkeypress="return (event.charCode >= 48 && event.charCode <= 57)" required name="bol_usu" 
                   style="border-bottom: 4px solid #74003E;
                   border-right: 0px solid white;
                   border-left: 0px solid white;
                   border-top: 0px solid white;
                   position: absolute;
                   left: 45%;
                   width: 18%;
                   font-size: 5mm;outline: none">
            <br>
            <br>

            <label style="position: absolute;
                   left: 37%" > Nombre(s):</label>
                   <input type="text" required id="nomUsuario" name="nomUsuario"
                   style="border-bottom: 4px solid #74003E;
                   border-right: 0px solid white;
                   border-left: 0px solid white;
                   border-top: 0px solid white;
                   position: absolute;
                   left: 45%;
                   width: 18%;
                   font-size: 5mm;outline: none">
            <br>
            <br>
            <label style="position: absolute;
                   left: 37%" > Apellidos:</label>
                   <input type="text" required id="apeUsuario" name="apeUsuario"
                   style="border-bottom: 4px solid #74003E;
                   border-right: 0px solid white;
                   border-left: 0px solid white;
                   border-top: 0px solid white;
                   position: absolute;
                   left: 45%;
                   width: 18%;
                   font-size: 5mm;outline: none">
            <br>
            <br>
            <label style="position: absolute;
                   left: 37%"> Contacto: </label>
                   <input type="email" required id="contUsuario" name="contUsuario" 
                   style="border-bottom: 4px solid #74003E;
                   border-right: 0px solid white;
                   border-left: 0px solid white;
                   border-top: 0px solid white;
                   position: absolute;
                   left: 45%;
                   width: 18%;
                   font-size: 5mm;outline: none">
            <br>
            <br>
            <br>
            <label> Unidad academica:</label>
            <select disabled id="cecyts" name="cecyts" style="background-color: #74003E">
                <option value="cecyt9"> CECyT No. 9 </option>
                <option value="cecyt1"> CECyT No. 1 </option>
                <option value="cecyt2"> CECyT No. 2 </option>
                <option value="cecyt3"> CECyT No. 3 </option>
                <option value="cecyt4"> CECyT No. 4 </option>
                <option value="cecyt5"> CECyT No. 5 </option>
                <option value="cecyt6"> CECyT No. 6 </option>
                <option value="cecyt7"> CECyT No. 7 </option>
                <option value="cecyt8"> CECyT No. 8 </option>
                <option value="cecyt9"> CECyT No. 9 </option>
                <option value="cecyt10"> CECyT No. 10 </option>
                <option value="cecyt11"> CECyT No. 11 </option>
                <option value="cecyt12"> CECyT No. 12 </option>
                <option value="cecyt13"> CECyT No. 13 </option>
                <option value="cecyt14"> CECyT No. 14 </option>
                <option value="cecyt15"> CECyT No. 15 </option>
                <option value="cecyt16"> CECyT No. 16 </option>
                <option value="cecyt17"> CECyT No. 17 </option>
                <option value="cecyt18"> CECyT No. 18 </option>
            </select>  
            <br>
            <br>
            <label> Rol: </label>
            <input type="radio" name="radioRol" value="1" style="background: #74003E;">Asesor
            <input type="radio" name="radioRol" value="0" style="background: #74003E;" > Asesorado   

            <input type="submit" value="Registrar" style="position: absolute;
                   top: 88%;
                   left: 46%;
                   border: 2px solid #74003E;
                   width: 8%;
                   height: 5%;
                   border-radius: 20px;
                   background: #74003E;
                   color: white;
                   font-size: 5mm">
        </form>

    </center>
  
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
      <script>
        Swal.fire(
                'Exito',
                'Usuario creado',
                'success',
                );
        function z() {

            if (event.charCode == 60 || event.charCode == 62) {
                Swal.fire(
                        'Error',
                        'Simbolo no permitido',
                        'warning',
                        )
                return (event.charCode !== 60 && event.charCode !== 62);
            }

        }
        window.onkeydown = function () {
            var myInput = document.getElementById('contUsuario');
            myInput.onpaste = function (e) {
                e.preventDefault();

            };

            myInput.oncopy = function (e) {
                e.preventDefault();

            };
            var myInput = document.getElementById('apeUsuario');
            myInput.onpaste = function (e) {
                e.preventDefault();

            };

            myInput.oncopy = function (e) {
                e.preventDefault();

            };
            var myInput = document.getElementById('nomUsuario');
            myInput.onpaste = function (e) {
                e.preventDefault();

            };

            myInput.oncopy = function (e) {
                e.preventDefault();

            };
            var myInput = document.getElementById('boletaUsu');
            myInput.onpaste = function (e) {
                e.preventDefault();

            };
        };

    </script>
</body>
</html>

