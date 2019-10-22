<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" media="screen" href="style8.css" />
<script src="main.js"></script>
</head>
<body>
	<div class="container">
		<div class="div1">
			<img src="login.png" class="login-image" alt="IMG"
				style="width: 300px; height: 300px;">
		</div>
		<div class="login" id="content">
			<form class="login-form" style="width: 100%;" action="login.lti" method="post">
				<h1>Member Login</h1>
				<div class="email">
					<i class="fa fa-envelope icon " aria-hidden="true"></i> <input
						class="input-field" type="text" name="email" placeholder="EmailId" />
				</div>
				<div class="password">
					<i class="fa fa-lock icon" aria-hidden="true"></i> <input
						class="input-field" type="password" name="password"
						placeholder="Password" />
				</div>				
				<div class="login1">
					<button type="submit">Login</button>
				</div>
				
				<h3>${invalidCredentials}</h3>
			</form>
		</div>
	</div>
</body>
</html>