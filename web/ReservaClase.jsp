<%-- 
    Document   : ReservaClase
    Created on : 12-jul-2018, 17:13:27
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
        <link href="js/dataTables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css"/>
        <link href="js/dataTables/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

        <script src="js/dataTables/jquery-1.12.4.js"></script>
        <script src="js/bootstrap/bootstrap-4.0.0.js"></script>
        <script src="js/bootstrap-carrusel/bootstrap-3.3.7.min.js"></script>       
        <script src="js/bootstrap-carrusel/jquery-3.3.1.js"></script>
        <script src="js/dataTables/jquery.dataTables-1.10.16.min.js" type="text/javascript" charset="utf8"></script>
        <script src="js/dataTables/dataTables.bootstrap4.min.js" type="text/javascript" charset="utf8"></script>
        <script src="js/script.js"></script>    
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
    <div id="demo" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
            <li data-target="#demo" data-slide-to="3"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Images/slider/competicion.jpg" alt="slider1" style="width:100%; height:500px;">
            </div>

            <div class="carousel-item">
                <img src="Images/slider/cuadras.jpg" alt="slider2" style="width:100%; height:500px;">
            </div>

            <div class="carousel-item">
                <img src="Images/slider/ojo.jpg" alt="slider3" style="width:100%; height:500px;">
            </div>
            <div class="carousel-item">
                <img src="Images/slider/cabeza.JPG" alt="slider4" style="width:100%; height:500px;">
            </div>
        </div>
        <!-- Left and right controls -->
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
    <% if (session.getAttribute("usuario") != null) {%>
    <center><h5><b>Has iniciado sesion como <%= session.getAttribute("usuario")%></b></h5></center>
                <%}%>
                <s:form action="AltaClasesClientes" method="post" id="formulario">
                    <s:iterator value="clas">
            <center><legend style="font-size: 30px;"><b>Datos de la reserva</b></legend></center>
            <label for="cod" style="font-size: 17px">Codigo Clase</label>
            <input id="campoForm" name="clasCli.id.codigo" readonly="readonly" value="<s:property value="id.cod"/>"/><br>
            <label for="Dia de la semana" style="font-size: 17px">Dia de la semana</label>
            <input id="campoForm1" type="text" name="clasCli.id.diaSemana" readonly="readonly" value="<s:property value="id.diaSemana"/>"/><br>
            <label for="Hora" style="font-size: 17px">Hora</label>
            <input id="campoForm2" type="text" name="clasCli.id.hora" readonly="readonly" value="<s:property value="id.hora"/>"/><br>
            <label for="DNI" style="font-size: 17px">DNI del cliente</label>
            <input id="campoForm3" type="text" name="clasCli.id.asistente"/><br>
            <input id="enviar" type="submit" name="enviar" value="Enviar" />
        </s:iterator>
    </s:form>
    <br><br><br>
    <center><% if (session.getAttribute("usuario") != null) {%>
        <div><a href="<s:url action="Clases"/>"><img src="Images/FlechaAtras.PNG" alt="Atras" width="40" height="40"></a></div>
        <%}%>  </center>
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
