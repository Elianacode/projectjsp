<%-- 
    Document   : Votacion
    Created on : 14/06/2016, 09:41:57 PM
    Author     : Eliana Marquez  Estiven Mazo  Sergio Buitrago
--%>

<%@page import="java.sql.Date"%>
<%@page import="com.prjhuellvotweb.modelo.Opcion"%>
<%@page import="com.prjhuellvotweb.DAO.DAOOpcion"%>
<%@page import="com.prjhuellvotweb.DAO.DAOCategoria"%>
<%@page import="com.prjhuellvotweb.modelo.Categoria"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="refresh" content="120; URL=index.jsp" >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>HuellVot</title>
        <!-- icono -->
        <link rel="shortcut icon" type="image/x-icon" href="Multimedia/iC0.png" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/Javascript.js" type="text/javascript"></script>
        <script src="js/Validaciones.js" type="text/javascript"></script>
        <!-- estilos -->
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <!-- cdn iconos y jquery -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">
        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
        <!--Cdn para Tabla -->
    <link rel="stylesheet" type="text/css" href="http://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css"><font></font>
    <script type="text/javascript" src="http://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <!-- alertas swal -->
    <script src="alertas/sweetalert.min.js" type="text/javascript"></script>
    <link href="alertas/sweetalert.css" rel="stylesheet" type="text/css"/>
</head>
<body onload="carga()" style="background-color:#eeeeee">
    <% //Preguntar por la sesion del usuario votante
        HttpSession sessionOk = request.getSession(true);

        if (sessionOk.getAttribute("votante") != null) {
    %>

    <div class="container">
        <div class="col s12 m12 l12 ">
            <font size="20" face="Arial" color="white"><div class="card-panel nav-wrapper teal darken-2 hoverable center-align ">
                <a class="brand-logo right hide-on-med-and-down"><img src="../Multimedia/logosena.PNG" width="55" height="55" ></a>
                Votación
                <a class="brand-logo left"><img src="../Multimedia/iC0.png" width="55" height="80" ></a>
            </div>
            <div class="input-field col s4 center-align"  style="background-color:#fc7323; z-index: -1;">
                <div class="reloj">
                    <span>Tiempo para votar: </span>
                    <span id="minutos">1</span>:<span id="segundos">60</span></div>
            </div> 
            </font>
        </div>
        <div class="input-field col s12 m6">
            <div class="card-panel  white hoverable">  
                <!--action="ServletVoto" method="POST" -->
                <form>
                    <%
                        DAOCategoria dao = new DAOCategoria();
                        ArrayList<Categoria> list = new ArrayList();
                        list = dao.consultarCategorias();
                        for (int i = 0; i < list.size(); i++) {
                            Categoria c = new Categoria();
                            c = list.get(i);
                            int idC = c.getIdCategoria();
                            String nomC = c.getNombreC();
                    %>

                    <!-- NOMBRE DE LA CATEGORIA
                    <h4><%=nomC%></h4> -->        

                    <%
                        DAOOpcion daoO = new DAOOpcion();
                        ArrayList<Opcion> listO = new ArrayList();
                        listO = daoO.consultarOpcionXCategoria(idC);
                    %>
                    <div class="row">
                        <%for (int y = 0; y < listO.size(); y++) {
                                Opcion o = new Opcion();
                                o = listO.get(y);
                                int idO = o.getIdOpcion();
                                String nomO = o.getNombreO();
                        %>
                        <input type="button" class="col s4 m2 proyecto hoverable tooltipped  with-gap black-text waves-light" data-tooltip="<%=nomO%>" onclick="voto(this);" style="font-size:300%" name="<%=nomO%>" value="<%=idO%>"/>
                        <%-- <input name="Opcion" id="<%=idO%>"  type="radio" value="<%=idO%>" class="hoverable with-gap"/>
                    <label style="font-size:150%" class="black-text" data-position="bottom" data-delay="50"  for="<%=idO%>" ><%=idO%> </label>--%>

                        <%
                            }%>
                    </div>
                </form>

                <%
                    }%> 
            </div>
        </div> 
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
        <div class="col s12 m12 l12 ">
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
    </div>
    <%} else {
        sessionOk = request.getSession();
        sessionOk.invalidate();
        response.sendRedirect("index.jsp");
    %>
    <h1>Su session espiro.</h1><% }%>
    <script type="text/javascript">
        if (history.forward(1)) {
            //location.replace(history.forward(1));
            location.replace(location.reload());
        }
    </script> 

</body>
</html>
