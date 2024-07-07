/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.trackcode;

/**
 * @author RISHABH
 */
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Filter_1 implements Filter{

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
            }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        
        HttpServletRequest req= (HttpServletRequest) request;
        HttpSession s= req.getSession();
        String user =  (String) s.getAttribute("uname");
        if(user!=null){
        chain.doFilter(request, response);
        }
        else{
        response.setContentType("text/html");
        response.getWriter().println("User Not Logged In .... Please Login to go back to the page ");
        response.getWriter().println("<a href='home.jsp'>Home Page</a>");
        }
    }

    @Override
    public void destroy() {
         }
    
}
