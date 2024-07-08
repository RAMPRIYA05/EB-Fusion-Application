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
	box-sizing:border-box;
}

body {
	background-repeat: no-repeat;
	background-image: url(adminHomeImage.jpg);
	background-attachment: fixed;
	background-size: cover;
	width: auto;
	min-height: 100vh;   
    
}

.logo {
	size: 30px;
	height: 60px;
	margin-left: 15px;
	
	margin-top: 15px;
}

nav {
	background-color: brown;
	position: sticky;
	width: 100%;
    margin: 0;
    padding: 0;
    top: 0;
    left: 0;
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

.card {
margin-left:65px !important;
    background-color: #fff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    margin: 20px;
    padding: 15px;
    width: 300px;
    
    display: inline-block;
    vertical-align: top;
}

.card h3 {
    font-size: 18px;
    margin-bottom: 10px;
    color: brown;
}

/* .card p {
    color: #666;
    margin-bottom: 15px;
} */

.card a {
    color: #3498db;
    text-decoration: none;
    display: block;
    text-align: center;
}

.card img {
    max-width: 100%; 
    height: 200px;
    object-fit: cover;
    border-radius: 8px;
    margin-bottom: 10px;
}

</style>

</head>
<body>

<nav>

 <img class="logo" src="ebLogo.jpg" alt="Logo">
 <p style="color:white;font-size:300%;font-weight:100;margin-left:50px;font-style:italic;">EB FUSION EB SERVICES AND ITS PAYMENT</p>
   <ul>
  <li><a href="">Home</a><li>
  <li><a href="">About Us</a></li>
  <li><a href="">Contact Us</a></li>
  <li><a href="userProfile" method="get">Profile</a></li>      
  <li><a href="logOut">LogOut</a></li>
</nav>
                    
                   <!-- <a style="margin-left:550px;" href="customerDetailsRegister.jsp">Add Customer Property Details</a><br>
                   <a style="margin-left:550px;" href="/readCustomerProperty" method="get">Customer Property Details</a> -->
                  


<div class="card">
<h3>Apply for new Connection</h3>
<img src="newConnection.jpg" alt="Apply For New Connection Image">
<a href="applyNewConnection.jsp">Apply</a>
</div>

<div class="card">
<h3>Applied Connection</h3>
<img src="applied.jpg" alt="Applied Connection Image">
<a href="/readAppliedConnection" method="get">View</a>
</div>

<div class="card">
<h3>Approved Connection Details</h3>
<img src="approved.jpg" alt="Approved Connection Image">
<a href="/approvedConnection" method="get">View</a>
</div>

<div class="card">
<h3>Bill</h3>
<img src="viewBill.png" alt="View Bill Image">
<a href="/readParticularBill" method="get">View</a>
</div>

<div class="card">
<h3>Payment History</h3>
<img src="payment.jpg" alt="View Payment History Image">
<a href="/viewPayedStatus" method="get">View</a>
</div>

<div class="card">
<h3>Paid Bill</h3>
<img src="paidBill.jpg" alt="View Paid Bill Image">
<a href="/readPaidBill" method="get">View</a>
</div>

</body>
</html>