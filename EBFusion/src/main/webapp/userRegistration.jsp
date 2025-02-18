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
    width: 50%;
    margin: 0 auto;
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
input[type="password"],
input[type="tel"] {
    width: 100%;
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

<form action="/UserServlet" method="post">
    <fieldset>
        <h2>Registration</h2>
        Name:<input type="text" placeholder="Enter your name" name="name" id="name" pattern="^[A-Za-z]+$" required><br>
        <br>Email Id:<input type="email" placeholder="Enter your EmailId" name="emailId" id="emailId" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+[/.][a-z]{2,}$" required><br>                                                                                                                           
        <br>Password:<input type="password" placeholder="Enter your Password" name="password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}" required><br>
        <br>Phone Number:<input type="tel" placeholder="Enter your Phone Number" name="phoneNumber" id="phoneNumber" pattern="[0-9]{10}" required><br>
        <br>Aadhaar Number:<input type="text" placeholder="Enter your Aadhaar Number" name="aadhaarNumber" id="aadhaarNumber" pattern="^[2-9][0-9]{3}\s[0-9]{4}\s[0-9]{4}$" required><br>
        <br><button type="submit" onclick="validation()">Register</button>
        <a href="logIn.jsp">or LogIn</a>
    </fieldset>
</form>

<script type="text/javascript">

function validation() {
   var name=document.getElementById("name");
   var emailId=document.getElementById("emailId");
   var password=document.getElementById("password");
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
   if(!password.checkValidity()){
	   alert("Password must be in one uppercase,one lowercase,one numbers,one special characters,and length 8");
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