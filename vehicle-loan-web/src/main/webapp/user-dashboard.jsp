<%@page import="com.lti.vehicleloan.entity.UserCredentials"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>User Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="homepage.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="main.js"></script>
    
</head>
<body>
<%UserCredentials user = (UserCredentials) request.getSession().getAttribute("userCredentialsSession"); %>
            <div class="user-dashboard">
                    <div style="float:right;"><a href="home.html"><img src="icon.png" width="40px" height="40px"aria-hidden="true"> SignOut</a></div>
                    <div style="float:left; color:white;margin-left:15px;margin-top: 10px">Hi!  <%=user.getUserPersonalDetails().getName() %>
            </div>
            <section class="cards-section">
                <h3 class="title"> User details..</h3>
                <div class="row-cards">
                    <div class="card">
                        <div class="dash-card">
                            <img src="application-form.png" style="width:50px ; height:50px;">
                            <p> Application-Form</p>
                            <button class="card-button">More Details</button>
                        </div>
                    </div>

                    <div class="card">
                            <div class="dash-card">
                                <img src="offer-card.jpg" style="width:50px ; height:50px;">
                                <p> Offers </p>
                                <button class="card-button">More Details</button>
                            </div>
                        </div>

                        <div class="card">
                                <div class="dash-card">
                                    <img src="card-loan.svg" style="width:50px ; height:50px;">
                                    <p>New Loan</p>
                                    <form action="success.jsp">
                                    <button type="submit" class="card-button">More Details</button>
                                    </form>
                                </div>
                            </div>

                            <div class="card">
                                    <div class="dash-card">
                                        <img src="card-user-details.png" style="width:50px ; height:50px;">
                                        <p> your Details</p>
                                        <button  id="userDetails" class="card-button">More Details</button>
                                    </div>
                                </div>
                </div>
            </section>
<div id="details" >
	<table border="2px black solid" align="center" style="border-collapse:collapse;">
		<th>Name</th>
		<th>Age</th>
		<th>Gender</th>
		<th>Mobile Number</th>
		<th>Yearly Salary</th>
		<th>Type of Employment</th>
		<tr>
			<td><%=user.getUserPersonalDetails().getName() %></td>
			<td><%=user.getUserPersonalDetails().getAge()%></td>
			<td><%=user.getUserPersonalDetails().getGender()%></td>
			<td><%=user.getUserPersonalDetails().getMobileNumber()%></td>
			<td><%=user.getUserPersonalDetails().getYearlySalary()%></td>
			<td><%=user.getUserPersonalDetails().getTypeOfEmployement()%></td>
		</tr>
	</table>
</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script>
              $(document).ready(function(){
            	  $("#details").hide();
            	  
            	  $("#userDetails").click(function(){
                    	$("#details").show();
  					//$("#userDetails").hide();
  							});
            	  
            	  
				});
              
              

                
	</script>
</html>