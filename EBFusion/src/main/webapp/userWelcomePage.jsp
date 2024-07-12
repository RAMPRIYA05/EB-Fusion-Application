<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="ebLogo.jpg">
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

.navbar-nav {
    background-color: peachpuff;
    padding: 10px;
}

.logo {
    max-width: 60px;
    heigth:20px;
    vertical-align: middle;
}
.navbar-nav p,img{
          display:inline;
}

.navbar-nav p {
    color: brown;
    font-size: 40px;
    font-weight: 100;
    padding-left: 20px;
    font-style: italic;
    margin-left:100px;
    vertical-align: middle;
}

.navbar {
    background-color:brown;
    color:white;
    padding: 10px;
}

.navbar ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
}

.navbar li {
    display: inline-block;
    margin-right: 10px;
}

.navbar li a {
    color: white;
    text-decoration: none;
    padding: 10px 15px;
}

.navbar li a:hover {
    background-color: #ddd;
    color: #555;
}

/* .navbar li a[href="logOut"] {
    margin-left:700px;
}
 */


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


.profile{
    max-width: 40px;
    heigth:1px;
    vertical-align: middle;
}

  .dropdown-profile {
    position: relative;
    display: inline-block;
    color: white;
   
}

.dropdown-profilecontent {
    display: none;
    position: absolute;
    background-color: brown;
    min-width: 160px;
    font-size: 14px; 
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-profilecontent a {
    color: black;
    text-decoration: none;
    display: block;
    
}

.dropdown-profilecontent a:hover {
    background-color: #f1f1f1; 
    color: black; 
}

.dropdown-profile:hover .dropdown-profilecontent {
    display: block;
}


</style>

</head>
<body>

 <nav class="navbar-nav">
                <img class="logo" src="ebLogo.jpg" alt="Logo">
               <p>EB FUSION EB SERVICES AND ITS PAYMENT</p>
               </nav>
               <nav class="navbar">
                <ul> 
                    <li><a href="">Home</a></li>
                    <li><a href="">About Us</a></li>
                    <li><a href="">Contact Us</a></li>
                    
                    
                    
                    <li>
					<div class="dropdown-profile">
						 <img class="profile" src="profile.png" alt="Profile">
						<div class="dropdown-profilecontent">
							<a href="userProfile">Profile
								</a> <a href="logOut">LogOut
								</a>

						</div>
					</div>
				</li>
                    
                    
				<!-- <li> <a href="userProfile">Profile</a></li>
				<li><a href="logOut">LogOut</a></li> -->
                </ul>
            </nav>
                    
<div class="card">
<h3>Apply for new Connection</h3>
<img src="newConnection.jpg" alt="Apply For New Connection">
<a href="applyNewConnection.jsp">Apply</a>
</div>

<div class="card">
<h3>New Connection Request Pending</h3>
<img src="applied.jpg" alt="Applied Connection">
<a href="/readAppliedConnection" method="get">View</a>
</div>

<div class="card">
<h3>Authorized Connection</h3>
<img src="approved.jpg" alt="Approved Connection">
<a href="/approvedConnection" method="get">View</a>
</div>

<div class="card">
<h3>Bill</h3>
<img src="viewBill.png" alt="View Bill">
<a href="/readParticularBill" method="get">View</a>
</div>

<div class="card">
<h3>Payment History</h3>
<img src="payment.jpg" alt="View Payment History ">
<a href="/viewPaidStatus" method="get">View</a>
</div>

<div class="card">
<h3>Paid Bill</h3>
<img src="paidBill.jpg" alt="View Paid Bill ">
<a href="/readPaidBill" method="get">View</a>
</div>

<div class="card">
<h3>Complaint</h3>
<img src="complaint.jpg" alt="Complaint">
 <div class="dropdown">View
                     <div class="dropdown-content">                      
                        <a href="/viewPendingComplaint" method="get">Pending Complaint</a>
                        <a href="/viewRectifiedComplaint" method="get">Rectified Complaint</a>
                        
                     </div>
</div>
</div>



</body>
</html>