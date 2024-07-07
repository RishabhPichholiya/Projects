<%-- 
    Document   : home.jsp
    Created on : Jun 9, 2024, 7:57:55 PM
    Author     : RISHABH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ExpenseTracker</title>
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    
    </head>
    <body style="background: url(image/home.png); background-size: cover; background-attachment: fixed;">
        <div class="container" style ="margin-top: 15px;">
            <div class= "col m6 offset-m3">
                <div class="card">
                    <div class="card-content">
                        <!-- Login Form -->
                        
                        <div class="row">
                        <form class="col s12" action="LoginPage" method="post" class ="center-align" >
                       <div class="row">
                       <div class="input-field col s6">
                       <input id="user_name" type="text" name="username" >
                       <label for="user_name">UserName (Email)</label>
                       </div>
                       <div class="input-field col s6">
                       <input id="password" type="password" name="password">
                       <label for="password">Password</label>
                       </div>
                           
                       </div>
                            <div class="row">
                                <div class="btn-field col s12">
                       <button type="submit" class="btn green">LOGIN</button>
                       </div>
                       </div>
    </form>
  </div>
        

                        
                        <h3 class="center-align">Register Here !!</h3>
                        <h5 id ="msg"class="center-align"></h5>
                        <div class="form" > 
                        <!-- creating form -->
                        <form action="Registration" method="post" class ="center-align" id ="myform"> 
                        
                        <input type="text" name="user_name" placeholder ="Enter your Name" />
                        <input type="email" name="user_email" placeholder ="Enter your Email" />
                        <input type="password" name="user_password" placeholder ="Enter your Password" />
                        
                        <button type="submit" class="btn blue">SUBMIT</button>
                        </form>
                        </div>
                        <div class="loader center-align" style ="margin-top: 15px; display :none;">
                            <div class="preloader-wrapper big active">
                            <div class="spinner-layer spinner-blue">
                            <div class="circle-clipper left">
                            <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-red">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-yellow">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-green">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>
    </div>
                            
                            <h5>Please wait...</h5>
                            
                        </div>
                    </div> 
                </div> 
        </div>
        </div>    
        
        
        
        <script
  src="https://code.jquery.com/jquery-3.7.1.min.js"
  integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
  crossorigin="anonymous"></script>
  
  <script>
      $(document).ready(function(){
          console.log("checking jquery is applied or not.........");
          $("#myform").on('submit',function(event){
              event.preventDefault();
              
              var f = $(this).serialize();
              console.log(f);
              $(".loader").show();
              $(".form").hide();
              $.ajax({
                  url: "Registration",
                  data: f,
                  type:'POST',
                  success: function(data, textStatus, jqXHR){
                      console.log(data);
                      console.log("success ..........................");
                       $(".loader").hide();
                       $(".form").hide();
                       
                       if(data.trim()=== 'done')
                       {
                           $('#msg').html("Successfully Registered...");
                           $('#msg').addClass('green-text');
                       }
                       else{
                           $('#msg').html("Something went wrong, Please Try Again......");
                           $('#msg').addClass('red-text');
                       }
                  },
                  error: function(jqXHR, textStatus, errorThrown){
                      console.log(data);
                      console.log("error ..........................");
                      $(".loader").hide();
                      $(".form").show();
                  }
              })
          })
      });
  </script>
    </body>
</html>
