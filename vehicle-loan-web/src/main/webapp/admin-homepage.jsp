<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin-Home-Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="homepage.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="main.js"></script>
    
</head>
<body>
        <div class="adminhomepage">
            
                <a class="active" style="float:left" href="home.html"><i class="fa fa-home icon" aria-hidden="true">Home</i></a>
                <a style="float:right" href="home.html">LogOut</a>
        </div>
        <div>
                <h1 align="center">Admin Dashboard</h1>
        </div>
        <div>
                <div>
                <form action="admin.lti" method="post">
                <button  name = "clients" value="yes"  type="submit">Clients</button>
                </div>
                </form>
                <div><a href="applications.html"><button>Applications</button></a></div>
                <div><a href="rejected-list.html"><button>Rejected Lists</button></a></div>
        </div>
    
</body>
</html>