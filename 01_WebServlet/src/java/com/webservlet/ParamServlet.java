/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webservlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USUARIO
 */
public class ParamServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

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
        
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Formulario Servlet ParamServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Introduce tus datos</h1>");
            out.println("<form name='form1' method='post' action='http://localhost:8084/01WebServlet/param'>");
            out.println("<table border='1'>");
            out.println("<tr><td>Nombre:</td><td>");
            out.println("<input type='text' name='nom' id='nom' size='25' value=''/> </td></tr>");
            out.println("<tr><td>Edad:</td><td>");
            out.println("<input type='number' name='eda' id='eda' size='25' value=''/> </td></tr>");
            out.println("<tr><td>Email:</td><td>");
            out.println("<input type='text' name='mail' id='mail' size='40' value=''/> </td></tr>");
            out.println("<tr><td>Contraseña:</td><td>");
            out.println("<input type='password' name='pass' id='pass' size='25' value=''/> </td></tr>");
            out.println("</table>");
            out.println("<input type='submit' value='Enviar' />");
            out.println("</form>");
            out.println("</body>");
            out.println("</html>");
        }
    
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
     
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String name = request.getParameter("nom");
            if (name.equals("")){
            out.println("Nombre esta en blanco");
            } else {
                name = request.getParameter("nom");
            } 
            
            String eda = request.getParameter("eda");
            if (eda.equals("")){
            out.println("Edad esta en blanco");
            }else {
                eda = request.getParameter("eda");
            }
            
            String mail = request.getParameter("mail");
            if (mail.equals("")){
            out.println("Email esta en blanco"); 
            }else{
              mail = request.getParameter("mail");  
            }
            
            String pass = request.getParameter("pass");
            if (pass.equals("")){
            out.println("Contraseña esta en blanco");
            } else {
             pass = request.getParameter("pass");      
            } 
            
            String numberAsString = request.getParameter("eda");
            int number = Integer.valueOf(numberAsString);
            if (number < 18){
                out.print("Eres menor");
            }else{
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Leyendo parámetro  ParamServlet</title>");            
            out.println("</head>");
            out.println("<body bgcolor=\"#CCBBAA\">");
            out.println("<h1>Leyendo los parametros " + request.getContextPath() + "</h1>");
            out.println("<p>Te llamas " + name + "</p>" );            
            out.println("<p>Y tienes " + number + " años.</p>" );
            out.println("</body>");
            out.println("</html>");
            }
        }
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
