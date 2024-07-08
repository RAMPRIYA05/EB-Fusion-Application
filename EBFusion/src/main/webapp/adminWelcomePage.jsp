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
    width: 50px; 
    height: 60px;
}

nav {
    background-color: brown;
    opacity: 0.9;
    width: 1250px;
    padding: 25px;
}

nav .logo,
nav ul,
nav li,
nav p {
    display: inline;
    vertical-align: middle;
}

nav ul {
    margin-left: 20%;
    padding-left: 5px;
}

nav li {
    display: inline-block;
    padding-left: 15px;
    cursor: pointer;
}

nav a {
    color: gold;
    text-decoration: none;
}

.card {
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
 <p style="color:white;font-size:300%;font-weight:100;padding-left:50px;font-style:italic;">EB FUSION EB SERVICES AND ITS PAYMENT</p>               
  <ul>
  <li><a href="#">Home</a></li>
  <li><a href="#">About Us</a></li>
  <li><a href="#">Contact Us</a></li>
   
  <li><a href="listOfUsers">Registered Customer</a></li>
  
   <li> <a href="adminProfile">Profile</a></li>
   <li><a href="logOut">LogOut</a></li>
  </ul>

</nav>
 
<div class="card">
    <h3>New Connection Applied Customer</h3>
    <img src="applied.jpg" alt="New Connection Applied Customer Image">
   <!--  <p>View the list of customers who have applied for a new connection.</p> -->
    <a href="readAllConnection" method="get">View</a>
</div>

<div class="card">
    <h3>Approved Customer Connection</h3>
     <img src="approved.jpg" alt="Approved Customer Connection Image">
   <!--  <p>See all customers whose connection requests have been approved.</p> -->
    <a href="/allApprovedConnection" method="get">View</a>
</div>

<div class="card">
    <h3>UnPaid Bills</h3>
    <img src="unpaidBills.jpg" alt="UnpaidBills Image">
   <!--  <p>Check the list of bills that are unpaid.</p> -->
    <a href="readAllBill" method="get">View</a>
</div>

<div class="card">
    <h3>Paid Bills</h3>
    <img src="paidBills.jpg" alt="PaidBills Image">
   <!--  <p>View bills that have been paid.</p> -->
    <a href="/adminViewPayedStatus" method="get">View</a>
</div>

</body>
</html>
