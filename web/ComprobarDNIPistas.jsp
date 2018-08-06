<%-- 
    Document   : ComprobarDNI
    Created on : 23-jul-2018, 12:17:01
    Author     : Veron
--%>

<%@page import="java.util.HashSet"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="clases.login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% if (session.getAttribute("usuario") == null) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Sistema de gestion de un centro hipico</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="js/bootstrap/bootstrap-4.0.0.min.css" rel="stylesheet">
        <link href="css/bootstrap-4.0.0.css" rel="stylesheet">
        <link href="js/jquery-ui/jquery-ui.min.css" rel="stylesheet"/>
        <link href="js/jquery-ui/jquery-ui-1.12.1.css" rel="stylesheet"/>
        <link href="js/dataTables/jquery.dataTables.min.css" rel="stylesheet"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

        <script src="js/bootstrap/jquery-3.2.1.min.js"></script>
        <script src="js/dataTables/jquery.dataTables.min.js"></script>
        <script src="js/bootstrap-carrusel/jquery-3.3.1.js"></script>
        <script src="js/bootstrap/popper-1.12.9.min.js"></script>
        <script src="js/bootstrap/bootstrap-4.0.0.js"></script>
        <script src="js/bootstrap-carrusel/bootstrap-3.3.7.min.js"></script>
        <script src="js/bootstrap-datepicker/2.0.0/js/datepicker-es.js"></script>
        <script src="js/jquery-ui/jquery-ui-1.12.1.js"></script>
        <script src="js/jquery-ui/jquery-ui-1.12.4.js"></script>
        <script src="js/script.js"></script>
        <script>
            $(function () {
                $.datepicker.setDefaults($.datepicker.regional["es"]);
                $("#datepicker").datepicker({
                    firstDay: 1,
                    dateFormat: 'yy-mm-dd'
                });
            });
        </script>
    </head>
    <body>   
    <center><span class="ir-arriba icon-arrow-up2" style="z-index: 100;"><img src="Images/flechaArriba.png" alt="Flecha Arriba"width="35" height="35"></img></span></center>
    <nav class="navbar navbar-expand-lg fixed-top text-uppercase" id="mainNav1">  
        <img src="Images/Logo.png" alt="Logo" width="400" height="60" style="float:left">
        <div class="container">
            <center><div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="./IndexClientes.jsp">Control</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="<s:url action='Clases'/>">Clases</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="<s:url action='Caballos'/>">Caballos</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="<s:url action='Instalaciones'/>">Instalaciones</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="<s:url action='Profesores'/>">Profesores</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="<s:url action='Servicios'/>">Servicios</a>
                        </li>
                    </ul>
                </div></center>
        </div>
        <a href="<s:url action="MostrarEditarCliente"/>?cli.id.usuario=<%= session.getAttribute("usuario")%>"><img src="Images/perfil.png" alt="portada" width="40" height="40"></a>              
            <% if (session.getAttribute("usuario") != null) {%>
        <center><a href="<s:url action="cerrarSesion"/>"><img alt="Salir" src="Images/Logout.PNG" width="60" height="60"/></a></center>
                <%}%>    
    </nav>
        <br><br><br><br><br><br><br><br><br>
    <center>    <s:iterator value="cli">
            <h1><b>¿Es Correcto el siguiente DNI?</b></h1>
            <h2><b><s:property value="id.dni"/></b></h2></center>
            <br>
        <center><div style="width: 250px">
                <center><div style="width: 30%; float: left;"><b><a href="<s:url action="MostrarPistasReservadasCliente"/>?pistCli.id.cliente=<s:property value="id.dni"/>"><img src="Images/aceptar.png" alt="nuevo" width="80" height="80"></a></b></div></center>
                <center><div style="width: 30%; float: right;"><b><a href="<s:url action="Instalaciones"/>"><img src="Images/cancelar.png" alt="nuevo" width="80" height="80"></a></b></div></center>
            </div></center> 
        </s:iterator>
    <br><br><br><br><br><br><br><br><br><br><br>    
    <div id="footer">
        <div id="container" style="color:white;">
            <small>Nuestras Redes Sociales</small>
            <a href="https://www.facebook.com/"><img src="Images/Facebook.PNG" alt="Facebook" width="30" height="30" ></a>
            <a href="https://twitter.com/?lang=es"><img src="Images/Twitter.PNG" alt="Twitter" width="30" height="30"></a>
            <a href="https://www.instagram.com/"><img src="Images/Instagram.png" alt="Instagram" width="30" height="30"></a>
        </div>
        <div id="annex" style="color:white;">
            <span>© 2018 Centro Hípico</span>
        </div>
    </div>
</body>
</html>
