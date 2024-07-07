/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trackcode;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author RISHABH
 */
public class LoginPage extends HttpServlet{


   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       //
       try (PrintWriter out = response.getWriter()) {
       
       //Getting data entered by user
       String username = request.getParameter("username");
       String password = request.getParameter("password");
       
       //connection 
           try{
                Thread.sleep(1000);
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/trackcode","root","Rishabh@06");
            
            //query
            String q ="select * from user where email =? and password =?";
            PreparedStatement pstmt =con.prepareStatement(q);
            pstmt.setString(1, username);
            pstmt.setString(2,password);
            
            
            ResultSet resultSet = pstmt.executeQuery();
            if(resultSet.next()){
                String name= resultSet.getString("name");
            HttpSession session=request.getSession();  
            session.setAttribute("uname",username); 
            session.setAttribute("name",name);
            response.sendRedirect(request.getContextPath() + "/userhome.jsp");
            }
            
            else{
            out.println("User is not registered yet......");
            out.println("Maybe the password or username is Incorrect");
            }
            
            out.println("done");
            }
            catch(Exception e){
                e.printStackTrace();
                out.println("ERROR..........................................ssss");
                
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


