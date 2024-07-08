<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.chainsys.ebfusion.model.Customer" %>
<!DOCTYPE html>
<html lang="xml:land">
<head>
    <title>Electricity Bill Form</title>
    
    <style>
        form {
            background-color: peachpuff;
            width: 540px;
            margin: auto;
        }

        h2 {
            text-align: center;
        }

        input[type="text"],
        input[type="date"],
        input[type="number"],
        input[type="email"],
        input[type="submit"],
        select,
        button {
            width: 95%;
            padding: 8px;
            margin: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: brown;
            color: white;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: green;
        }
    </style>

    <script>
        function calculateAmount() {
            var readingUnits = parseFloat(document.getElementById("readingUnits").value);
            var serviceType = document.getElementById("serviceType").value;
            var ratePerUnit;
            var amount;

            if (serviceType === "domestic") {
                if (readingUnits <= 100) {
                    ratePerUnit = 0;
                    amount=0;
                } else if (readingUnits > 100 && readingUnits <= 200) {
                	 ratePerUnit = 1.00;
                	amount=((readingUnits-100)*1)+(100*0);
                } else if (readingUnits > 200 && readingUnits <= 300) {
                	 ratePerUnit = 2.00;
                	amount=((readingUnits-200)*2)+(100*0)+(100*1);  
                } else if (readingUnits > 300 && readingUnits <= 500) {
                	 ratePerUnit = 3.00;
                	amount=((readingUnits-300)*3)+(100*0)+(100*1)+(100*2);
                } else if (readingUnits <= 1000) {
                	 ratePerUnit = 4.00;
                	amount=((readingUnits-500)*4)+(100*0)+(100*1)+(100*2)+(200*3);
                } else {
                    ratePerUnit = 5.00;
                    amount=((readingUnits-1000)*5)+(100*0)+(100*1)+(100*2)+(200*3)+(500*4);
                }
            } else if (serviceType === "commercial") {
                if (readingUnits <= 100) {
                    ratePerUnit = 0; 
                } else if (readingUnits > 100 && readingUnits <= 200) {
                	 ratePerUnit = 2.00; 
                	amount=((readingUnits-100)*2)+(100*0);
                } else if (readingUnits > 200 && readingUnits <= 300) {
                	 ratePerUnit = 3.00; 
                	amount=((readingUnits-200)*3)+(100*0)+(100*2);
                } else if (readingUnits > 300 && readingUnits <= 500) {
                	 ratePerUnit = 4.00; 
                	amount=((readingUnits-300)*4)+(100*0)+(100*2)+(100*3);
                } else if (readingUnits <= 1000) {
                	 ratePerUnit = 5.00; 
                	amount=((readingUnits-500)*5)+(100*0)+(100*2)+(100*3)+(200*4);
                } else {
                    ratePerUnit = 7.00; 
                    amount=((readingUnits-1000)*7)+(100*0)+(100*2)+(100*3)+(200*4)+(500*5);
                }
            }
            document.getElementById("amount").value = amount.toFixed(2);
        }

        function validateForm() {
        	var readingUnits = document.getElementById("readingUnits").value;
            var readingTakenDate = document.getElementById("readingTakenDate").value;
            var readingDueDate = document.getElementById("readingDueDate").value;

            if (readingUnits.trim() === "") {
                alert("Please enter Reading Units.");
                return false;
            }

            if (readingTakenDate.trim() === "") {
                alert("Reading Taken Date must be filled out");
                return false;
            }

            if (dueDate.trim() === "") {
                alert("Reading Due Date must be filled out");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>

<h2>Electricity Bill Form</h2>

<form action="/Bill" method="post" id="dateForm">
    Email Id:
    <input type="email" id="emailId" name="emailId" value="<%= request.getParameter("emailId") %>"  readonly><br><br>

    Address:
    <input type="text" id="address" name="address" value="<%=request.getParameter("address") %>" readonly><br><br>

    Service Number:
    <input type="number" id="serviceNumber" name="serviceNumber" value="<%=request.getParameter("serviceNumber") %>" readonly><br><br>

    Reading Units:
    <input type="number" id="readingUnits" name="readingUnits" onkeyup="calculateAmount()" required><br><br>

    Reading Taken Date:
    <input type="date" id="readingTakenDate" name="readingTakenDate" required><br><br>

    Due Date:
    <input type="date" id="dueDate" name="dueDate" required><br><br>

    Service Type:
    <input style=" width: 95%;padding: 8px;margin: 5px;box-sizing: border-box;"  id="serviceType" name="serviceType" value="<%= request.getParameter("serviceType") %>"  readonly><br><br>
     
    Amount:
    <input type="number" id="amount" name="amount" readonly><br><br>

    <input type="submit" onsubmit="return validateForm()" value="Submit">
</form>


<script>
   
    function checkSelectedMonth(readingTakenDate) {
        var selectedDate = new Date(readingTakenDate.value);
        var selectedMonth = selectedDate.getMonth() + 1; 
        var serviceNumber = document.getElementById('serviceNumber').value;

        
        var inputs = document.querySelectorAll('input[type="date"]');
        for (var i = 0; i < inputs.length; i++) {
            var existingDate = new Date(inputs[i].value);
            var existingServiceNumber = document.getElementById('serviceNumber').value;

            if (inputs[i] !== readingTakenDate && existingDate.getMonth() + 1 === selectedMonth &&
                    existingServiceNumber === serviceNumber) {
                alert('You have already selected a date in this month.');
                readingTakenDate.value = '';
                return false;
            }
        }
        return true;
    }

    
    document.getElementById('dateForm').addEventListener('submit', function(event) {
        var readingTakenDate= document.getElementById('readingTakenDate');
        if (!checkSelectedMonth(readingTakenDate)) {
            event.preventDefault(); 
        }
    });
</script>


</body>
</html>
