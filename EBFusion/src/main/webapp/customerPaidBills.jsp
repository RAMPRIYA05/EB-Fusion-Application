<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.chainsys.ebfusion.model.Payment" %>
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
        nav {
	background-color: brown;
	position: sticky;
	width: 100%;
	margin: 0;
	padding: 0;
	top: 0;
	left: 0;
	height: 110px;
}

        .logo,ul,li,p{
            display: inline;          
        }
        
        li{
            padding-left:15px;
            cursor:pointer;          
        }
        
        ul{          
            margin-left:20%;
            padding-left:5px;        
        }
       
.logo {
    size: 30px;
    height: 60px;
    margin-left: 15px;
	margin-top: 15px;
}

a{
    color:gold;
    text-decoration: none;   
}

h4{
    margin-left:450px;
    padding:20px;
}

table{
	background-color:peachpuff;
	border-collapse: collapse;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	border: 1px solid #ddd;
	margin-left:130px;
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

.dropdown {
	color: gold;
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: white;
	min-width: 60px;
	font-size: 12px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: grey
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: white;
}


.buttons-atag.active{

    color:white;
    text-decoration:underline;    
}

 </style>
    



</head>
<body>
   <header>
    <nav>
                <img class="logo" src="ebLogo.jpg" alt="Logo">
               <p style="color:white;font-size:300%;font-weight: 100;padding-left:50px; font-style:italic;">EB FUSION EB SERVICES AND ITS PAYMENT</p>
                <ul> 
                    <li><a href="">Home</a></li>
                    <li><a href="">About Us</a></li>
                    <li><a href="">Contact Us</a></li>
                   <li><a href="listOfUsers">Registered Customer</a></li>
                 <li>
					<div style="buttons-atag.active=color:white;text-decoration:underline;" class="dropdown">
						Bill
						<div class="dropdown-content">
							<a href="/adminViewPaidStatus" method="get">Paid Bill
								</a> <a href="/readAllBill" method="get">UnPaid Bill
								</a>

						</div>
					</div>
				</li>
				<li>
					<div class="dropdown">
						Connection
						<div class="dropdown-content">

							<a href="/readAllConnection" method="get">New Connection
								Applied Customer</a> <a href="/allApprovedConnection" method="get">Approved
								Customer Connection</a>

						</div>
					</div>
				</li>
				<li>
					<div class="dropdown">
						Complaint
						<div class="dropdown-content">

							<a href="adminViewComplaint" method="get">Pending Complaint</a> <a
								href="rectifiedComplaint" method="get">Rectified Complaint</a>

						</div>
					</div>
				</li>
				<li> <a href="adminProfile">Profile</a></li>
				<li><a style="margin-left: 200px;" href="logOut">LogOut</a></li>
                </ul>
            </nav>
      </header> 



<h2>Customer Paid Bills</h2>
<table border="1">
    <thead>
    <tr>
        <th>Payment ID</th>
        <th>EmailId</th>
        <th>Service Number</th>
        <th>Amount</th>
        <th>Account Number</th>
        <th>Payment Date</th>
        <th>Total Amount</th>
        <th>Payed Amount</th>
        
        
        </tr>
    </thead>

<%List<Payment> list=(ArrayList<Payment>)request.getAttribute("list");
for(Payment obj:list)
{
%>
<tr>
        <td><%=obj.getPaymentId() %></td> 
        <td><%=obj.getEmailId() %></td>
        <td><%=obj.getServiceNumber() %></td>
         <td><%=obj.getAmount() %></td>
        <td><%=obj.getAccountNumber() %></td>
        <td><%=obj.getPaymentDate() %>
        <td><%=obj.getTotalAmount() %>
        <td><%=obj.getPayedAmount() %></td>
      
       
        
        
</tr>
<%
}
%>
</table>
        
</body>
</html>