<%-- 
    Document   : Inicio
    Created on : 20/11/2021, 12:00:31 AM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<% session.invalidate();%>

<!DOCTYPE html>
<html>

    <head>
        <title>Inicio</title>
        <link rel="shortcut icon" href="img/incio.png">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <link rel="stylesheet" href="css/inicio.css">
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
            function submitUserForm() {
                    var response = grecaptcha.getResponse();
                    if (response.length == 0) {
                      Swal.fire(
                                    'Alerta',
                                    'Captcha no verificado',
                                    'warning',
                                    );
                            return false;
                    }
                    return true;
            }
 
          

            window.onkeydown = function () {

                var myInput = document.getElementById('usu');
                myInput.onpaste = function (e) {
                    e.preventDefault();
                };
                myInput.oncopy = function (e) {
                    e.preventDefault();
                };
                var myInput = document.getElementById('pass');
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

                }
                ;




            }
            ;
            function verpas() {
                var x = document.getElementById("pass");
                var img = document.getElementById("icon");
                if (x.type === "password") {
                    x.type = "text";
                    img.src = "img/ver (1).png"

                } else {
                    x.type = "password";
                    img.src = "img/ver.png"
                }
            }

            document.addEventListener('contextmenu', event => event.preventDefault());
        </script>
    </head>

    <body style=" background-image: url(img/fondo.png);background-size: auto;background-repeat: no-repeat">
        <ul>
            <li>
                <img class="ipn" src="img/logo.png">
            </li>

            <li style="float: right;">
                <a href="Inicio.jsp">Iniciar Sesíon</a>
            </li>
            <li class="infoimg" style="float: right;">
                <a href="info.html"><img src="img/info.png"></a>

            </li>

        </ul>
        <div class="inicio">
            <center><img class="poliasesor" src="img/Poliasesor.png">
                <form name="formulario" method="post" onsubmit="return submitUserForm();" action="InicioSesion">



                    <input  type="text" name="usu" id="usu" autocomplete="off" maxlength="12"  placeholder="Usuario" required
                            onkeypress="return (event.charCode >= 48 && event.charCode <= 57)">
                    <br>

                    <br>
                    <div >
                        <input   type="password" id="pass" placeholder="Contraseña" maxlength="15" name="cont" autocomplete="off" required
                                 onkeypress="return (event.charCode !== 60 && event.charCode !== 62)">

                        <img id="icon" src="img/ver.png" onclick="verpas()">
                        <br>
                        <a href="olvdcontrasena.html" class="contra">Olvide mi contraseña</a></div>
                    <br>
                    <div class="g-recaptcha" name="captcha" data-sitekey="6LebTMUcAAAAACL1I8MxkfYOuHisI1-XwqQPg8k7" ></div>
                    <br>
                    <a href="index.html"><input type="button" value="Cancelar" class="button"></a>
                    <input type="submit" id="ini" value="Iniciar Sesion" class="button">
                    <br>
                    <br>
                </form>
            </center>
        </div>

    </body>

</html>