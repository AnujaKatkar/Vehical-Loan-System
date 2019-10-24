<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- <meta name="author" content="colorlib.com"> -->
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="vendor/nouislider/nouislider.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="application-form.css">
</head>
<!-- <body>

    <div class="main">

        <div class="container">
            <form method="POST" id="signup-form" class="signup-form" action="application-form.lti" enctype="multipart/form-data">
                <div>
                    <h3>Personal info</h3>
                    <fieldset>
                        <h2>Personal information</h2>
                        <p class="desc">Please enter your infomation and proceed to next step so we can build your account</p>
                        <div class="fieldset-content">
                            <div class="form-row">
                                <label class="form-label">Name</label>
                                <div class="form-flex">
                                    <div class="form-group">
                                        <input type="text" name="firstName" id="first_name"  value="${FirstName}"/>
                                        <span class="text-input">First</span>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="lastName" id="last_name" value="${LastName }"/>
                                        <span class="text-input">Last</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                  <div class="form-flex">
                                    <div class="form-group">
                                        <label class="form-label">Age</label>
                                        <input type="number" name="age" id="age" value="${Age}"/>
                                        <span class="number"></span>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">Gender</label>
                                        <input type="text" name="gender" id="gender" value="${Gender}"/>
                                        <span class="text-input"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                    <div class="form-flex">
                                     <div class="form-group">
                                        <label class="form-label">Mobile Number</label>
                                         <input type="tel" name="mobileNumber" id="mobile" value="${MobileNumber}"/>
                                         
                                     </div>
                                     <div class="form-group">
                                         <label class="form-label">Email Id </label>
                                         <input type="email" name="email" id="email" />
                                         
                                     </div>
                                 </div>
                             </div>
                         
                     
                         <div class="form-group">
                             <label for="password" class="form-label">Password</label>
                             <input type="password" name="password" id="password" />
                         </div>
                         <div class="form-row">
                                <label class="form-label">Address</label>
                                <div class="form-flex">
                                    <div class="form-group">
                                            <label class="form-label">Flatno. / Building </label>
                                        <input type="text" name="building" id="building" />
                                      
                                    </div>
                                    <div class="form-group">
                                            <label class="form-label">City</label>
                                        <input type="text" name="city" id="city" />
                                        
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="form-row">
                                       <div class="form-flex">
                                        <div class="form-group">
                                                <label class="form-label">State </label>
                                            <input type="text" name="state" id="State" />
                                           
                                        </div>
            `                            <div class="form-group">
                                                <label class="form-label">Pincode</label>
                                            <input type="number" name="pincode" id="pincode" />
                                            
                                        </div>
                                        
                                    </div>
                                </div>
                    </fieldset>

                    <h3>Employment details</h3>
                    <fieldset>
                        <h2>Employment details</h2>
                        <p class="desc">Please enter your infomation and proceed to next step so we can build your account</p>
                        <div class="fieldset-content">
                        
                                <div class="form-group">
                                        <label for="employment" class="form-label">Type of Employment</label>
                                        <input type="text" name="typeOfEmployment" id="employment" value="${ TypeOfEmployment}" />
                                    </div>

                                <div class="form-group">
                                            <label for="salary" class="form-label">Annual Salary</label>
                                            <input type="number" name="salary" id="salary" value ="${ Salary}"/>
                                     </div>

                                <div class="form-group">
                                                <label for="existing-emi" class="form-label">Existing EMI</label>
                                                <input type="number" name="existingEmi" id="existing-emi" value ="${ExistingEmi }"/>
                                    </div>
                    </fieldset>

                    <h3>Vehicle details</h3>
                    <fieldset>
                            <h2>Vehicle details</h2>
                            <p class="desc">Please enter your infomation and proceed to next step so we can build your account</p>
                            <div class="fieldset-content">
                            
                                    <div class="form-group">
                                            <label for="car-make" class="form-label">Car company</label>
                                            <input type="text" name="carMake" id="car-make" />
                                        </div>
    
                                    <div class="form-group">
                                                <label for="car-model" class="form-label">Car Model</label>
                                                <input type="text" name="carModel" id="car-model" />
                                         </div>
    
                                    <div class="form-group">
                                                    <label for="Ex-showroom-price" class="form-label">Ex Showroom Price </label>
                                                    <input type="number" name="ExShowroomPrice" id="Ex-showroom-price" />
                                        </div>
                    </fieldset>
                    <h3>Loan details</h3>
                    <fieldset>
                            <h2>Loan details</h2>
                            <p class="desc">Please enter your infomation and proceed to next step so we can build your account</p>
                            <div class="fieldset-content">
                            
                                    <div class="form-group">
                                            <label for="loan-amount" class="form-label">Loan Amount</label>
                                            <input type="number" name="loanAmount" id="loan-amount" />
                                        </div>
    
                                    <div class="form-group">
                                                <label for="loan-tenure" class="form-label">Loan Tenure in months</label>
                                                <input type="number" name="loanTenure" id="loan-tenure" />
                                         </div>
    
                                    <div class="form-group">
                                                    <label for="ROI" class="form-label">Rate of Interest </label>
                                                    <input type="number" name="rateOfInterest" id="ROi" />
                                        </div>
                    </fieldset>
                    <h3>Identification details</h3>
                    <fieldset>
                            <h2>Identification details</h2>
                            <p class="desc">Please enter your infomation and proceed to next step so we can build your account</p>
                            <div class="fieldset-content">
                            
                                    <div class="form-group">
                                            <label for="aadhar-card" class="form-label">Aadhar card</label>
                                            <input type="file" name="aadharCard" id="aadhar-card" />
                                        </div>
    
                                    <div class="form-group">
                                                <label for="pan-card" class="form-label">Pan Card</label>
                                                <input type="file" name="panCard" id="pan-card" />
                                         </div>
    
                                    <div class="form-group">
                                                    <label for="photo" class="form-label">Bank Details </label>
                                                    <input type="file" name="photo" id="photo" />
                                        </div>
                                        
                                    <div class="form-group">
                                            <label for="salary-slip" class="form-label">Six Months salary slip</label>
                                            <input type="file" name="salarySlip" id="salary-slip" />
                                </div>
                    </fieldset>
                </div>
                
                <input type="submit" value="SUBMIT"/>
            </form>
        </div>

    </div>-->

    <!-- JS
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
    <script src="vendor/jquery-steps/jquery.steps.min.js"></script>
    <script src="vendor/minimalist-picker/dobpicker.js"></script>
    <script src="vendor/nouislider/nouislider.min.js"></script>
    <script src="vendor/wnumb/wNumb.js"></script>
    <script src="main.js"></script>
</body>  -->

<body>
<div class="forms">
<ul class="tab-group">
<li class="tab active"><a href="#personalInfo" id="personalinfo">Personal Information</a></li>
<li class="tab"><a href="#vehicleDetails" id="vehicleDetails">Vehicle Details</a></li>
<li class="tab"><a href="#loanDetails" id="loanDetails">Vehicle Details</a></li>
<li class="tab"><a href="#uploadocuments" id="docsDetails">Upload Documents</a></li>
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
				<div class="input-container">
					Type Of Employment:
                <input type="text" name="typeOfEmployment" id="employment" />
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
				<div class="second-page">
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

				<div class="third-page">
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
				<div class="fourth-page">
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

	

	/*$('#loan-form').hide();
    $('#upload-form').hide();
    $('#personalInfo-form').show();
    $('#vehicle-form').hide();	
$('#personalinfo').click(function(){
    $('#loan-form').hide();
    $('#upload-form').hide();
    $('#personalInfo-form').show();
    $('#vehicle-form').hide();
});
$('#vehicleDetails').click(function(){
	$('#loan-form').hide();
    $('#upload-form').hide();
    $('#personalInfo-form').hide();
    $('#vehicle-form').show();
});
$('#loanDetails').click(function(){
	$('#loan-form').show();
    $('#upload-form').hide();
    $('#personalInfo-form').hide();
    $('#vehicle-form').hide();
});
$('#docsDetails').click(function(){
	$('#loan-form').hide();
    $('#upload-form').show();
    $('#personalInfo-form').hide();
    $('#vehicle-form').hide();
});
$('#userdet').click(function(){
	$('.first-page').hide();
	$('.second-page').show();
	$('.third-page').hide();
	$('.fourth-page').hide();
});*/
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