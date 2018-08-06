<%-- 
    Document   : index
    Created on : 25-nov-2017, 19:22:28
    Author     : Veron
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
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
                <img src="Images/slider/competicion.jpg" alt="slider1" style="width:100%; height:500px;"><!--https://www.lavanguardia.com/vida/20180125/44273782509/caballos-dedos-estudio.html-->
            </div>

            <div class="carousel-item">
                <img src="Images/slider/cuadras.jpg" alt="slider2" style="width:100%; height:500px;"><!--https://www.equibreed.co.nz/-->
            </div>

            <div class="carousel-item">
                <img src="Images/slider/ojo.jpg" alt="slider3" style="width:100%; height:500px;"><!--https://www.equibreed.co.nz/-->
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
    <centre><div id="infoCentroHipico" style="color: black;">
            <center><h2><b>Centro hipico</b></h2></center>
            <center><p>Ademas de lo que se ha visto ya tras registrarse se consigue acceso a:<br><br>
                    • <b>Imagenes de tu caballo</b> (en caso de que sea duaño de algun animal)<br>
                    • <b>Informacion de los trabajadores del centro hipico</b><br>
                    • <b>Servicios adicionales que se ofrecen en el centro hipico</b><br>
                    • <b>Posibilidad de reservar los distintos elementos</b> (pistas, caballos, clases)
                </p></div></centre><br>
    <div id="index-content" style="color: white; min-height: 630px; background-image: url('Images/FondoInfo.jpg');"><!--La Garganta (Cáceres) Jesús Hernandez-->
        <div class="col-lg-6" style="min-height: 250px; background-color: rgba(0,0,0,0.8);">
            <h2><b>HORARIO DE APERTURA</b></h2>
            <div id="horario">
                <div id="horario1">
                    <h4>Horario de invierno</h4>
                    <p>A partir del 30 de septiembre el horario del centro hipico sera:
                        - De lunes a viernes:       mañana 10:00h a 14:30h   y   tarde 18:00h a 21:00h

                        - Sábados:                  mañana 10:00h a 14:30h   y   tarde 16:00h a 19:00h

                        - Domingos cerrados 
                    </p>
                </div>
                <div id="horario2">
                    <h4>Horario de verano</h4>
                    <p>A  partir del 29 de junio el horario de La Hípica será:

                        - De lunes a viernes:       mañana 10:00h a 13:30h   y   tarde 18:00h a 22:00h

                        - Sábados:                  mañana 10:00h a 13:30h   y   tarde 17:00h a 20:00h

                        - Domingos cerrados</p>
                </div>
            </div>
        </div>
        <div class="col-lg-6" style="min-height: 250px; background-color: rgba(0,0,0,0.8);">
            <h2><b>OPINIONES</b></h2>
            <div id="demo" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <p>Mount View Sport Horses have had a long and successful working relationship with Equibreed.
                            We have been working with Lee for fifteen years, Lee's dedication to getting our mares in foal is
                            outstanding, and we know she does her utmost to get the best result for us every season!
                            The staff at Equibreed are always friendly and helpful and we know our mares are in good hands.
                            For top results with breeding your mares, you can trust Equibreed to deliver!</p>
                        <p>- Wendy Keddell (MVNZ)</p>
                    </div>
                    <div class="carousel-item">
                        <p>
                            Equibreed NZ is one of the best equine reproduction centres in the world. West Kington Stallion Centre
                            is very proud to be an associate and client.
                        </p>
                        <p>- Tessa Clarke (West Kington Stud UK)</p>
                    </div>
                    <div class="carousel-item">
                        <p>Before Dr Morris arrived in New Zealand the rate of success using frozen semen had been about 36%.
                            That first year we took nine mares to her, with a success rate of 100%. The next year we had 94% and
                            the following year 96% success.</p>
                        <p>- Bruce Holden (Ngahiwi Horses)</p>
                    </div>
                    <div class="carousel-item">
                        <p>I have been using Lee Morris and the team at Equibreed for about 15 years now. In that time I have
                            utilized Equibreed for collecting and freezing semen from all my stallions, fresh and frozen inseminations
                            and embryo transfers. Lee and her team are very professional and very good at their job. There is nobody I
                            trust more to gain successful pregnancies than Equibreed NZ</p>
                        <p>- Jody Hartstone (Studmaster)</p> 
                    </div>
                </div>
            </div>
        </div>
        <div id="contentAbajo" class="col-lg-12">
            <div style="width: 100%; align-content: center;">
                <h2>DESCRIPCION</h2>
                <div class="col-lg-101" style="border: 6px solid transparent;" id="contentAbajo1">
                    <img src="Images/Descripcion1.jpg" alt="Descripcion" style="width: 400px; height: 300px;"> <!--https://www.equibreed.co.nz/-->  
                </div>
                <div class="col-lg-100" style="border: 0px" id="contentAbajo2">
                    <span>El Centro Hípico dispone de instalaciones para la práctica de todas las disciplinas ecuestres,<br> así como de otras complementarias a las deportivas que posibilitan al visitante el disfrute del tiempo libre en un marco tan especial.<br>
                        Todo ello dentro de un fantástico entorno natural, rodeado de vegetación.<br> Todas las pistas y otras instalaciones nos permiten vistas al mar y al monte, circunstancia que indudablemente favorece la práctica del deporte,<br>la relajación de nuestros caballos y aumenta nuestro disfrute.<br>
                        El centro hipico es un centro de equitacion homologado por la Real Federación Hípica Española con tres Estribos <br> y con profesores e instructores con una extensa experiencia y formación.<br>
                        El jinete que decide practicar la equitación junto a nosotros recibirá una atención personalizada en su idioma,<br> tendrá acceso a caballos adaptados a su nivel de equitación <br>y podrá recibir entrenamiento de mano de los mejores profesionales en cada una de las disciplinas.<br> 
                        Todo ello siempre con la garantía de una relación inmejorable precios-calidad.</span>    
                </div>
            </div>
        </div>
    </div>
    <br>
    <div id="contact" style="text-align:center; align-items: center;">
        <center><s:form id="formulario" action="enviar">
                <center><legend style="font-size: 30px;"><b>Contacto</b></legend></center>  
                    <s:textfield id="campoForm" name="from" placeholder="De"/>
                    <s:password  id="campoForm1" name="password" placeholder="Contraseña"/>
                    <s:textfield id="campoForm2" placeholder="Asunto" name="asunto"/>
                    <s:textarea id="campoForm3" placeholder="Texto del mensaje" name="texto"/>
                    <s:submit id="enviar" label="enviar" value="Enviar"/>
                </s:form></center>
        <s:if test="success">Su correo ha sido enviado</s:if>
    </div>
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

