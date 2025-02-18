<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.time.LocalDate" %>
    
<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="ebLogo.jpg">
<style>

form {
  background-color:peachpuff;
  width:500px;
  margin:auto;
}


fieldset {
  border:white;
  padding:10px;
  margin-bottom:10px;
}
h2{
text-align:center;
}
input[type="text"],
input[type="date"],
input[type="number"],
button {
  width:95%;
  padding:8px;
  margin:5px;
  box-sizing:border-box; 
}

button {
  background-color:brown;
  color: white;
  border: none;
  cursor: pointer;
}

button:hover {
  background-color:green;
}

</style>

</head>
<body>
<%
String emailId=request.getParameter("emailId");
String serviceNumber=request.getParameter("serviceNumber");
String amount=request.getParameter("amount");
String dueDate=request.getParameter("dueDate");
String readingTakenDate=request.getParameter("readingTakenDate");
%>

    
        <form action="/payBill" method="post" onsubmit="return validate()">
        <h2>Payment Form</h2>
        <br>Email Id:<input style="width:95%;padding:8px;margin:5px;box-sizing:border-box;" type="email" name="emailId"  value="<%=emailId%>" readonly></br>
        <br>Service Number:<input type="number" id="serviceNumber" name="serviceNumber" value="<%=serviceNumber%>"  readonly></br>       
        <br>Amount(Pay on or before due date):<input type="number" id="amount" name="amount" value="<%=amount%>" readonly></br>
        <br>Account Number: <input type="number" id="accountNumber" name="accountNumber" pattern="^[0-9]{9,18}$" onkeyup="calculateTotalAmount()" required></br>
        <br>Due Date:<input style="width:95%;padding:8px;margin:5px;box-sizing:border-box;" id="dueDate" name="dueDate" value="<%=dueDate%>"  readonly></br>
        <br>Payment Date:<input style="width:95%;padding:8px;margin:5px;box-sizing:border-box;" id="paymentDate" name="paymentDate" value="<%= LocalDate.now() %>" readonly></br>
        <br>Total Amount:<input type="number" id="totalAmount" name="totalAmount" readonly></br>
        <br>Payed amount:<input type="number" id="payedAmount" name="payedAmount" required></br>
             <input type="hidden" name="readingTakenDate" value="<%=readingTakenDate %>">
        <br><button type="submit">Submit</button> 
     
        </form>
	
	
	<script>
        function calculateTotalAmount() {
            var dueDate = new Date(document.getElementById("dueDate").value);
            var paymentDate = new Date(document.getElementById("paymentDate").value);
            var amount = parseFloat(document.getElementById("amount").value);
            var paymentDate = new Date(); 
            var days= Math.floor((paymentDate - dueDate) / (1000 * 60 * 60 * 24)); 
            var penalty=0;
            if(days<= 0) {
                penalty=0;
            } else if(days>0 && days<=10) {
                penalty=days*10;
            } else if(days>10 && days<=15) {
                penalty=days* 20;
            } else if(days>15 && days<=25) {
                penalty=days*30;
            } else {
                penalty = NaN; 
            }

            var totalAmount=amount+penalty;
            document.getElementById("totalAmount").value = totalAmount.toFixed(2); 
            }
        
        
        
        function validate() {
            var accountNumber = document.getElementById("accountNumber").value;
            var payedAmount = document.getElementById("payedAmount").value;

           
            if (!/^[0-9]{9,18}$/.test(accountNumber)) {
                alert("Account number must be numeric and between 9 to 18 digits");
                return false;
            }

           
            if (isNaN(parseFloat(payedAmount)) || parseFloat(payedAmount) < 0) {
                alert("Payed Amount must be numeric and non-negative");
                return false;
            }

            return true;
        }
    </script>
	
</body>
</html>
