<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="ebLogo.jpg">
<style>
body {
    font-family: 'Times New Roman', Times, serif;
    background-color: bisque;
    margin: 0;
    padding: 0;
}

form {
    width: 20%;
    margin: 0 auto;
    margin-top:8%;
    background-color: white;
    padding: 20px;
    border-radius: 5px;
}

fieldset {
    border: none;
}

h2 {
    text-align: center;
    font-size: 24px;
    margin-bottom: 20px;
}

input[type="text"],
input[type="number"],
input[type="email"],
input[type="tel"] {
    width: 90%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid gainsboro;
    border-radius: 5px;
}

button {
    background-color: slateblue;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: green;
}

a {
    color: slateblue;
    text-decoration: none;
    margin-left: 10px;
}

a:hover {
    text-decoration: underline;
}

</style>

</head>
<body>

<%
String name=request.getParameter("name");
String emailId=request.getParameter("emailId");
String phoneNumber=request.getParameter("phoneNumber");
String aadhaarNumber=request.getParameter("aadhaarNumber");
%>

<form action="/updateUser" method="get">
<h2>Update Profile</h2>
 Name: <input type="text" placeholder="Enter your new name" name="name" id="name" pattern="^[A-Za-z]+$" value="<%=name%>" readonly><br>
 EmailId:<input type="email" name="emailId" value="<%=emailId %>" readonly>
 Phone Number:<input type="tel" name="phoneNumber" id="phoneNumber" pattern="[0-9]{10}" value="<%=phoneNumber%>" required>
 Aadhaar Number:<input type="text" name="aadhaarNumber" id="aadhaarNumber" pattern="^[2-9][0-9]{3}\s[0-9]{4}\s[0-9]{4}$" value="<%=aadhaarNumber%>" readonly>
 
 <button type="submit" onclick="validation()">Update</button>
 </form>
 
 <script type="text/javascript">

function validation() {
   var name=document.getElementById("name");
   var emailId=document.getElementById("emailId");
   var phoneNumber=document.getElementById("phoneNumber");
   var aadhaarNumber=document.getElementById("aadhaarNumber");
   
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