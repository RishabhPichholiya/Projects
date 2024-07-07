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
public class Expense extends HttpServlet{


   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       //
       try (PrintWriter out = response.getWriter()) {
       
       //Getting data entered by user
       String expensename = request.getParameter("expensename");
       String expensecategory = request.getParameter("expensecategory");
       String expenseamount = request.getParameter("expenseamount");
       String expensedate =request.getParameter("expensedate");
       HttpSession session=request.getSession(); 
       String email = (String) session.getAttribute("uname");
       /*out.println(expensename);
       out.println(expensecategory);
       out.println(expenseamount);
       out.println(expensedate);
       */

       
       //connection 
           try{
                Thread.sleep(1000);
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/trackcode","root","Rishabh@06");
            
            //query
            String q ="insert into expense_report(expense_name,expense_category,expense_amount, expense_date, email) values(?,?,?,?,?)";
            PreparedStatement pstmt =con.prepareStatement(q);
            pstmt.setString(1,expensename);
            pstmt.setString(2,expensecategory);
            pstmt.setInt(3, Integer.parseInt(expenseamount));
            pstmt.setString(4,expensedate);
            pstmt.setString(5,email);
            pstmt.executeUpdate();
            response.sendRedirect(request.getContextPath() + "/myxpense.jsp"); 
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


