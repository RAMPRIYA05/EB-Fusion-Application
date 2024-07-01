<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

body{
    
    font-family:'Times New Roman', Times, serif;
    background-color:peachpuff;
    margin: 0;
    padding: 0;
   
}

form{
  /*   margin-bottom:20px; */
    width: 20%;
    margin: 0 auto;
    background-color:white;
    padding: 20px;
    border-radius: 5px;
    margin-top:130px;
}

fieldset{
    border: none;
}

h2{
    text-align: center;
    font-size: 24px;
    margin-bottom: 20px;
}


input[type="email"],
input[type="password"]
{
    width:100%;
    padding:7px;
    margin-bottom:10px;
    border:1px solid gainsboro;
    border-radius:5px;
  
}

a{
 margin-left:60px;
}

button{
 
    background-color:darkblue;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-left:60px;
}

button:hover{
    background-color:green;
}
</style>



</head>
<body>
<form action="Login" method="post">
    <h2>LogIn</h2>
    Email Id:<br>
    <input type="email" placeholder="Enter your Email Id" name="emailId" required><br>
    
    Password:<br>
    <input type="password" placeholder="Enter your Password" name="password" required><br>
  
    <button type="submit">Submit</button><br>
    
    <a href="userRegistration.jsp">or register</a>
</form>
</body>
</html>