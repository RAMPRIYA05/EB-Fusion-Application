<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String emailId=request.getParameter("emailId");
%>

<form action="/updateUser" method="get">
 Name: <input type="text" placeholder="Enter your new name" name="name" required><br>
 EmailId:<input type="email" name="emailId" value="<%=emailId %>" readonly>
 Phone Number:<input type="tel" name="phoneNumber" required>
 Aadhaar Number:<input type="number" name="aadhaarNumber" required>
 
 <button>Update</button>
 </form>
</body>
</html>