<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" href="homepage.css">
</head>
<body>
        <div class="homepage">
               
                <a class="active" href="home.html"><i class="fa fa-home icon" aria-hidden="true"> Home</i></a>
                <a style="float:right" href="login-register.jsp">Login/Register</a>
                <a style="float:left" href="EmiCalculator.html">EMI Calculator</a>
                <a style="float:left" href="eligibility-criteria.html">Eligibility Criteria</a>
         <!--       <form action="application-form-prefiller.lti">
                <input type="submit" value="Apply Loan"/>                
                </form>-->
                 <a style="float:left" href="application-form-prefiller.lti">Apply Loan</a> 
                <a style="float:left" href="application-status.html">Application Status</a>
        </div>
        
        
        <div class="slideshow-container">
                <div class="mySlides fade">
                        <div class="numbertext">1/3</div>
                        <!--div class="section-image" style="width:initial"-->
                                <img  height="500" width="100%" src="mini-cooper.jpg" alt="New Car Loan">
                                <!--div class="text" >Tag1</div-->
                </div>
                <div class="mySlides fade">
                        <div class="numbertext">2/3</div>
                      
                                <img height="500" width="100%" src="skoda-octavia.jpg" alt="New Car Loan">
                                <!--div class="text" >Tag2</div-->
                        </div>
                </div>
                
                <div class="mySlides fade">
                        <div class="numbertext">3/3</div>
                       
                                <img height="500" width="100%" src="pexels.jpeg" alt="New Car Loan"style="width:100%">
                                <!--div class="text" >Tag3</div-->
                </div>
        </div>
                <div></div>

                <div style="text-align:center">
                                <span class="dot"></span> 
                                <span class="dot"></span> 
                                <span class="dot"></span> 
                </div>

                <div class="footer" style="width:100%;display:inline-block;">
                        <div style="width:25%;float:left;"><a href="about_us.jsp" ><i class="fa fa-user icon" aria-hidden="true"> About Us</i></a></div>
                        <div style="width:25%;float:left;"><a href="contact.html"><i class="fa fa-phone icon" aria-hidden="true"> Contact Us</i></a></div>
                        <div style="width:25%;float:left;"><a href="locate.html"><i class="fa fa-map-marker icon" aria-hidden="true"> Locate Us</i></a></div>
                        <div style="width:25%;float:left;"><a href="help.html"><i class="fa fa-question-circle icon" aria-hidden="true"> Help</i></a></div>
                </div>

                <script>
                                var slideIndex = 0;
                                showSlides();
                                
                                function showSlides() {
                                  var i;
                                  var slides = document.getElementsByClassName("mySlides");
                                  var dots = document.getElementsByClassName("dot");
                                  for (i = 0; i < slides.length; i++) {
                                    slides[i].style.display = "none";  
                                  }
                                  slideIndex++;
                                  if (slideIndex > slides.length) {slideIndex = 1}    
                                  for (i = 0; i < dots.length; i++) {
                                    dots[i].className = dots[i].className.replace(" active", "");
                                  }
                                  slides[slideIndex-1].style.display = "block";  
                                  dots[slideIndex-1].className += " active";
                                  setTimeout(showSlides, 2000); // Change image every 2 seconds
                                }
                                </script>
</body>
</body>
</html>