<%-- 
    Document   : Contactenos
    Created on : 14/09/2016, 01:39:56 PM
    Author     :Eliana Marquez,  Estiven Mazo , Sergio Buitrago
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
            <font size="20" face="Arial" color="white"><div class="card-panel nav-wrapper teal darken-2 hoverable center-align ">
                <a class="brand-logo right hide-on-med-and-down"><img src="../Multimedia/logosena.PNG" width="55" height="55" ></a>
                Contacto
                <a class="brand-logo left"><img src="../Multimedia/iC0.png" width="55" height="80" ></a>
            </div>
            </font>
            <!-- Modulo de Contacto-->
            <div class="formContac" id="forcont" >
                <div class="input-field col s4 center-align"  style="background-color:#fc7323; z-index: -1; padding: 0.5%">
                    <p class="flow-text ">Envíanos tu mensaje.</p>
                </div>
                <div class="col s12 m12 l12" style="padding-top:5%;">
                    <form>                    
                        <div class="col s6 m6 l6">
                            <div class="row">
                                <div class="input-field col s6 m6 l6">
                                    <input type="email" id="correoCont" class="validate" name="correoCont" required="" length="80" onkeyup="introinsertU(event)" placeholder="@" title="llenar este campo.">
                                    <label id="lblcorreoCont" for="textarea1">Correo:</label>
                                    <div  id="vldrCorreoCont" style="color:#f57c00;;"> </div>
                                </div>
                                <div class="Inicio right col s6 m6 l6" style="padding-left:15%;"> 
                                    <div class="row">
                                        <div class="col 6 m6 6">
                                            <div class=""><img src="../Multimedia/iC0.png" width="243" height="400"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="input-field col s6 m6 l6">
                                    <input id="nomCont" type="text" class="validate" name="nombreCont" required=""  length="70" onkeypress="sololetras()" onpaste=" return false">
                                    <label id="lblnmCont" for="txtdesc">Nombre:</label>
                                    <div id="vldrNombreCont" style="color:#f57c00;;"> </div>
                                </div>
                                <div class="input-field col s6 m6 l6">
                                    <textarea id="msjCont" class="materialize-textarea" name="msjCont"required=""></textarea>
                                    <label id="lblmsjCont" for="textarea1">Mensaje</label>
                                    <div id="vldrmsjCont" style="color:#f57c00;"> </div>
                                </div>
                                <div class="row">
                                    <div class=" center-align col s6 m6 l6" style="margin-top:0%;">
                                        <button type="button" id="btnContacta" name="btnCont" value="Contactanos" class="waves-effect waves-light btn teal darken-2" onclick="contactanos()">Enviar<i class="material-icons right">add</i></button>
                                    </div>               
                                </div> 
                            </div>

                        </div>
                    </form>

                </div>            


                <!-- Fin Modulo de Contacto-->

                <div class="row">
                    <div class="col m12">
                        <div id="modalacercade" class="modal  modal-fixed-footer ">
                            <div class="modal-content">
                                <h3 class="center-align" style="background-color:#fc7323; z-index: -1; color:white">Acerca de</h3>
                                <h5 style="color:#fc7323;">Versión Larga... </h5>
                                <label class=" valign-wrapper" style="text-align: justify; font-size:15px;"> 
                                    Huellvot© es un sitio web resultado del proyecto formativo creado en el SENA por los aprendices Juan Estiven Mazo Moreno, Rocio Eliana Marquez Olarte, Sergio Alberto Buitrago pertenecientes al programa de Análisis y desarrollo de sistemas de información (ADSI); el cual se realizó en el Centro Textil y de Gestión Industrial (CTGI) desde el 7 de abril de 2014 hasta el 7 de abril de 2016, guiado por los instructores Harold Mauricio Gomez Zapata, Durley Cecilia Lopez Alzate, Lee Jared Escobar Gomez, Johnattan Jaramillo Gomez, Edwi Alexander Patiño Palacio, Hernan Dario Solano Salgado, Edwin Waldir Restrepo Henao, Diego Leon Ramirez Bedoya, Eldrin William Berrio Leon Johana Cecilia Gutierrez Florez, Robinson Restrepo Muñoz, Gloria Cecilia Tobon Gil, Juan Camilo Zapata Sanchez.
                                    El sitio web Huellvot© consiste en un sistema que permitirá realizar el proceso de votación por diferentes tipos de opciones, ademas de versatil el sitio web tiene una interfaz para todo tipo de usuarios, permite generar los informes resultados y estadísticas de la votaciòn desde el mismo momento en que se termina el proceso  
                                </label>
                                <h5 style="color:#fc7323;">Versión Corta... </h5> 
                                <label class=" valign-wrapper" style="text-align: justify; font-size:15px;"> 
                                    Huellvot© es un sitio web resultado del proyecto formativo creado en el SENA por los aprendices Juan Estiven Mazo Moreno, Rocio Eliana Marquez Olarte, Sergio Alberto Buitrago pertenecientes al programa de Análisis y desarrollo de sistemas de información (ADSI), consiste en un sistema que permitirá realizar el proceso de votación por diferentes tipos de opciones, ademas de versatil el sitio web tiene una interfaz para todo tipo de usuarios, permite generar los informes resultados y estadísticas de la votaciòn desde el mismo momento en que se termina el proceso.
                                </label>
                            </div>
                            <div class="modal-footer">
                                <a class=" modal-action modal-close waves-effect waves-red btn-flat hoverable " id="cancelarMU">Cerrar</a>
                            </div>
                        </div>
                    </div>   <!-- fin del modal acerda de -->
                </div>
                <footer class="page-footer teal darken-2">            
                    <div class="footer-copyright">
                        <div class="container">
                            © 2016 Copyright Huellvot(Version 1.0) 
                            <a href="Terminos&condiciones.jsp">Términos y condiciones</a>
                            <a class="right tooltipped " data-tooltip="Acerca de" data-position="top" id="acercade"><img class="hoverable circle" src="Multimedia/acerca.png" width="45" height="45" style="padding: 5px" onclick="acercade()"></a>
                            <a class="right tooltipped " data-tooltip="Contacto" data-position="top" href="Contactenos.jsp" target="_blank"><img class="hoverable circle" src="Multimedia/contac.png" width="45" height="45" style="padding: 5px"></a>
                            <a class="right tooltipped " data-tooltip="Twitter" data-position="top" href="https://twitter.com/HuellVot" target="_blank"><img class="hoverable circle" src="Multimedia/twitterLogo.png" width="45" height="45" style="padding: 5px"></a>
                            <a class="right tooltipped " data-tooltip="Facebook" data-position="top" href="https://www.facebook.com/huellvot.huellvot" target="_blank"><img class="hoverable circle" src="Multimedia/facebook.png" width="45" height="45" style="padding: 5px"></a>
                        </div>
                    </div>
                </footer>
            </div>        
    </body>
</html>

