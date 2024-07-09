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

nav .logo,
nav ul,
nav li,
nav p {
    display: inline;
    
}

nav ul {
    margin-left: 40%;
    padding-left: 5px;
}

nav li {
   
    padding-left: 15px;
    cursor: pointer;
}

nav a {
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
    font-size: 17px;
    margin-bottom: 10px;
    color: brown;
}



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

.dropdown {
   color: #3498db;
    text-decoration: none;
    display: block;
    text-align: center;
  
}

.dropdown-content {
  display:none; 
  text-align: center;
  background-color:white;
  min-width:60px;
  font-size:13px;
  box-shadow:0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index:1;
}

.dropdown-content a {
  color:black;
  text-decoration:none;
  display:block;
}

.dropdown-content a:hover {
  background-color:grey
}

.dropdown:hover .dropdown-content {
  display:block;
}

.dropdown:hover .dropbtn {
  background-color:white;
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
   <li><a style="margin-left: 200px;" href="logOut">LogOut</a></li>
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
    <a href="/adminViewPaidStatus" method="get">View</a>
</div>




<div class="card">
<h3>Complaint</h3>
<img src="complaint.jpg" alt="Complaint Image">
 <div class="dropdown">View
                     <div class="dropdown-content">                      
                        <a href="/adminViewComplaint" method="get">Customers Pending Complaint</a>
                        <a href="/rectifiedComplaint" method="get">Rectified Complaint</a>
                        
                     </div>
</div>
</div>



</body>
</html>
