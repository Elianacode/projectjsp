package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import com.prjhuellvotweb.DAO.DAOVoto;
import java.util.ArrayList;
import com.prjhuellvotweb.modelo.Voto;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import org.jfree.data.category.DefaultCategoryDataset;
import java.io.*;
import org.jfree.chart.*;
import org.jfree.chart.plot.*;
import org.jfree.data.general.*;
import org.jfree.data.category.DefaultCategoryDataset.*;

public final class Administrar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("         <!-- icono -->\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"Multimedia/iC0.png\" />\n");
      out.write("        <link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css\">\n");
      out.write("\n");
      out.write("        <!-- Compiled and minified JavaScript -->\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("        ");

            // Class.forName("com.mysql.jdbc.Driver").newInstance();
            // Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/huellvot", "root", "");
            //Statement st = con.createStatement();
            //String sql = "select O.nombreO, count(*) as Total_votos from voto as v, opcion as o where o.ido=v.ido group by o.nombreo order by Total_Votos desc";
            // ResultSet rs = st.executeQuery(sql);

            try {
                DefaultCategoryDataset data = new DefaultCategoryDataset();
                DAOVoto dao = new DAOVoto();
                List<List> list = new ArrayList();
                list = dao.estadisticaNumeroVotos();
                for (int i = 0; i < list.size(); i++) {
                    List l= list.get(i);
                        String num = String.valueOf(l.get(0));
                        String nom = String.valueOf(l.get(1));
                        int tot=Integer.valueOf(l.get(2).toString());
                    //int totalVotos = v2.getIdUsuario();
                    //String nombreopcion = v2.getIdOpcion();
                    //System.out.println("nombre:" + nombreopcion + "total votos:" + totalVotos);
                    data.setValue(tot, num+". "+nom.toUpperCase()+"",num + "=" + tot);
                    //data.setValue(totalVotos, nombreopcion, nombreopcion + "= " + totalVotos);
                }

                //while (rs.next()) {
                // data.setValue(rs.getInt(2), rs.getString("nombreO"), rs.getString("nombreO") + "= " + rs.getInt(2));
                // }
                JFreeChart grafico = ChartFactory.createBarChart3D("ESTADISTICAS VOTOS PROYECTOS 2016", "Nombre Proyecto ", "Total votos por proyecto", data, PlotOrientation.VERTICAL, true, true, true);
                response.setContentType("text/html;charset=UTF-8");
                OutputStream salida = response.getOutputStream();
                ChartUtilities.writeChartAsJPEG(salida, grafico, 1300, 600);//ANCHO ,LARGO
                //ChartFrame F = new ChartFrame("ESTADISTICAS VOTOS PROYECTOS 2016", grafico);
                //F.setSize(1000,600);
                //F.setLocationRelativeTo(null);
                //F.setVisible(true);

            } catch (Exception e) {
                System.out.println("Error al intentar mostrar una estadistica: " + e);
                out.print(e);
            }

            // try {
            //   DefaultPieDataset data1 = new DefaultPieDataset();//crear graficos circulares
            //DefaultCategoryDataset data = new DefaultCategoryDataset();
            //  while (rs.next()) {
            //      data1.setValue(rs.getString("nombreO"), rs.getInt(2));
            // data.setValue(rs.getInt(2),rs.getString("nombreO"), rs.getString("nombreO")+"= "+rs.getInt(2));
            // }
            // JFreeChart grafico1 = ChartFactory.createPieChart("Holas", data1, true, true, true);
            // response.setContentType("image/JPEG");
            //  OutputStream salida1 = response.getOutputStream();
            //  ChartUtilities.writeChartAsJPEG(salida1, grafico1, 600, 700);
            // } catch (Exception e) {
            //     out.print(e);
            //  }
        
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
