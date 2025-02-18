<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="ebLogo.jpg">
<style>
form {
	background-color: peachpuff;
	width: 500px;
	margin: auto;
	margin-top: 30px;
}

fieldset {
	border: white;
	padding: 10px;
	margin-bottom: 10px;
}

h2 {
	text-align: center;
}

input[type="text"], input[type="number"], input[type="email"], select,
	button {
	width: 100%;
	padding: 8px;
	margin: 5px;
	box-sizing: border-box;
}

button {
	background-color: brown;
	color: white;
	border: none;
	cursor: pointer;
}

button:hover {
	background-color: green;
}
</style>

<script>
	function validateForm() {

		var description = document.getElementById("description");
		var complaintStatus = document.getElementById("complaintStatus");
		if (!description.checkValidity()) {
			alert("Description must be filled out");
			return false;
		}
		if (!complaintStatus.checkValidity()) {
			alert("Complaint Status must be filled out");
			return false;
		}

		return true;
	}
</script>

</head>
<body>

	<form action="/applyComplaint" method="get">
		<fieldset>
			<h2>Complaint Form</h2>
			Email Id: <input type="email" id="emailId" name="emailId"
				value="<%=request.getParameter("emailId")%>" readonly><br>
			<br> Service Number: <input type="number" id="serviceNumber"
				name="serviceNumber"
				value="<%=request.getParameter("serviceNumber")%>" readonly><br>
			<br> <br>Description:<input type="text" id="description"
				placeholder="Enter your description" name="description" required></br>
			<br>Complaint Status: <select id="complaintStatus"
				name="complaintStatus" required>
				<option value="" disabled selected>Select your
					complaintStatus</option>
				<option value="applied">Applied</option>

			</select></br> <br>
			<button type="submit" onclick="validateForm()">Submit</button>
		</fieldset>
	</form>
</body>
</html>
