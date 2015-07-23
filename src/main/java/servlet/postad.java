/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import DatabaseCredentials.database;
import java.io.File;
import java.io.FileInputStream;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;
/**
 *
 * @author vinayak
 */
@WebServlet(name = "postad", urlPatterns = {"/postad"})
@MultipartConfig(maxFileSize = 16177215)
public class postad extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet postad</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet postad at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
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
      //  processRequest(request, response);
        
        PrintWriter out = response.getWriter();
        
        out.println("hiiiiiiiiiiiiiiiiiiiiiiiiiiii");
        
        
        
        
        String image1 = request.getParameter("image");
        String user_id = request.getParameter("user_id");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String country = request.getParameter("country");
        String detail = request.getParameter("detail");
        
        out.println(image1);
        out.println(user_id);
        out.println(address);
        out.println(city);
        out.println(country);
        out.println(detail);
         
        InputStream inputStream = null; // input stream of the upload file
         
       
        Part filePart = request.getPart("image");
        if (filePart != null) {
            
            out.println(filePart.getName());
            out.println(filePart.getSize());
            out.println(filePart.getContentType());
             
            
            inputStream = filePart.getInputStream();
        }
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try {
            // connects to the database
            
            conn = database.getConnection();
 
            // constructs SQL statement
            String sql = "INSERT INTO post_ad (user_id, image, address,city,country,detail) values (?, ?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, user_id);
            
             
//                File image = new File(image1);
//                FileInputStream   fis = new FileInputStream(image.getAbsolutePath());
//                statement.setBinaryStream(2, fis, (int) image.length());
//                statement.execute();
             if (inputStream != null) {
               
              statement.setBlob(2, inputStream);
            }
            statement.setString(3, address);
            statement.setString(4, city);
            statement.setString(5, country);
            statement.setString(6, detail);
 
            // sends the statement to the database server
           int row = statement.executeUpdate();
            
            if (row > 0) {
               
                HttpSession  success = request.getSession(true);
                success.setAttribute("success_message","Your Ad is posted successfully!");
                response.sendRedirect("jsp/signup.jsp");
           }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
           out.println("Exception");
           out.println(message);
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        }
            // sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
          //  getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
        
          
        out.println("hiiiiiiiiiiiiiiiiiiiiiiiiiiii");
        
        
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
