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

<form action="/updateAdmin" method="get">
 Name: <input type="text" placeholder="Enter your new name" name="name" pattern="^[A-Za-z]+$" required><br>
 EmailId:<input type="email" name="emailId" value="<%=emailId %>" readonly>
 Phone Number:<input type="tel" name="phoneNumber" pattern="[0-9]{10}" required>
 Aadhaar Number:<input type="number" name="aadhaarNumber" pattern="[0-9]{12}" required>
 
 <button onclick="validation()">Update</button>
 </form>
 
 <script type="text/javascript">

function validation() {
   var name=document.getElementById("name");
   var emailId=document.getElementById("emailId");
   var phoneNumber = document.getElementById("phoneNumber");
   var aadhaarNumber = document.getElementById("aadhaarNumber");
   
   if(!name.checkValidity())
   {
	   alert("Name must be filled out in alphabets");
	   return false; 
	}
   if(!emailId.checkValidity()){
	   alert("EmailId must be filled out");
	   return false;
   }
  
   if (!phoneNumber.checkValidity()) {
       alert("Phone Number must be a 10-digit number.");
       return false;
   }
   if (!aadhaarNumber.checkValidity()) {
       alert("Aadhaar Number must be a 12-digit number.");
       return false;
   }
   return true;
   
}

</script>
</body>
</html>