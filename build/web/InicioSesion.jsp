<%-- 
    Document   : InicioSesion
    Created on : 03-jun-2018, 16:16:22
    Author     : Veron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Inicio Sesión</title>
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
    </head>
    <body>
    <center><span class="ir-arriba icon-arrow-up2" style="z-index: 100;"><img src="Images/flechaArriba.png" alt="Flecha Arriba"width="35" height="35"></img></span></center>
    <nav class="navbar navbar-expand-lg fixed-top text-uppercase" id="mainNav">  
        <img src="Images/Logo.png" alt="Logo" width="400" height="60" style="float:left">
        <div class="container">
            <center><div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="./InicioSesion.jsp">Inicio Sesion</a>
                        </li>
                    </ul>
                </div></center>
        </div>
        <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="./index.jsp"><img src="Images/casa.png" alt="Home" width="80" height="60" style="float:right"></a>
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
    <div id="columnas-enlaces"> 
        <center><h3 style="color: black;"><b>Registrate y tendras acceso a las siguiente informacion</b></h3></center>
        <div class="row" style="width: 100%; background-color: #FF8000;">
            <div class="col-lg-4" id="columnasEnlaces" style="width:33.33333333%;">
                <a href="<s:url action="Clases"/>"><img src="Images/casco.PNG" alt="enlace1" width="80" height="80"></a><br>
                <p style="color: black;"><b>Clases</b></p>
            </div>
            <div class="col-lg-4" id="columnasEnlaces" style="width:33.33333333%;">
                <a href="<s:url action="Instalaciones"/>"><img src="Images/silla.PNG" alt="enlace2" width="60" height="80"></a><br>
                <p style="color: black;"><b>Instalaciones</b></p>
            </div>
            <div class="col-lg-4" id="columnasEnlaces" style="width:33.33333333%;">
                <a href="<s:url action="Caballos"/>"><img src="Images/caballo.png" alt="enlace3" width="80" height="80"></a><br>
                <p style="color: black;"><b>Caballos</b></p>
            </div>
        </div>
    </div>
    <br><br>
    <s:form id="formulario" action="login" method="post">
        <center><legend style="font-size: 30px;"><b>Inicio Sesion</b></legend></center>
            <s:textfield id="campoForm" placeholder="Usuario" name="User.id.usuario" required="required"/>
            <s:password  id="campoForm1" placeholder="Contraseña" name="User.id.password" required="required"/>
            <s:submit id="enviar" label="enviar" value="enviar"/>
        </s:form>
    <br><br><br>
    <center><div id="boton">
            <center><b><a href="./RegistroClientes.jsp"><img src="Images/Nuevo.png" alt="nuevo" width="40" height="40"><br>Registro como Cliente</a></b></center>
        </div></center>    
    <br><br>
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
