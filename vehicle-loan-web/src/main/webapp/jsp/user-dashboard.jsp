<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>User Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../css/homepage.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="main.js"></script>
    
</head>
<body>

    <html>
            <div class="user-dashboard">
                    <div style="float:right;"><a href="home.html"><img src="icon.png" width="40px" height="40px"aria-hidden="true"> SignOut</a></div>
                    <div style="float:left; color:white;margin-left:15px;margin-top: 10px">Hi...User</div>  <!--Insert user name from session variable -->
            </div>
            <section class="cards-section">
                <h3 class="title"> User details..</h3>
                <div class="row-cards">
                    <div class="card">
                        <div class="dash-card">
                            <img src="../resources/application-form.png" style="width:50px ; height:50px;">
                            <p> Application-Form</p>
                            <button class="card-button">More Details</button>
                        </div>
                    </div>

                    <div class="card">
                            <div class="dash-card">
                                <img src="../resources/offer-card.jpg" style="width:50px ; height:50px;">
                                <p> Offers </p>
                                <button class="card-button">More Details</button>
                            </div>
                        </div>

                        <div class="card">
                                <div class="dash-card">
                                    <img src="../resources/card-loan.svg" style="width:50px ; height:50px;">
                                    <p>New Loan</p>
                                    <button class="card-button">More Details</button>
                                </div>
                            </div>

                            <div class="card">
                                    <div class="dash-card">
                                        <img src="../resources/card-user-details.png" style="width:50px ; height:50px;">
                                        <p> your Details</p>
                                        <button class="card-button">More Details</button>
                                    </div>
                                </div>
                </div>
            </section>  
            
        
        </body>
</html>