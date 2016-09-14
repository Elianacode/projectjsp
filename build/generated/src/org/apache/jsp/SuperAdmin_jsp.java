package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SuperAdmin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>HuellVot</title>\n");
      out.write("        <!-- icono -->\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"Multimedia/iC0.png\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\n");
      out.write("        <!-- cdn iconos y jquery -->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css\">\n");
      out.write("        <!-- Compiled and minified JavaScript -->\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color:#eeeeee\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <nav>\n");
      out.write("                <div class=\"nav-wrapper teal darken-2\">\n");
      out.write("                    <a class=\"brand-logo right logo hoverable\"><img src=\"../Multimedia/logosena.PNG\" width=\"55\" height=\"55\" ></a>\n");
      out.write("                    <a class=\"brand-logo center\">Huellvot</a>\n");
      out.write("                    <a data-activates=\"mobile-demo\" class=\"button-collapse\"><i class=\"material-icons\">menu</i></a>\n");
      out.write("                    <ul class=\"hide-on-med-and-down\">\n");
      out.write("                        <li><a class=\"tooltipped\" data-tooltip=\"Inicio\"><img src=\"../Multimedia/iC0.png\" width=\"45\" height=\"55\" ></a></li>\n");
      out.write("                        <li><a class=\"showUser tooltipped \" data-tooltip=\"Administrar Usuarios\">Usuarios</a></li>\n");
      out.write("                        <li><a class=\"showOp tooltipped \" data-tooltip=\"Administrar Opciones\">Opciones</a></li>\n");
      out.write("                        <li><a class=\"hoverable tooltipped \" data-tooltip=\"Cerrar sesión\" href=\"Cerrar-Sesion.jsp\"><i class=\"material-icons center\">settings_power</i></a>\n");
      out.write("                    </ul>\n");
      out.write("                    <ul class=\"side-nav\" id=\"mobile-demo\">\n");
      out.write("                        <li><a class=\"showUser hoverable\">Usuarios</a></li>\n");
      out.write("                        <li><a class=\"showOp hoverable\">Opciones</a></li>\n");
      out.write("                        <li><a class=\"showRep hoverable\">Reportes</a></li>\n");
      out.write("                        <li><a class=\"hoverable\" href=\"Cerrar-Sesion.jsp\"><i class=\"material-icons left\">settings_power</i></a>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("\n");
      out.write("            <div class=\"adminUsario\" id=\"adminUsario\" >\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col s12 m12 l12\">\n");
      out.write("                        <font size=\"20\" face=\"Arial\" color=\"\"><div class=\"card-panel hoverable center\">Usuarios</div></font>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <form action=\"\" method=\"\">\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col m12\">\n");
      out.write("                            <div class=\"input-field col s12 m6\">\n");
      out.write("                                <input  id=\"fechaini\" type=\"datetime-local\" class=\"validate\" name=\"fechaini\" required=\"\" >\n");
      out.write("                                <label  id=\"lblfeachini\" for=\"fechaini\">Fecha de inicio</label>\n");
      out.write("                                <div id=\"vldrfechaini\" style=\"color:#f57c00;;\"> </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-field col s12 m6\">\n");
      out.write("                                <input  id=\"fechafin\" type=\"datetime-local\" class=\"validate\" name=\"fechafin\" required=\"\" >\n");
      out.write("                                <label  id=\"lblfeachfin\" for=\"fechafin\">Fecha final</label>\n");
      out.write("                                <div id=\"vldrfechafin\" style=\"color:#f57c00;;\"> </div>\n");
      out.write("                            </div>                            \n");
      out.write("                            <div class=\"input-field col s12 m6\">\n");
      out.write("                                <p class=\"tooltipped\" data-tooltip=\"Permite adicionar campo de genero en el formulario usuario.\">\n");
      out.write("                                    <input type=\"checkbox\" id=\"genero\"  />\n");
      out.write("                                    <label for=\"genero\">Genero</label>\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-field col s12 m6\">\n");
      out.write("                                <p class=\"tooltipped\" data-tooltip=\"Permite adicionar campo de Tipo documento en el formulario usuario.\">\n");
      out.write("                                    <input type=\"checkbox\" id=\"Descripcion\"  />\n");
      out.write("                                    <label for=\"Descripcion\">Descripcion</label>\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-field col s12 m6\">\n");
      out.write("                                <p class=\"tooltipped\" data-tooltip=\"Permite adicionar campo de Imagen en el formulario usuario.\">\n");
      out.write("                                    <input type=\"checkbox\" id=\"imagen\"/>\n");
      out.write("                                    <label for=\"imagen\">Imagen</label>\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-field col s12 m6\">\n");
      out.write("                                <p class=\"tooltipped\" data-tooltip=\"Permite adicionar campo de Ficha en el formulario usuario.\">\n");
      out.write("                                    <input type=\"checkbox\" id=\"ficha\" />\n");
      out.write("                                    <label for=\"ficha\">Ficha</label>\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-field col s12 m6\">\n");
      out.write("                                <p class=\"tooltipped\" data-tooltip=\"Permite adicionar varias categorias en la votación.\">\n");
      out.write("                                    <input type=\"checkbox\" id=\"Categoria\" />\n");
      out.write("                                    <label for=\"Categoria\">Categoria</label>\n");
      out.write("                                </p>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row \">\n");
      out.write("                        <div class=\" center-align\">\n");
      out.write("                            <button type=\"submit\" id=\"btnAddU\" name=\"btnAddU\" value=\"\" class=\"waves-effect waves-light btn teal darken-2\">Adiccionar<i class=\"material-icons right\">add</i></button>\n");
      out.write("                        </div>               \n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("            <!--Pie de pagina-->\n");
      out.write("            <footer class=\"page-footer teal darken-2\">            \n");
      out.write("                <div class=\"footer-copyright\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        © 2016 Copyright Huellvot(Version 1.0)\n");
      out.write("                        <a class=\"right\" href=\"https://www.twitter.com\" target=\"_blank\"><img class=\"hoverable circle\" src=\"Multimedia/twitterLogo.png\" width=\"45\" height=\"45\" style=\"padding: 5px\"></a>\n");
      out.write("                        <a class=\"right\" href=\"https://www.facebook.com\" target=\"_blank\"><img class=\"hoverable circle\" src=\"Multimedia/facebook.png\" width=\"45\" height=\"45\" style=\"padding: 5px\"></a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </footer>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $(\".button-collapse\").sideNav();\n");
      out.write("                $('select').material_select();\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
