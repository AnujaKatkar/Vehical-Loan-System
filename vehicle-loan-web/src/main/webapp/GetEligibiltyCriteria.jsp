<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="get-eligibility.lti" method="post">
Age:<input type="number" name="age"><br/>
Tenure:<input type="number" name="tenure" placeholder="Tenure"/>
<div>
Marital Status:
<input type="radio" name="maritalStatus" value="single" checked/>Single
<input type="radio" name="maritalStatus"value="married" >Married
</div>
<div>
Type of Employment:
<input type="radio" name="typeOfEmployment"value="salaried" checked/>salaried
<input type="radio" name="typeOfEmployment"value="self-employed">Self-Employed
</div>
<div>
Yearly Salary:
<input type="number" name="salary" placeholder="Yearly-Salary"/>
</div>

<div>
Principal Amount:
<input type="number" name="principalAmount" placeholder="PrincipalAmount"/>
</div>
<div>
Previous Loan EMI:
<input type="number" name="previousLoanEMI" placeholder="PreviousLoanEMI"/>
</div>
<div>
Rate of Interest:
<input type="number" name="rateOfInterest" placeholder="RateOfInterest"/>
</div>
<input type="submit" value="SUBMIT">
</form>
<h1>${Statement}</h1>

</body>
</html>
</html>