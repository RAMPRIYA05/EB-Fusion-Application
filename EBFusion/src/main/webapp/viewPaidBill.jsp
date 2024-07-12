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
<link rel="icon" type="image/x-icon" href="ebLogo.jpg">
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

.navbar-nav {
	background-color: peachpuff;
	padding: 10px;
}

.logo {
	max-width: 60px;
	heigth: 20px;
	vertical-align: middle;
}

.navbar-nav p, img {
	display: inline;
}

.navbar-nav p {
	color: brown;
	font-size: 40px;
	font-weight: 100;
	padding-left: 20px;
	font-style: italic;
	margin-left: 100px;
	vertical-align: middle;
}

.navbar {
	background-color: brown;
	color: white;
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
	margin-left: 520px;
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
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
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
	background-color: white;
}

table {
	background-color: peachpuff;
	border-collapse: collapse;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	border: 1px solid #ddd;
	margin-left: 130px;
	margin-right: 10px;
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
	background-color: white;
}

.table-image {
	max-width: 100px;
	max-height: 100px;
}

h2 {
	margin-top: 30px;
	margin-left: 500px;
}

.buttons-atag.active {
	color: white;
	text-decoration: underline;
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
						<a>Complaint</a>
						<div class="dropdown-content">

							<a href="/viewPendingComplaint" method="get">Pending Complaint</a> <a
								href="/viewRectifiedComplaint" method="get">Rectified Complaint</a>

						</div>
					</div>
				</li>
				<li><a style="buttons-atag.active=color:white;text-decoration:underline;" href="/viewPaidStatus" method="get">Payment History</a></li>
				<li> <a href="userProfile">Profile</a></li>
				<li><a style="margin-left: 100px;" href="logOut">LogOut</a></li>
                </ul>
            </nav>
      </header> 



<h2>Paid Bills</h2>
<table border="1">
    <thead>
    <tr>
        <th>Payment ID</th>
        <th>EmailId</th>
        <th>Service Number</th>
        <th>Bill Month</th>
        <th>Amount</th>
        <th>Account Number</th>
        <th>Payment Date</th>
        <th>Total Amount</th>
        <th>Paid Amount</th>
        <th>Paid Status</th>
        <th>Print Receipt</th>
        
        </tr>
    </thead>
<%
String readingTakenDate=request.getParameter("readingTakenDate");

%>
<%List<Payment> list=(ArrayList<Payment>)request.getAttribute("list");
if (list != null && !list.isEmpty()) {
for(Payment obj:list)
{
	
	
	
%>

<tr>
        <td><%=obj.getPaymentId() %></td> 
        <td><%=obj.getEmailId() %></td>
        <td><%=obj.getServiceNumber() %></td>
        
        <td><%=readingTakenDate %></td>
         <td><%=obj.getAmount() %></td>
        <td><%=obj.getAccountNumber() %></td>
        <td><%=obj.getPaymentDate() %>
        <td><%=obj.getTotalAmount() %>
        <td><%=obj.getPayedAmount() %></td>
      <td><%=obj.getPayedStatus() %>
       
       
         <td>
                <button onclick="generatePaymentReceipt('<%= obj.getPaymentId() %>','<%= obj.getServiceNumber() %>','<%= obj.getPaymentDate() %>','<%= obj.getAmount() %>', 
                    '<%= obj.getAccountNumber() %>','<%=obj.getPayedAmount() %>','<%= obj.getTotalAmount() %>')">
                Print Receipt
                </button>
            </td>
</tr>

<%
    }
} else {
%>
<tr>
	<td colspan="15">No records found.</td>
</tr>

<%
}
%>
</table>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.3.1/jspdf.umd.min.js"></script>

<script>
    function generatePaymentReceipt(paymentId, serviceNumber, paymentDate, amount, accountNumber,payAmount, totalAmount)
    {
        const { jsPDF } = window.jspdf;
        const doc = new jsPDF();
        doc.setFont("helvetica");
        doc.setFontSize(18);
        
        const logoSrc = 'ebLogo.jpg'; 
        const companyName = 'EB FUSION EB SERVICES AND ITS PAYMENT';
        
        doc.addImage(logoSrc, 'JPEG', 10, 10, 30, 30);
        doc.text(companyName, 50, 25);
        doc.setFontSize(16);
        doc.text("Payment Receipt:", 10, 40);
        doc.setFontSize(12);
        doc.text("Payment Receipt Number: " + paymentId, 10, 50);
        doc.text("Service Number: " + serviceNumber, 10, 60);
        doc.text("Payment Date: " + paymentDate, 10, 70)
        doc.text("Electricity Bill: " + amount, 10, 80);       
        doc.text("Account Number: " + accountNumber, 10, 90);
        doc.text("Electricity Bill+Penalty: " + payAmount, 10, 100);       
        doc.text("Total Amount: " + totalAmount, 10, 110);
       
        doc.save("receipt_" + serviceNumber + ".pdf");
    }
</script>
        
</body>
</html>