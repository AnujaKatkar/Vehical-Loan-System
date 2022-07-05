<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- <meta name="author" content="colorlib.com"> -->
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <title>Loan Application Form</title>
 <link rel="stylesheet" type="text/css" href="application-form.css"/>
</head>
<body>
<div class="forms">
<ul class="tab-group">
<li class="tab active"><a href="#personalInfo" id="personalinfo">Personal Information</a></li>
<li class="tab"><a href="#vehicleDetails" id="vehicleDetails">Vehicle Details</a></li>
<li class="tab"><a href="#loanDetails" id="loanDetails">Loan Details</a></li>
<li class="tab"><a href="#uploadDocuments" id="docsDetails">Upload Documents</a></li>
</ul>
			<div class="first-page">
            <form method="POST" id="personalInfo-form" class="personalinfo-form" action="application-form.lti" enctype="multipart/form-data">
				<div class="title">Personal Information</div>
				<div class="input-container">
					First Name:
				<input type="text" name="firstName" id="first_name" />
				</div>
				<div class="input-container">
					Last Name:
				<input type="text" name="lastName" id="last_name" />
				</div>
				<div class="input-container">
					Age:
                <input type="number" name="age" id="age" />
				</div>
				<div class="input-container">
					Gender:
                <input type="text" name="gender" id="gender" />
				</div>
				<div class="input-container">
					Mobile Number:
				<input type="tel" name="mobileNumber" id="mobile" />
				</div> 
				<div class="input-container">
					Email:
                <input type="email" name="email" id="email" />
				</div> 
				<div class="input-container">
					Building/Flat no.
                <input type="text" name="building" id="address" />
				</div> 
				<div class="input-container">
					City:
                <input type="text" name="city" id="city" />
				</div> 
				<div class="input-container">
					State:
                <input type="text" name="state" id="state" />
				</div> 
				<div class="input-container">
					Pincode:
                <input type="number" name="pincode" id="pincode" />
				</div>
				<div class="title" >
					Employment details :
                
				</div>
				<div class="input-container">
					Type of employment :
						<select name="typeOfEmployemnet" class="select1">

								<option value="salaried">Salaried</option>
								<option value="selfEmployed">Self-Employed</option>
																
							  </select>
				</div> 
				<div class="input-container">
					Yearly salary:
                <input type="number" name="salary" id="salary" />
				</div> 
				<div class="input-container">
					Existing EMI:
                <input type="number" name="existingEmi" id="existing-emi" />
				</div>
			
                <div  class="text-center">
				</div>
			</div>
				
				<!--form method="POST" id="vehicle-form" class="vehicle-form" action="application-form.lti" enctype="multipart/form-data"-->
				<div class="second-page" style="padding:30px";>
				<div class="title">Vehicle Details</div>
				<div class="input-container">
					Car Make:
                <input type="text" name="carMake" id="car-make" />
				</div>
				<div class="input-container">
					Car Model:
                <input type="text" name="carModel" id="car-model" />
				</div>
				<div class="input-container">
					Ex-ShowRoom Price:
                <input type="number" name="ExShowroomPrice" id="Ex-showroom-price" />
				</div>

				<div  class="text-center">
                </div>
				</div>

				<div class="third-page" style="padding:30px";>
				<!--form method="POST" id="loan-form" class="loan-form" action="application-form.lti" enctype="multipart/form-data"-->
				<div class="title">Loan Details</div>
				<div class="input-container">
					Loan Amount:
                <input type="number" name="loanAmount" id="loan-amount" />
				</div>
				<div class="input-container">
					Loan Tenure:
                <input type="number" name="loanTenure" id="loan-tenure" />
				</div>
				<div class="input-container">
					Rate Of Interest:
                <input type="number" name="rateOfInterest" id="ROi" />
				</div>
				<div  class="text-center">
                </div>
			</div>
				
				<!--form method="POST" id="upload-form" class="upload-form" action="application-form.lti" enctype="multipart/form-data"-->
				<div class="fourth-page"  style="padding:30px";>
				<div class="title">Upload Documents</div>
				<div class="input-container">
					Aadhar Card:
                <input type="file" name="aadharCard" id="aadhar-card" />
				</div>
				<div class="input-container">
					Pan Card:
                <input type="file" name="panCard" id="pan-card" />
				</div>
				<div class="input-container">
					Salary Slip:
                <input type="file" name="salarySlip" id="salary-slip" />
				</div>
				<div class="input-container">
					Bank Details:
                <input type="file" name="photo" id="photo" />
				</div>
				<div  class="text-center">
                <button type ="submit">Submit</button>          
				</div>
			</div>
                </form>
			
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	$('.first-page').show();
	$('.second-page').hide();
	$('.third-page').hide();
	$('.fourth-page').hide();
	
	
	$( "#vehicleDetails" ).click(
        function() {
                $( this ).css('border-right','none');
                $( this ).css('border-left','1px solid black');
                $( this ).css('border-bottom','none');
                $(this).css('border-top','3px solid  #ff0000');
				$( this ).css('background-color','#fff');
				$( this ).css('color','#000000');
             
                 $( "#personalinfo" ).css('border-top','3px solid  #1AB297');
				 $( "#personalinfo" ).css('border-left','0px');

        }
    );
	
	$( "#loanDetails" ).click(
        function() {
                $( this ).css('border-right','none');
                $( this ).css('border-left','1px solid black');
                $( this ).css('border-bottom','none');
                $(this).css('border-top','3px solid  #ff0000');
				$( this ).css('background-color','#fff');
				$( this ).css('color','#000000');
                
				$( "#personalinfo" ).css('border-top','3px solid  #1AB297');

				$( "#vehicleDetails" ).css('border-top','3px solid  #1AB297');
				$( "#personalinfo" ).css('border-left','0px');
				$( "#vehicleDetails").css('border-left','0px');
               

        }
    );
	
	$( "#docsDetails").click(
        function() {
                $( this ).css('border-right','none');
                //$( this ).css('border-left','1px solid black');
                $( this ).css('border-bottom','none');
                $(this).css('border-top','3px solid  #1AB297');
				$( this ).css('background-color','#fff');
				$( this ).css('color','#000000');
				$( "#personalinfo" ).css('border-top','3px solid  #1AB297');
				$( "#vehicleDetails" ).css('border-top','3px solid  #1AB297');
				$( "#loanDetails" ).css('border-top','3px solid  #1AB297');
				$( "#personalinfo" ).css('border-left','0px');
				$( "#vehicleDetails").css('border-left','0px');
				$( "#loanDetails").css('border-left','0px');
               

        }
    );

	


$('#personalinfo').click(function(){
	$('.first-page').show();
	$('.second-page').hide();
	$('.third-page').hide();
	$('.fourth-page').hide();
	
});
$('#vehicleDetails').click(function(){
	$('.first-page').hide();
	$('.second-page').show();
	$('.third-page').hide();
	$('.fourth-page').hide();
});
$('#loanDetails').click(function(){
	$('.first-page').hide();
	$('.second-page').hide();
	$('.third-page').show();
	$('.fourth-page').hide();
});
$('#docsDetails').click(function(){
	$('.first-page').hide();
	$('.second-page').hide();
	$('.third-page').hide();
	$('.fourth-page').show();
});

});



</script>
</body>
</html>