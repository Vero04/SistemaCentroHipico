<%-- 
    Document   : EditarCaballo
    Created on : 12-jul-2018, 13:38:10
    Author     : Veron
--%>

<%@page import="java.util.HashSet"%>
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
<%@taglib prefix="s" uri="/struts-tags" %>
<% if (session.getAttribute("admin") == null) {
        response.sendRedirect("index.jsp");
    }
%>
<html>
    <head>
        <title>Sistema de gestion de un centro hipico</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="js/bootstrap/bootstrap-4.0.0.min.css" rel="stylesheet">
        <link href="css/bootstrap-4.0.0.css" rel="stylesheet">
        <link href="js/bootstrap-carrusel/bootstrap-3.3.7.min.css" rel="stylesheet"/>
        <link href="js/jquery-ui/jquery-ui.min.css" rel="stylesheet"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

        <script src="js/bootstrap/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap-carrusel/jquery-3.3.1.js"></script>
        <script src="js/bootstrap/popper-1.12.9.min.js"></script>
        <script src="js/bootstrap/bootstrap-4.0.0.js"></script>
        <script src="js/bootstrap-carrusel/bootstrap-3.3.7.min.js"></script>
        <script src="js/bootstrap-datepicker/2.0.0/js/datepicker-es.js"></script>
        <script src="js/jquery-ui/jquery-ui-1.12.1.min.js"></script>
        <script src="js/script.js"></script>
        <script>
            $(function () {
                $.datepicker.setDefaults($.datepicker.regional["es"]);
                $("#datepicker").datepicker({
                    firstDay: 1,
                    dateFormat: 'dd/mm/yy'
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
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="./IndexDueno.jsp">Control</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="<s:url action='ClasesDueno'/>">Clases</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="<s:url action='CaballosDueno'/>">Caballos</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="<s:url action='TrabajadoresDueno'/>">Trabajadores</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="<s:url action='InstalacionesDueno'/>">Instalaciones</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="<s:url action='ServiciosDueno'/>">Servicios</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="<s:url action='Empresas'/>">Proveedores</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="<s:url action='Clientes'/>">Clientes</a>
                        </li>
                    </ul>
                </div></center>
        </div>
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
    <br>
    <s:form action="EditarCaballo" method="post" id="formulario" enctype="multipart/form-data">
        <s:iterator value="cabal">
            <center><legend style="font-size: 30px;"><b>Datos del caballo</b></legend></center>
            <label for="cod" style="font-size: 17px">Codigo</label>
            <input id="campoForm" name="cabal.cod" readonly="readonly" value="<s:property value="cod"/>"/><br>
            <label for="disciplina" style="font-size: 17px">Nombre</label>
            <input id="campoForm1" type="text" name="cabal.nombre" value="<s:property value="nombre"/>" required/><br>
            <label for="Raza" style="font-size: 17px">Raza</label>
            <input id="campoForm2" readonly="readonly" value="<s:property value="raza"/>" required/><br>
            <select id="campoForm3" name="cabal.raza" required>
                <option value="Pura raza espanola" selected>PRE</option> 
                <option value="Arabe">Arabe</option>
                <option value="Frison">Frison</option>
                <option value="Percheron">Percheron</option>
                <option value="De milla">De milla</option>
                <option value="Appaloosa">Appaloosa</option>
            </select>
            <label for="venta" style="font-size: 17px">Venta</label>
            <input id="campoForm4" type="text" readonly="readonly" value="<s:property value="venta"/>" required/><br>
            <select id="campoForm5" name="cabal.venta" required>
                <option value="Si">Si</option>
                <option value="No">No</option>
            </select>
            <label for="montura" style="font-size: 17px">Montura</label>
            <input id="campoForm5" name="cabal.montura" type="text" size="35" maxlength="100" value="<s:property value="montura"/>" required/><br>
            <label for="embocadura" style="font-size: 17px">Embocadura</label>
            <input id="campoForm6" name="cabal.embocadura" type="text" value="<s:property value="embocadura"/>" required/> <br>
            <label for="cuadra" style="font-size: 17px">Cuadra</label>
            <input id="campoForm7" name="cabal.cuadra" type="text" value="<s:property value="cuadra"/>" required/> <br>
            <label for="cuadra" style="font-size: 17px">Altura</label>
            <input id="campoForm8" name="cabal.altura" type="text" value="<s:property value="altura"/>" required/> <br>
            <label for="herraje" style="font-size: 17px">Fecha de herraje</label><br>
            <input id="datepicker" name="cabal.herraje" type="text" value="<s:property value="herraje"/>" required/> <br>
            <label for="alquiler" style="font-size: 17px">Alquiler</label>
            <input id="campoForm9" type="text" readonly="readonly" value="<s:property value="alquiler"/>" required/><br>
            <select id="campoForm10" name="cabal.alquiler" required>
                <option value="Si">Si</option>
                <option value="No">No</option>
            </select>
            <label for="Tratamiento Veterinario" style="font-size: 17px">Tratamiento veterinario</label>
            <input id="campoForm11" name="cabal.tratamientoVeterinario" type="text" value="<s:property value="tratamientoVeterinario"/>" required/><br>
            <label for="imagen">Imagen</label>
            <input id="campoForm12" name="fileUpload" type="file" value="<s:property value="imagen"/>" required/>
            <input id="enviar" type="submit" name="enviar" value="Enviar" />
        </s:iterator>
    </s:form>
    <br><br><br>
    <center><a href="<s:url action="ClasesDueno"/>"><img src="Images/FlechaAtras.PNG" alt="Atras" width="40" height="40"></a></center>
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
