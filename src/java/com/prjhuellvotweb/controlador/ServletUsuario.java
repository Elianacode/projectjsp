/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prjhuellvotweb.controlador;

import com.prjhuellvotweb.DAO.DAOUsuario;
import com.prjhuellvotweb.Util.EmailUtility;
import com.prjhuellvotweb.modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import javax.mail.MessagingException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Juan Estiven Mazo Moreno
 * @actualiza Rocio Eliana Marquez Olarte
 */
public class ServletUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     *
     *
     */
    private String host;
    private String port;
    private String usuario;
    private String pass;
    
    
    @Override
    public void init() {
        ServletContext servlet = getServletContext();
       
        host = servlet.getInitParameter("host");
        port = servlet.getInitParameter("port");
        usuario = servlet.getInitParameter("usuario");
        pass = servlet.getInitParameter("pass");

    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //Preguntar por la sesion del usuario admin
        HttpSession sessionOk = request.getSession(true);
        if (sessionOk.getAttribute("admin") != null) {
            //mostrar fecha
            System.out.println(new Date());
            DateFormat formato = DateFormat.getDateInstance(DateFormat.LONG);
            System.out.println(formato.format(new Date()));

            try (PrintWriter out = response.getWriter()) {
                /* TODO output your page here. You may use following sample code. */
                String documento = request.getParameter("documento");
                String nombre = request.getParameter("nombre");
                String correo = request.getParameter("correo");
                String sexo = request.getParameter("sexo");
                String asunto="Registro éxitoso";
                String contenido=nombre.toUpperCase()+"\n"+
                        "Le informamos que usted se ha registrado en el sistema de votación HuellVot\n"
                        + "Estos son sus datos para iniciar sesión \n\n"
                        + "Usuario: "+documento+"\n"+
                        "Clave: "+documento+"\n"+
                        "Medellín oficina HuellVot©"+
                        "tel:222-2222";

                if (documento.isEmpty()) {
                    out.println("El número de documento es requerido.");
                } else if (nombre.isEmpty()) {
                    out.println("Ingrese nombre.");
                } else if (correo.isEmpty()) {
                    out.println("Ingrese correo.");
                } else if (sexo.isEmpty()) {
                    out.println("Elija el género.");
                } else {
                    Usuario usu = new Usuario();
                    usu.setNumerodocumento(documento);
                    usu.setNombre(nombre);
                    usu.setCorreo(correo);
                    usu.setSexo(sexo);
                    DAOUsuario dao = new DAOUsuario();
                    //validar cuantos usuarios estan registrados en la bd
                    if (dao.validarCantidadUsuariosRegistrados() > 164) {
                        response.setStatus(400);
                        out.println("¡Disculpa! \n"
                                + "Pero has excedido el límite de registro de usuarios,\n"
                                + "para seguir utilizando nuestros servicios contáctanos\n"
                                + " en Medellín oficina HuellVot© tel:222-2222.\n");
                        out.println("Desarrolladores:\n Eliana Marquez Olarte \nEstiven Mazo Moreno\nSergio Buitrago Ruiz\n");
                        out.println(formato.format(new Date()));
                        //validar que el usuario no exista
                    } else {
                        if (dao.autenticarUsuario(documento) != null) {
                            String valordocu = dao.autenticarUsuario(documento).getNumerodocumento();
                            response.setStatus(400);
                            out.print("Usuario con número de documento: " + valordocu + " ya existe.");
                            System.out.println("Usuario con número de documento: " + valordocu + " ya existe.");
                        } else if (dao.registrarUsuario(usu) == true) {
                            out.print("Usuario registrado correctamente.");
                            try {
                                EmailUtility.sendEmail(host, port, usuario, pass, correo, asunto, contenido);
                            } catch (MessagingException ex) {
                                response.setStatus(400);
                                System.out.println("¡Disculpa! ha ocurrido un error al confirmar tu correo electrónico."+ex);
                                out.print("\n¡Disculpa! ha ocurrido un error al confirmar tu correo electrónico.");
                            }
                            System.out.println("Usuario registrado correctamente.");
                        } else {
                            response.setStatus(500);
                            out.print("¡Disculpa! ha ocurrido un error en el servidor.");
                        }
                    }
                }

            }
        } else {
            sessionOk.invalidate();
            response.sendRedirect("index.jsp");
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
