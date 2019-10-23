<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
            <link rel="stylesheet" type="text/css" href="../css/application-form.css"/>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            
    </head>
    <body>
            <div class="forms">
                    <ul class="tab-group">
                        <li class="tab active"><a href="#login" id="login">Login</a></li>
                        <li class="tab"><a href="#signup" id="signup">Sign Up</a></li>
                    </ul>
                    <form action="../login.lti" method ="post" id="loginmain">
                        <div class="title">Login</div>
                          <div class="input-container">
                            <i class="fa fa-envelope icon" aria-hidden="true" style="width: 10%;float:left;"></i>
                            <input type="email" name="email" placeholder="Email" required="email" style="width: 89%;float:left;"/>
                          </div>
                          <div class="input-container">
                            <i class="fa fa-lock icon" aria-hidden="true"style="width: 10%;float:left;"></i>
                            <input type="password" name="password" placeholder="Password" required="password"style="width: 89%;float:left;"/>
                            <h3>${invalidCredentials}</h3>
                          </div>
                          <div class="text-center">
                                <button>LOGIN</button>
                          </div class="text-center"> 
                          <div>  
                            <p class="text-p" style="float:right"> <a href="#">Forgot password?</a> </p>
                          </div>
                      </form>
                      
                      <form action="register.lti" name="signupForm" method="post" id="signupmain" onSubmit="return validate()" >
                          <div class="title">Sign Up</div>
                           <div class="input-container"> 
                              <i class="fa fa-user icon" aria-hidden="true" style="width: 10%;float:left;"></i>
                              <input type="text"  id="user" placeholder="Username" style="width: 89%;float:left;"/>
                              <p id="name" class="error"></p>
                           </div>
                                
                         
                            <div class="input-container"> 
                                <i class="fa fa-mobile icon" aria-hidden="true" style="width: 10%;float:left;"></i>
                                <input type="text"  id="mobile" placeholder="Mobile Number" style="width: 89%;float:left;" />
                                <p id="number" class="error"></p>
                              </div>

                           <div class="input-container"> 
                              <i class="fa fa-envelope icon" aria-hidden="true" style="width: 10%;float:left;"></i>
                              <input type="email" id="email"placeholder="Email" style="width: 89%;float:left;" required/>
                              <p id="emailid" class="error"></p>
                           </div>

                           <div class="input-container"> 
                              <i class="fa fa-lock icon" aria-hidden="true" style="width: 10%;float:left;"></i>
                              <input type="password"  id="password" placeholder="Password"style="width: 89%;float:left;" required/>
                              <p id="psw" class="error"></p>
                           </div>

                           <div class="input-container">
                              <i class="fa fa-lock icon" aria-hidden="true" style="width: 10%;float:left;"></i>
                              <input type="password" id="confirmpassword" placeholder="Re-enter Password" style="width: 89%;float:left;" required/>
                              <p id="confirmpsw" class="error"></p>
                           </div>

                           <div  class="text-center">
                               <button type="submit" id="signin">SIGN UP</button>
                              <!--div class="button" id="signup">SIGN UP</div-->
                           </div>
                      </form>
                </div>
          

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                <script type="text/javascript">
                   $(document).ready(function(){
                  $('#signupmain').hide();
                  $('#loginmain').show();

                  $( "#signup" ).click(
        function() {
                $( this ).css('border-right','none');
                //$( this ).css('border-left','1px solid black');
                $( this ).css('border-bottom','none');
                $(this).css('border-top','3px solid  #1AB297');
                $( this ).css('background-color','#fff');
                $( "#login" ).css('border-left','none');
                $( "#login" ).css('border-top','none');
                //$( "#login").css('border-bottom','1px solid black');
                $( "#login" ).css('background-color','#e5e6e7');
                $( "#login" ).css('color','#888');
        }
    );
   $( "#login" ).click(
        function() {
                // $( "#login" ).css('border-right','1px solid black');
                $( "#signup" ).css('background-color','#e5e6e7');
                $( "#signup" ).css('color','#888');
                //$( this ).css('border-left','1px solid #dbe2e8');
                $( this ).css('border-bottom','none');
                $( this ).css('background-color','#fff');
                //$( "#signup").css('border-bottom','1px solid black');
                $( "#signup").css('border-top','none');
                $(this).css('border-top','3px solid  #1AB297');
        }
    );

                  $('#login').click(function(){
                      $('#signupmain').hide();
                      $('#loginmain').show();
                  });
                  $('#signup').click(function(){
                      $('#signupmain').show();
                      $('#loginmain').hide();
                  });
              }) ;
                   
                /*   $('#signin').click(function(){
                	   alert("You have successfully registered! You can login now.")
                   })  */
                </script>




                </script>
<script ="text/javascript">
 function  validate(){  
            var uname=document.getElementById('user').value;
            var unumber=document.getElementById('mobile').value;
            var uemail=document.getElementById('email').value;
            var upassword=document.getElementById('password').value;
            var confirmpassword=document.getElementById('confirmpassword').value;
           
            var flag=0;
              
            if (uname.length!=8){  
              document.getElementById("name").innerHTML="*Invalid username*";  
              flag=1;  
            }
            if (mobile.length!=10){  
              document.getElementById("number").innerHTML="*Enter correct mobile number*";  
              flag=1;  
            }
            if(password.length<8 || password.length>15) {
                document.getElementById("psw").innerHTML="*Length should be between 8 to 15 characters*";
                flag=1;  
            }
            if(password!=confirmpassword) {
                document.getElementById("confirmpsw").innerHTML="*Passwords do not match*";
                flag=1;  
            }
            if(flag==1)
                return false;
            return true;
        }
/*function validate(){  
    var uname=document.signupForm.user.value;  
   
    var password=document.signupForm.password.value;
      
    var status=false;  
      
 if(uname.length<6){  
    document.getElementById("name").innerHTML="Please enter your name";  
    status=false;  
    }else{  
    status=true;
    } 
    if(password.length<8){  
    document.getElementById("psw").innerHTML="Password must be at least 8 char long ";  
    status=false;  
    }else{  
    }  
    return status;  
    } */ 
    </script>
    </body>
     </html>
