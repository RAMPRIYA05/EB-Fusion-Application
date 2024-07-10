<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.chainsys.ebfusion.model.Complaint" %>
     <%@ page import="java.util.ArrayList" %>
     <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        *{
            margin:0;
            padding:0;
            box-sizing: border-box;
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
    font-size:40px;
   
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
    padding: 10px 20px;
}

.navbar li a:hover {
    background-color: #ddd;
    color: black;
}

.navbar li a[href="logOut"] {
    margin-left:520px;
}


    
    .dropdown {
    position: relative;
    display: inline-block;
    color: white;
   
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: brown;
    min-width: 160px;
    font-size: 14px; 
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    text-decoration: none;
    display: block;
    
}

.dropdown-content a:hover {
    background-color: #f1f1f1; 
    color: black; 
}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
  background-color:white;
}
       

table{
	background-color:peachpuff;
	border-collapse: collapse;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	border: 1px solid #ddd;
	margin-left:260px;
	margin-right:10px;
}

table thead {
        background-color: brown;
        color: white;
        
    }
table th, table td {
        padding: 7px;
        text-align: center;
        border: 1px solid #ddd;
    }
     table tr:nth-child(even) {
        background-color:white;
    
    }
      .table-image {
    max-width: 100px; 
    max-height: 100px; 
}

h2{
margin-top:30px;
margin-left:500px;
}

.buttons-atag.active{
    color:white;
    text-decoration:underline;   
}

 </style>
    


</head>
<body>
     
      <header>
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
					<div class="dropdown">
						<a>Bill</a>
						<div class="dropdown-content">
							<a href="/readPaidBill" method="get">Paid Bill
								</a> <a href="/readParticularBill" method="get">UnPaid Bill
								</a>

						</div>
					</div>
				</li>
				<li>
					<div class="dropdown">
						<a>Connection</a>
						<div class="dropdown-content">

							<a href="applyNewConnection.jsp">Apply For New Connection
								</a> <a href="/readAppliedConnection" method="get">New Connection Request Pending</a>
                              <a href="/approvedConnection" method="get">Authorized Connection</a>
						</div>
					</div>
				</li>
				<li>
					<div class="dropdown">
						<a style="buttons-atag.active=color:white;text-decoration:underline;" >Complaint</a>
						<div class="dropdown-content">

							<a href="/viewPendingComplaint" method="get">Pending Complaint</a> <a
								href="/viewRectifiedComplaint" method="get">Rectified Complaint</a>

						</div>
					</div>
				</li>
				<li><a href="/viewPaidStatus" method="get">Payment History</a></li>
				<li> <a href="userProfile">Profile</a></li>
				<li><a style="margin-left: 100px;" href="logOut">LogOut</a></li>
                </ul>
            </nav>
        </header> 
     
      <table border="1">
      <h2>Pending Complaint</h2>
    <thead>
    <tr>
     <th>Complaint Id</th> 
     <th>Email Id</th>
    <th>Service Number</th>
    
    <th>Description</th>
    <th>Complaint Status</th>
   
    
    </tr>
    </thead>
<%List<Complaint> list=(ArrayList<Complaint>)request.getAttribute("list");
for(Complaint obj:list)
{
%>
<tr>
 <td><%=obj.getComplaintId() %></td> 
 <td><%=obj.getEmailId() %></td>
        <td><%=obj.getServiceNumber() %></td>
      
        <td><%=obj.getDescription() %></td>
        <td><%=obj.getComplaintStatus() %></td>
       
</tr>
<%
}
%>
</table> 
</body>
</html>