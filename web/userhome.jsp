<%-- 
    Document   : userhome
    Created on : Jul 4, 2024, 8:32:08 AM
    Author     : RISHABH
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
          
          <!--Navbar-->
          <div class="navbar-fixed" >
        <nav style="background-color: black;">
          <div class="nav-wrapper" >
           
          <a href="#" class="brand-logo" style="font-family: 'Tahoma',  sans-serif; margin-left: 50px; " >ExpenseTracker</a>
          <ul id="nav-mobile" class="right hide-on-med-and-down" >
            
            <li><a href="#">New Expense</a></li>
            <li><a href="myxpense.jsp">My Expenses</a></li>
            <li><a href="Logout">Logout</a></li>
          </ul>
          </div>
        </nav>
        </div>
          
          <!--FORM-->
          <div class="container" style ="margin-top: 15px;">
            <div class= "col m6 offset-m3">
                <div class="card">
                    <div class="card-content">
                        <!-- Login Form -->
                                 <div class="row">
                            <h3 class="center-align"> ${name} Add Your Expense Here !!</h3>
                        <form class="col s12" action="Expense" method="post" class ="center-align" >
                       <div class="row">
                       <div class="input-field col s12">
                       <input id="expense_name" type="text" name="expensename" >
                       <label for="expense_name">What's your Expense</label>
                       </div>
                           
                       <div class="input-field col s12">
                           <select name="expensecategory" id="expense_category">
                       <option value="" disabled selected>Choose Expense Category</option>
                       <option value="Entertainment">Entertainment</option>
                       <option value="Groceries">Groceries</option>
                       <option value="Dining Out">Dining Out</option>
                       <option value="Rent">Rent</option>
                       <option value="Maintenance">Maintenance</option>
                       <option value="Insurance Premium">Insurance Premium</option>
                       <option value="Shopping">Shopping</option>
                       <option value="Medical Expenses">Medical Expenses</option>
                       <option value="Education">Education</option>
                       <option value="Traveling">Traveling</option>
                       <option value="Utilities">Utilities</option>
                       <option value="Bills & EMIs">Bills & EMIs</option>
                       </select>
                       <label>Category of Expense</label>
                       </div>
             
                       <div class="input-field col s6">
                       <input id="expense_date" type="text" name="expensedate" class="datepicker" >
                       <label for="user_name">Date of Expense</label>
                       </div>
                        
                       <div class="input-field col s6">
                       <input id="expense_amount" type="number" name="expenseamount" >
                       <label for="expense_amount">Amount Of Expense</label>
                       </div>
                           
  
                       </div>
                            <div class="row">
                                <div class="btn-field col s12">
                       <button type="submit" class="btn blue">ADD Expense</button>
                       </div>
                       </div>
    </form>
  </div>
  </div>
                </div></div></div>
         <!--Footer--> 
          <footer class="page-footer" style="background-color: black; ">
          <div class="container">
            <div class="row">
              <div class="col l6 s12">
                <h5 class="white-text">Contact Info</h5>
                <p>Email: www.expensetracker.com</p>
              </div>
              <div class="col l4 offset-l2 s12">
                <h5 class="white-text">Social Media</h5>
                <ul>
                  <li><a class="grey-text text-lighten-3" href="#!">Facebook</a></li>
                  <li><a class="grey-text text-lighten-3" href="#!">Instagram</a></li>

                </ul>
              </div>
            </div>
          </div>
          <div class="footer-copyright">
            <div class="container">
            © 2024 ExpenseTracker, All rights reserved.
            <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
            </div>
          </div>
        </footer>
           
         
         <!--JQUERY.............-->
         
         
         <script>
         M.AutoInit();
         </script> 

    </body>
</html>
