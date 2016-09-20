<%-- 
    Document   : fechahora
    Created on : 20-sep-2016, 7:17:18
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <title>fechahora</title>
    </head>
    <body>
       <h3>DateTimePicker 1</h3>
	<input type="text" value="" id="datetimepicker"/><br><br>
        <h3>DateTimePicker 2</h3>
	<input type="text" value="" id="datetimepicker2"/><br><br>
    </body>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/jquery.datetimepicker.full.js"></script>
<script>/*
window.onerror = function(errorMsg) {
	$('#console').html($('#console').html()+'<br>'+errorMsg)
}*/

$.datetimepicker.setLocale('es');

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
startDate:$.now()
});
var hoy = $.now();
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
</html>
