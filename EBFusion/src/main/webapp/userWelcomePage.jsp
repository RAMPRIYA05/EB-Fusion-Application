<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
* {
	margin: 0;
	padding: 0;
}

body {
	background-repeat: no-repeat;
	background-image: url(adminHomeImage.jpg);
	background-attachment: fixed;
	background-size: cover;
}

.logo {
	size: 30px;
	height: 60px;
}

nav {
	background-color: brown;
	opacity: 0.9;
	width: 1250px;
	padding: 10px;
}

.logo, ul, li, p {
	display: inline;
}

li {
	padding-left: 15px;
	cursor: pointer;
}

ul {
	margin-left: 40%;
	padding-left: 5px;
}

a {
	color: gold;
	text-decoration: none;
}
</style>

</head>
<body>

<nav>

 <img class="logo" src="ebLogo.jpg" alt="Logo">
 <p style="color:white;font-size:300%;font-weight:100;padding-left:120px;font-style:italic;">EB FUSION EB SERVICES AND ITS PAYMENT</p>
   <ul>
  <li><a href="">Home</a><li>
  <li><a href="">About Us</a></li>
  <li><a href="">Contact Us</a></li>
  <li><a href="" method="">View Bill</a></li>      

   
  <li><a href="userProfile" method="get">Profile</a></li>      
  <li><a href="">LogOut</a></li>
</nav>
                    
                   <a style="margin-left:550px;" href="customerDetailsRegister.jsp">Add Customer Property Details</a><br>
                   <a style="margin-left:550px;" href="">Customer Property Details</a>
                    
</body>
</html>