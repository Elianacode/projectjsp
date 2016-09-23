<%-- 
    Document   : Inicio
    Created on : 14/06/2016, 05:33:14 PM
    Author     : Eliana Marquez,  Estiven Mazo , Sergio Buitrago
    Proyecto   : Huellvot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <% HttpSession sessionOk = request.getSession();
        sessionOk.invalidate();
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HuellVot</title>
        <!-- icono -->
        <link rel="shortcut icon" type="image/x-icon" href="Multimedia/iC0.png" />
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
        <script src="js/Validaciones.js" type="text/javascript"></script>
        <!-- alertas swal -->
        <script src="alertas/sweetalert.min.js" type="text/javascript"></script>
        <link href="alertas/sweetalert.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background-color:#eeeeee" >
        <div class="container">
            <div class="col s12 m12 l12 ">
                <font size="20" face="Arial" color="white"><div class="card-panel nav-wrapper teal darken-2 hoverable center-align ">
                    <a class="brand-logo right hide-on-med-and-down" href="http://oferta.senasofiaplus.edu.co" target="_blank"><img src="../Multimedia/logosena.PNG" width="55" height="55" ></a>
                    Bienvenido
                    <a class="brand-logo left hide-on-med-and-down"><img src="../Multimedia/iC0.png" width="55" height="80" ></a>
                </div>
                </font>
            </div>
            <div class="input-field col s4 center-align"  style="background-color:#fc7323; z-index: -1;">
                <p class="flow-text ">Recuerde! <br>Ingresar su  número de documento como usuario y también como clave.</p>
            </div>
            <div class="input-field col s12 m6">
                <div class="card-panel  white hoverable">  
                    <div class='row'>
                        <div class="input-field col s1 m4 l4"></div>
                        <div class="input-field col s10 m4 l4">
                            <i class="material-icons prefix">account_circle</i>
                            <input id="usuario" type="text" name="usuario" class="" onpaste=" return false">
                            <label id="lblusu" for="usuario">Usuario:</label>
                            <div class="col s12 center" id="vldrusuario" style="color:#f57c00;">
                            </div>  
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s1 m4 l4"></div>
                        <div class="input-field col s10 m4 l4 center-align">
                            <i class="material-icons prefix">lock</i>
                            <input id="clave" type="password"  name="documento" class="" onpaste=" return false" onkeydown="enviar(event)">
                            <label class="left-align" id="lblcla" for="clave">Clave:</label>
                            <div class="col s12 center" id="vldrdocumento" style="color:#f57c00;"> </div>
                            <button class="waves-effect waves-light btn teal darken-2 "  type="button" name="ingresa" id="btnLogin" onclick="ingresar()">Ingresar <i class="material-icons right">send</i></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col m12">
                    <div id="modalacercade" class="modal  modal-fixed-footer ">
                        <div class="modal-content">
                            <h3 class="center-align" style="background-color:#fc7323; z-index: -1; color:white">Acerca de</h3>
                            <!-- <h5 style="color:#fc7323;">Versión Larga... </h5>
                           <label class=" valign-wrapper" style="text-align: justify; font-size:15px;"> 
                                Huellvot© es un sitio web resultado del proyecto formativo creado en el SENA por los aprendices Juan Estiven Mazo Moreno, Rocio Eliana Marquez Olarte, Sergio Alberto Buitrago pertenecientes al programa de Análisis y desarrollo de sistemas de información (ADSI); el cual se realizó en el Centro Textil y de Gestión Industrial (CTGI) desde el 7 de abril de 2014 hasta el 7 de abril de 2016, guiado por los instructores Harold Mauricio Gomez Zapata, Durley Cecilia Lopez Alzate, Lee Jared Escobar Gomez, Johnattan Jaramillo Gomez, Edwi Alexander Patiño Palacio, Hernan Dario Solano Salgado, Edwin Waldir Restrepo Henao, Diego Leon Ramirez Bedoya, Eldrin William Berrio Leon Johana Cecilia Gutierrez Florez, Robinson Restrepo Muñoz, Gloria Cecilia Tobon Gil, Juan Camilo Zapata Sanchez.
                                El sitio web Huellvot© consiste en un sistema que permitirá realizar el proceso de votación por diferentes tipos de opciones, ademas de versatil el sitio web tiene una interfaz para todo tipo de usuarios, permite generar los informes resultados y estadísticas de la votaciòn desde el mismo momento en que se termina el proceso  
                            </label> 
                            <h5 style="color:#fc7323;">Versión Corta... </h5> -->
                            <label class=" valign-wrapper" style="text-align: justify; font-size:15px;"><br><br> 
                                HuellVot© es un sitio Web resultado del proyecto formativo creado en el SENA por los aprendices Juan Estiven Mazo Moreno, Rocio Eliana Marquez Olarte, Sergio Alberto Buitrago pertenecientes al programa de Análisis y desarrollo de sistemas de información (ADSI), consiste en un sistema que permitirá realizar el proceso de votación por diferentes tipos de opciones, además de versátil el sitio Web tiene una interfaz para todo tipo de usuarios, permite generar los informes resultados y estadísticas de la votación desde el mismo momento en que se termina el proceso.
                            </label>
                        </div>
                        <div class="modal-footer">
                            <a class=" modal-action modal-close waves-effect waves-red btn-flat hoverable " id="cancelarMU">Cerrar</a>
                        </div>
                    </div>
                </div>   <!-- fin del modal acerda de -->
            </div>
            <footer class="page-footer teal darken-2">            
                <div class="footer-copyright" style="font-size: 70%;">
                    <div class="container">
                        <div class="center">
                        © 2016 Copyright Huellvot(Versión 1.0)  
                        <a href="Terminos&condiciones.jsp" >Términos y condiciones</a>
                        
                        <a class="right tooltipped " data-tooltip="Acerca de" data-position="top" id="acercade"><img class="hoverable circle" src="Multimedia/acerca.png" width="45" height="45" style="padding: 5px" onclick="acercade()"></a>
                        <a class="right tooltipped " data-tooltip="Contacto" data-position="top" href="Contactenos.jsp" target="_blank"><img class="hoverable circle" src="Multimedia/contac.png" width="45" height="45" style="padding: 5px"></a>
                        <a class="right tooltipped " data-tooltip="Twitter" data-position="top" href="https://twitter.com/HuellVot" target="_blank"><img class="hoverable circle" src="Multimedia/twitterLogo.png" width="45" height="45" style="padding: 5px"></a>
                        <a class="right tooltipped " data-tooltip="Facebook" data-position="top" href="https://www.facebook.com/huellvot.huellvot" target="_blank"><img class="hoverable circle" src="Multimedia/facebook.png" width="45" height="45" style="padding: 5px"></a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>        
    </body>
</html>
