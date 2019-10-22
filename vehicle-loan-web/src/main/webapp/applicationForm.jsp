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
    <link rel="stylesheet" href="style.css">
</head>
<body>

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
                                        <input type="text" name="firstName" id="first_name" />
                                        <span class="text-input">First</span>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="lastName" id="last_name" />
                                        <span class="text-input">Last</span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                  <div class="form-flex">
                                    <div class="form-group">
                                        <label class="form-label">Age</label>
                                        <input type="number" name="age" id="age" />
                                        <span class="number"></span>
                                    </div>
                                    <div class="form-group">
                                        <label class="form-label">Gender</label>
                                        <input type="text" name="gender" id="gender" />
                                        <span class="text-input"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                    <div class="form-flex">
                                     <div class="form-group">
                                        <label class="form-label">Mobile Number</label>
                                         <input type="tel" name="mobileNumber" id="mobile" />
                                         
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
                                        <input type="text" name="address" id="address" />
                                      
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
                                        <input type="text" name="typeOfEmployment" id="employment" />
                                    </div>

                                <div class="form-group">
                                            <label for="salary" class="form-label">Annual Salary</label>
                                            <input type="number" name="salary" id="salary" />
                                     </div>

                                <div class="form-group">
                                                <label for="existing-emi" class="form-label">Existing EMI</label>
                                                <input type="number" name="existingEmi" id="existing-emi" />
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

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="vendor/jquery-validation/dist/additional-methods.min.js"></script>
    <script src="vendor/jquery-steps/jquery.steps.min.js"></script>
    <script src="vendor/minimalist-picker/dobpicker.js"></script>
    <script src="vendor/nouislider/nouislider.min.js"></script>
    <script src="vendor/wnumb/wNumb.js"></script>
    <script src="main.js"></script>
</body>

</html>