<%-- 
    Document   : cambiarcontra
    Created on : 25/11/2021, 11:02:56 PM
    Author     : Administrador
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<% HttpSession sesionCliente = request.getSession();
    String usuario = (String) session.getAttribute("usuario");
    String privilegio = (String) session.getAttribute("privilegio");
    String rol = (String) session.getAttribute("rol");
    int rola = Integer.parseInt(rol);
    System.out.println(usuario);
    System.out.println(privilegio);
    System.out.println(rol);

 

%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/perfil2.css">
    <title>Editar Perfil</title>
    <link rel="shortcut icon" href="img/incio.png">


</head>
<script src="JS/perfil2.js"></script>
<body>
    <ul>
        <li> <a href="https://www.ipn.mx"><img class="ipn" src="img/logo.png"></a></li>
        <li class="regresar">
            <a href="perfil.jsp" class="dropbtn" hreflang="Regresar a perfil">Cancelar</a>
        </li>
        <li class="imgpoli" id="imgpoli"><img src="img/3 (2).png"></li>
    </ul>

    <center>
        <div class="perfildiv">



            <div class="datos">
                <form action="cambiarcontra">
                    <input type="text" name="usu" value="<%=usuario%>" readonly style="visibility: hidden">
                    <h1>Cambiar Contraseña</h1><br>
                    <br><br>
                    <p class="passtxt">Contraseña Actual:&nbsp;</p> <input type="text" autocomplete="off" class="contraseña"
                        id="contraseact" name="contraseact" onkeypress="z()" minlength="7" maxlength="15" required >

                    <hr><br>
                    <p class="passtxt">Confirmar Contraseña:&nbsp; </p> <input type="password" autocomplete="off"
                    class="contraseña"onkeypress="z()" name="contrasecon" id="contrasecon" minlength="7" maxlength="15"  required>
                    <hr>
                    <br><img id="icon" src="img/ver.png" onclick="verpas()">
                    <p class="passtxt">Contraseña Nueva: &nbsp;</p> <input type="password" autocomplete="off"
                                                                           class="contraseña" onkeypress="z()" id="contrasenue" name="contrasenue" minlength="7" maxlength="15" required  >
                    <hr> <br> 
                    <center>
                        <table>
                            <tr>
                                <td> <a href="perfil.jsp"><input type="button" class="contracance"
                                            value="Cancelar"></a></td>
                                <td> <input type="submit" class="contracam" value="Confirmar"></td>

                            </tr>
                        </table>
                    </center>


                </form>

            </div>



        </div>
    </center>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</body>

</html>