/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prjhuellvotweb.controlador;

import com.prjhuellvotweb.DAO.DAOConfiguracion;
import com.prjhuellvotweb.modelo.Configuracion;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rocio Eliana Marquez Olarte
 * @acttualiza Juan Estiven Mazo Moreno
 */
public class ServletConfig extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String fecini = request.getParameter("fechaini");
            String fecfin = request.getParameter("fechafin");
//            DateFormat df = new SimpleDateFormat("dd--mm-yyyy hh:mm");
//            java.sql.Timestamp date2= null;
//            java.sql.Timestamp date4= null;
//            try {
//                java.util.Date date1= df.parse(fecini);
//                date2 = new java.sql.Timestamp(date1.getTime());
//                java.util.Date date3= df.parse(fecfin);
//                date4 = new java.sql.Timestamp(date3.getTime());
//            } catch (ParseException ex) {
//                Logger.getLogger(ServletConfig.class.getName()).log(Level.SEVERE, null, ex);
//            }                        
            String sexo = request.getParameter("genero");
            if (sexo== null){
                sexo="no";
            }
            String desc = request.getParameter("Descripcion");
            if (desc== null){
                desc="no";
            }
            String ima = request.getParameter("imagen");
            if (ima== null){
                ima="no";
            }
            String ficha = request.getParameter("ficha");
            if (ficha== null){
                ficha="no";
            }
            String cat = request.getParameter("Categoria");
            if (cat== null){
                cat="no";
            }
            if (fecini.isEmpty()) {
                System.out.println("Ingrese fecha de inicio.");
            } else if (fecfin.isEmpty()) {
                System.out.println("Ingrese fecha final.");
            } else {
                Configuracion conf = new Configuracion();
                conf.setFechainicioConfig(fecini);
                conf.setFechafinConfig(fecfin);
                conf.setSexoConfig(sexo);
                conf.setDescripcionConfig(desc);
                conf.setImagenConfig(ima);
                conf.setFichaConfig(ficha);
                conf.setCategoriaConfig(cat);
                DAOConfiguracion dao = new DAOConfiguracion();
                if (dao.RegistarConfig(conf)) {
                    response.sendRedirect("Admin.jsp");
                    System.out.print("Configuracion Realizada.");
                }

            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
