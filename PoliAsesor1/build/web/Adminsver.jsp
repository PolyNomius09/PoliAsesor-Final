<%-- 
    Document   : Admin
    Created on : 23/11/2021, 07:36:01 PM
    Author     : Administrador
--%>


<%@page import="Modelo.UnidadesA"%>
<%@page import="Modelo.Usuario"%>
<%@page import ="java.util.List"%>
<%@page import ="Modelo.MUsuario"%>
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
       if(privilegio == "1" || privilegio =="0"){
         
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
        <title>Consultar Admins</title>
        <link rel="shortcut icon" href="img/xxx.png">
        <link rel="stylesheet" href="css/principal1.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    
        <script>
            
                function uncheck(){
                    var checkbox1 = document.getElementById("asesor");
                    var checkbox2 = document.getElementById("asesorado");
                    checkbox1.onclick = function(){
                    if(checkbox1.checked != false){
                       checkbox2.checked =null;
                    }
                }

                checkbox2.onclick = function(){
                    if(checkbox2.checked != false){
                        checkbox1.checked=null;
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
                window.onclick = function(event) {

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
                
                
                




        </script>
         <script src="JS/principal.js"></script>
        
    </head>
    
    <body >
    
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

             <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/prefil.png" width="40" height="40" style="display: inline-flex" alt=""/></li>

            <% if (privilegio == "1"){ %>
            <a href="RegistrarUsuario.jsp">
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/CrearUsuario.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a><a href="usuariosinactivos.jsp">    
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/usuin.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a>
                 <a href="asesoriasadmin.jsp">    
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/misase.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a>
            <a href="Admin.jsp">    
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/Usuariosselec.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a>
            
            <%}  if (privilegio == "0"){ %>
            <a href="RegistrarAdmin.jsp">
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/CrearUsuario.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a>
               
            
            <a href="asesoriasadmin.jsp">    
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/misase.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a><a href="usuariosinactivos.jsp">    
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/usuin.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a><a href="Adminsver.jsp">    
            <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/adminsverselec.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
        </a><a href="Admin.jsp">    
                <li style="float: right;margin-top: .7vw;margin-left: .4vw;"><img src="img/Usuarios.png" width="40" height="40" style="display: inline-flex" alt=""/></li>
            </a>
            
            
            <%} %>

           
            
            
            
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

                    
                   
                    


                    <input type="checkbox" value="Asesor" id="asesor" onclick="uncheck()">
                    <p class="ase">Asesor</p>
                    <input type="checkbox" value="Asesor" id="asesorado" onclick="uncheck()">
                    <p class="ase">Asesorado</p>

                </div>
            </form>
        </div>


    
        
        <div style="font-family: 'Calibri light'; 
             color: #74003E; 
             font-size: 10mm;
             font-weight: 800;
             position: absolute;
             margin-top: 90px;
             left: 40%"> 
            Lista de Administradores
        </div>
       
        <div style="position: absolute;
                    left: 0%;
                    top: 25%;">
            <table  border-spacing =" 15" style="font-family: 'Roboto' ; text-align: center;" >
                <thead>
                    <tr>
                        <th style="background: #74003E; 
                            color: white; 
                            border-radius: 20px;">Boleta</th>
                        
                        <th style="background: #74003E; 
                            color: white; 
                            border-radius: 20px;">Password</th>
                        
                        
                        <th style="background: #74003E; 
                            color: white; 
                            border-radius: 20px;">Nombre</th>
                        
                        <th style="background: #74003E; 
                            color: white; 
                            border-radius: 20px;">Apellido</th>
                        
                        <th style="background: #74003E; 
                            color: white; 
                            border-radius: 20px;">Contacto</th>
                        
                        <th style="background: #74003E; 
                            color: white; 
                            border-radius: 20px;">Unidad Academica</th>
                        
                        <th style="background: #74003E; 
                            color: white; 
                            border-radius: 20px;
                            width: 1%">Rol</th>
                        
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
        
        
        <% 
            List<MUsuario> lista = AccionesUsuario.ConsultarUsuariosadm(privilegio);
                
            for(MUsuario e : lista){
                    
        %>
        
        <tr>
            <td> <%=e.getBol_usu()%> </td>
            <td> <%=e.getPass_usu()%> </td>
            <td> <%=e.getNom_usu()%> </td>
            <td> <%=e.getApe_usu()%> </td>
            <td> <%=e.getCon_usu()%> </td>
            <td> CECyT No. 9 </td>
            <td><%=e.getRol() %></td>
            
            <% System.out.println(e.getRol()); %>
            
            
            
            <td>
                <a href="desactivarUsuario?bol_usu=<%=e.getBol_usu()%>" 
                              style="color: white;
                              text-decoration: none;" >
                    <button class="as" style="margin-left: -2vw">
                        Desactivar
                    </button>
                </a>     
            </td>
        </tr>   
        
        <%
        }
        %>
        
                </tbody>
            </table>
               <center><h2 style="color: #74003E">No hay mas Administradores</h2></center>
        </div>
        
    </body>
</html>
