/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trackcode;
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 *
 * @author RISHABH
 */
@WebServlet("/App")
public class FirstServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         PrintWriter out = response.getWriter();
         out.println("<title>TRACKCODE</title>");
         out.println("<h1>This is main page of servlet</h1>");
         
    }
}
