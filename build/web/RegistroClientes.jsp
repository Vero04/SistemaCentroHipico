<%-- 
    Document   : RegistroClientes
    Created on : 17-jun-2018, 13:10:12
    Author     : Veron
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Registro Usuarios</title>
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
    <br><br>
    <s:form id="formulario" action="AltaClientes" method="post">
        <center><legend style="font-size: 30px;"><b>Datos personales</b></legend></center>
            <s:textfield id="campoForm" placeholder="Nombre y Apellidos" name="user.nombre" required="required"/>
            <s:textfield id="campoForm1" placeholder="DNI" name="user.id.dni" required="required"/>
            <s:textfield id="campoForm2" placeholder="Direccion completa" name="user.direccion" required="required"/>
            <s:textfield id="campoForm3" placeholder="Codigo postal" name="user.codPostal" required="required"/>
            <s:textfield id="campoForm4" placeholder="Ciudad" name="user.ciudad" required="required"/>
            <s:textfield id="campoForm5" placeholder="Teléfono" name="user.telefono" required="required"/>
            <s:radio id="campoForm" name="user.sexo" label="Sexo" 
                     list="{'Hombre','Mujer'}" required="required"/>
            <s:textfield id="campoForm6" placeholder="Usuario" name="user.id.usuario" required="required"/>
            <s:password id="campoForm7" placeholder="Contraseña" name="user.id.password" required="required"/>
            <s:submit id="enviar" label="Enviar" value="enviar"/>
        </s:form>
        <br>
        <center><a href="./InicioSesion.jsp"><img src="Images/FlechaAtras.PNG" alt="Atras" width="40" height="40"></a> </center>
        <br>
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
