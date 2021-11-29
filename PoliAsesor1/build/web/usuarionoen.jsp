
<!DOCTYPE html>
<html>

    <head>
        <title>Recuperar Contraseña</title>
        <link rel="shortcut icon" href="img/incio.png">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <link rel="stylesheet" href="css/contraol.css">
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>

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
                
                <form name="formulario" method="post" action="correo">



                    <input  type="text" name="usu" id="usu" autocomplete="off" maxlength="12"  placeholder="Usuario" required
                            onkeypress="return (event.charCode >= 48 && event.charCode <= 57)">
                    <br>

                    <br>
                    <div >
                        <input   type="email" id="pass" placeholder="Correo electronico vinculado a la cuenta"  name="cont" autocomplete="off" required
                                 onkeypress="return (event.charCode !== 60 && event.charCode !== 62)">

                        
                        <br>
                       
                    <br>
                   <br>
            
                    <input type="submit" id="ini" value="Recuperar Contraseña" class="button">
                    <br>
                    <br>
                    </div>
                </form>
            </center>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
                            Swal.fire(
                                    'Uusario no Encontrado',
                                    'los datos ingresados no pertenecen a ninguno de nuestros usuarios',
                                    'error',
                                    );
        </script>

    </body>

</html>