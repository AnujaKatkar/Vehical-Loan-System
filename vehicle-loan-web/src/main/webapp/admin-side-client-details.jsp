<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.lti.vehicleloan.entity.UserPersonalDetails" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="2px black solid" align="center" style="border-collapse:collapse;">
		<th>Name</th>
		<th>Age</th>
		<th>Gender</th>
		<th>Mobile Number</th>
		<th>Yearly Salary</th>
		<th>Type of Employment</th>
		<c:forEach var="user" items="${userPersonalDetailsList}">
		<tr>
			<td><${user.name}></td>
			<td><${user.age}></td>
			<td><${user.gender}></td>
			<td><${user.mobileNumber}></td>
			<td><${user.yearlySalary}></td>
			<td><${user.typeOfEmployement}></td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>