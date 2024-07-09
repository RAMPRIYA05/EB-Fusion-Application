<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
    margin-bottom: 30px;
    margin-top: 30px;
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
input[type="tel"],
select {
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

<script>
	function validateForm() {

		var address = document.getElementById("address");
		var district = document.getElementById("district");
		var state = document.getElementById("state");
		var  addressProof= document.getElementById("addressProof");
		if (!address.checkValidity()) {
			alert("Address must be filled out");
			return false;
		}
		if (!district.checkValidity()) {
			alert("Choose District");
			return false;
		}
		if (!state.checkValidity()) {
			alert("Choose State");
			return false;
		}
		if (!addressProof.checkValidity()) {
			alert("Insert your Address Proof");
			return false;
		}
		
		
		return true;
	}
</script>


</head>
<body>
<%
String emailId= (String)session.getAttribute("UserEmailId");
%>
<form action="/applyConnection" method="post" enctype="multipart/form-data">
    <fieldset>
        <h2>Customer Property Details</h2>
        
        <br>Email Id:<input type="email" placeholder="Enter your EmailId" value="<%=emailId %>" name="emailId" id="emailId" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+[/.][a-z]{2,}$" readonly><br>
       <!--  <br>Service Number:<input type="number" placeholder="Enter your ServiceNumber" name="serviceNumber" id="serviceNumber" pattern="[0-9]{12}" required><br> -->
        <br> Service Type:
        <select id="serviceType" name="serviceType" required>
        <option value="Domestic">Domestic</option>
        <option value="Commercial">Commercial</option>
        </select><br>
        <br>Address:<input type="text" placeholder="Enter your Address" id="address" name="address" required><br>
        
       <br> District:
        <select id="district" name="district" required>
                <option value="" disabled selected>Select your district</option>
                <option value="Madurai">Madurai</option>
                <option value="Virudhunagar">Virudhunagar</option>
                <option value="Tirunelveli">Tirunelveli</option>
                
            </select><br>

         
        <br>State:
        <select id="state" name="state" required>
                <option value="" disabled selected>Select your state</option>
                <option value="Tamilnadu">TamilNadu</option>       
            </select><br>
        <label>Address Proof: <input type="file" id="addressProof" name="addressProof" required/></label><br><br>
              
                <br><button type="submit" onclick="validateForm()">Submit</button>
        
    </fieldset>
</form>

</body>
</html> 