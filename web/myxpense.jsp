<%-- 
    Document   : userhome
    Created on : Jul 4, 2024, 8:32:08 AM
    Author     : RISHABH
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ExpenseTracker</title>
        
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        
    </head>
    <body style="background: url(image/home.png); background-size: cover; background-attachment: fixed;">
        
        <!--1. Establishing DB connection-->  
        <sql:setDataSource driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3306/trackcode" user ="root" password="Rishabh@06" var="ds"></sql:setDataSource>
       
        <!--2.fetching the result set-->
        <sql:query dataSource="${ds}" var="rs">
            select * from expense_report;
        </sql:query>
            
           <!--Fetching the session username-->
           
          <!--Navbar-->
          <div class="navbar-fixed" >
        <nav style="background-color: black;">
          <div class="nav-wrapper" >
           
          <a href="#" class="brand-logo" style="font-family: 'Tahoma',  sans-serif; margin-left: 50px; " >ExpenseTracker</a>
          <ul id="nav-mobile" class="right hide-on-med-and-down" >
            
            <li><a href="userhome.jsp">New Expense</a></li>
            <li><a href="#">My Expenses</a></li>
            <li><a href="Logout">Logout</a></li>
          </ul>
          </div>
        </nav>
        </div>
          <h3 style="padding: 5px; color: white;  text-align: center; " ><u>Your Expense Report</u></h3>
         <!--Table-->
         <div style="padding: 15px; ">
         <table class="table" style="background-color: white;  
            color: black;border-radius: 0.5em">
  <thead>
    <tr>
        <th scope="col" >S.No</th>
      <th scope="col">Expense Name</th>
      <th scope="col">Expense Category</th>
      <th scope="col">Expense Date</th>
      <th scope="col">Expense Amount</th>
    </tr>
  </thead>
  <tbody>
      <c:set var="idd" value="1"></c:set>
      
      <c:forEach items="${rs.rows}" var="row"> 
          <c:if test="${sessionScope.uname==row.email}">
    <tr>
      <th scope="row"><c:out value="${idd}"></c:out></th>
      <td><c:out value="${row.expense_name}"></c:out></td>
      <td><c:out value="${row.expense_category}"></c:out></td>
      <td><c:out value="${row.expense_date}"></c:out></td>
      <td><c:out value="${row.expense_amount}"></c:out></td>
    </tr>
   
<c:set var="idd" value="${idd + 1}" scope="page" />
</c:if>
     </c:forEach>
    
      </tbody>
  
 
</table>
         </div>
         <!--Footer--> 
         
         
           
         
         <!--JQUERY.............-->
         
         
         <script>
         M.AutoInit();
         </script> 

    </body>
</html>
