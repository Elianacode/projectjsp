<%-- 
    Document   : SuperAdmin
    Created on : 07-sep-2016, 13:04:47
    Author     : Eliana Marquez,  Estiven Mazo , Sergio Buitrago
    Proyecto   : Huellvot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/superadmin.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HuellVot</title>        
        <!-- icono -->
        <link rel="shortcut icon" type="image/x-icon" href="Multimedia/iC0.png" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>        
        <!-- cdn iconos y jquery -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">
        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
        <!-- cdn datepicker -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.min.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
        <script src="js/superadmin.js" type="text/javascript"></script>
        <!--datetimepickerstyle -->
        <link rel="stylesheet" type="text/css" href="css/jquery.datetimepicker.css"/>
            <style type="text/css">

            .custom-date-style {
                    background-color: red !important;
            }

            .input{	
            }
            .input-wide{
                    width: 500px;
            }

            </style>
    </head>
    <body style="background-color:#eeeeee">
        <div class="container">
            <nav>
                <div class="nav-wrapper teal darken-2">
                    <a class="brand-logo right logo hoverable" href="http://oferta.senasofiaplus.edu.co" target="_blank"><img src="../Multimedia/logosena.PNG" width="55" height="55" ></a>
                    <a class="brand-logo center">Huellvot</a>
                    <a data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                    <ul class="hide-on-med-and-down">
                        <li><a class="tooltipped" data-tooltip="Inicio"><img src="../Multimedia/iC0.png" width="45" height="55" ></a></li>
                        <li><a class="showUser tooltipped " data-tooltip="Administrar Usuarios">Usuarios</a></li>
                        <li><a class="showOp tooltipped " data-tooltip="Administrar Opciones">Opciones</a></li>
                        <li><a class="hoverable tooltipped " data-tooltip="Cerrar sesión" href="Cerrar-Sesion.jsp"><i class="material-icons center">settings_power</i></a>
                    </ul>
                    <ul class="side-nav" id="mobile-demo">
                        <li><a class="showUser hoverable">Usuarios</a></li>
                        <li><a class="showOp hoverable">Opciones</a></li>
                        <li><a class="showRep hoverable">Reportes</a></li>
                        <li><a class="hoverable" href="Cerrar-Sesion.jsp"><i class="material-icons left">settings_power</i></a>
                    </ul>
                </div>
            </nav>

            <div class="adminUsario" id="adminUsario" >
                <div class="row">
                    <div class="col s12 m12 l12">
                        <font size="20" face="Arial" color=""><div class="card-panel hoverable center">Usuarios</div></font>
                    </div>
                </div>
                <form action="" method="">
                    <div class="row">
                        <div class="col m12">  
                            <h3>DateTimePicker</h3>
	
                            <div class="input-field col s12 m6">
                                <div class="input-field col s12 m6">
                                <label  id="lblfecini" for="fech"  style="margin-top:-25px">Fecha de inicio</label>                               
                                <input  class="datepicker" name="fechaini" required="" placeholder=" " type="text" value="" id="datetimepicker"/>  
                                </div>                                
                                <div id="vldrfechaini" style="color:#f57c00;;"> </div>
                            </div>
                            <div class="input-field col s12 m6">
                                <div class="input-field col s12 m6">
                                <label  id="lblfecfin" for="fechaifin" autofocus>Fecha final</label>                               
                                <input  class="datepicker" name="fechafin" required="" type="text" value="" id="datetimepicker2"/>  
                                </div>                                
                            </div>                            
                            <div class="input-field col s12 m6">
                                <p class="tooltipped" data-tooltip="Permite adicionar campo de genero en el formulario usuario.">
                                    <input type="checkbox" id="genero"  />
                                    <label for="genero">Genero</label>
                                </p>
                            </div>
                            <div class="input-field col s12 m6">
                                <p class="tooltipped" data-tooltip="Permite adicionar campo de Tipo documento en el formulario usuario.">
                                    <input type="checkbox" id="Descripcion"  />
                                    <label for="Descripcion">Descripcion</label>
                                </p>
                            </div>
                            <div class="input-field col s12 m6">
                                <p class="tooltipped" data-tooltip="Permite adicionar campo de Imagen en el formulario usuario.">
                                    <input type="checkbox" id="imagen"/>
                                    <label for="imagen">Imagen</label>
                                </p>
                            </div>
                            <div class="input-field col s12 m6">
                                <p class="tooltipped" data-tooltip="Permite adicionar campo de Ficha en el formulario usuario.">
                                    <input type="checkbox" id="ficha" />
                                    <label for="ficha">Ficha</label>
                                </p>
                            </div>
                            <div class="input-field col s12 m6">
                                <p class="tooltipped" data-tooltip="Permite adicionar varias categorias en la votación.">
                                    <input type="checkbox" id="Categoria" />
                                    <label for="Categoria">Categoria</label>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="row ">
                        <div class=" center-align">
                            <button type="submit" id="btnAddU" name="btnAddU" value="" class="waves-effect waves-light btn teal darken-2">Adiccionar<i class="material-icons right">add</i></button>
                        </div>               
                    </div>
                </form>
            </div>


            <!--Pie de pagina-->
            <footer class="page-footer teal darken-2">            
                <div class="footer-copyright">
                    <div class="container">
                        © 2016 Copyright Huellvot(Version 1.0)
                        <a href="Terminos&condiciones.jsp" >Términos y condiciones</a>                        
                        <a class="right tooltipped " data-tooltip="Acerca de" data-position="top" id="acercade"><img class="hoverable circle" src="Multimedia/acerca.png" width="45" height="45" style="padding: 5px" onclick="acercade()"></a>
                        <a class="right tooltipped " data-tooltip="Contacto" data-position="top" href="Contactenos.jsp" target="_blank"><img class="hoverable circle" src="Multimedia/contac.png" width="45" height="45" style="padding: 5px"></a>
                        <a class="right tooltipped " data-tooltip="Twitter" data-position="top" href="https://twitter.com/HuellVot" target="_blank"><img class="hoverable circle" src="Multimedia/twitterLogo.png" width="45" height="45" style="padding: 5px"></a>
                        <a class="right tooltipped " data-tooltip="Facebook" data-position="top" href="https://www.facebook.com/huellvot.huellvot" target="_blank"><img class="hoverable circle" src="Multimedia/facebook.png" width="45" height="45" style="padding: 5px"></a>
                        </div>
                </div>
            </footer>
        </div>
        <!--Datetime script -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/jquery.datetimepicker.full.js"></script>
<script>/*
window.onerror = function(errorMsg) {
	$('#console').html($('#console').html()+'<br>'+errorMsg)
}*/

$.datetimepicker.setLocale('es');
$('.lblfecini').focus();
$('#datetimepicker_format').datetimepicker({value:'2015/04/15 05:03', format: $("#datetimepicker_format_value").val()});
console.log($('#datetimepicker_format').datetimepicker('getValue'));

$("#datetimepicker_format_change").on("click", function(e){
	$("#datetimepicker_format").data('xdsoft_datetimepicker').setOptions({format: $("#datetimepicker_format_value").val()});
});
$("#datetimepicker_format_locale").on("change", function(e){
	$.datetimepicker.setLocale($(e.currentTarget).val());
});

$('#datetimepicker').datetimepicker({
format:'d/m/Y H:i',
minDate:$.now(),
dayOfWeekStart : 1,
lang:'es',
startDate:'',
onChangeDateTime:function(dp,$input){
    alert($input.val())
  }
});

$('#datetimepicker').datetimepicker({value:$.now(),formatTime:'H:i',
	formatDate:'d.m.Y',step:10});

$('.some_class').datetimepicker();

$('#default_datetimepicker').datetimepicker({
	formatTime:'H:i',
	formatDate:'d.m.Y',
	//defaultDate:'8.12.1986', // it's my birthday
	defaultDate:'+03.01.1970', // it's my birthday
	defaultTime:'10:00',
	timepickerScrollbar:false
});
$('#datetimepicker2').datetimepicker({
format:'d/m/Y H:i',
minDate:$.now(),
dayOfWeekStart : 1,
lang:'es',
disabledDates:['1986/01/08','1986/01/09','1986/01/10'],
startDate: $('#datetimepicker')
});
</script>
        <script type="text/javascript">
            $(document).ready(function () {
                $(".button-collapse").sideNav();
                $('select').material_select();
            });
        </script>

    </body>
</html>
