<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.chainsys.ebfusion.model.Customer" %>
     <%@ page import="java.util.ArrayList" %>
       <%@ page import="java.util.List" %> 
<!DOCTYPE html>
<html lang="xml:land">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="icon" type="image/x-icon" href="ebLogo.jpg">
<style>
        *{
            margin:0;
            padding:0;
            box-sizing: border-box;
            
        }
        nav{
           background-color:brown;
           opacity:0.8;
           width:1250px;
           /* color:blueviolet; */
           padding:15px;
        }

        .logo,ul,li,p{
            display: inline;
            
        }
        li{
            padding-left:15px;
            cursor:pointer;
           
        }
        
        ul{
            
            margin-left:20%;
            padding-left:5px;
          
        }
        button{
            color:brown;
            background-color:white;
            opacity:0.9;
            padding:2px;
        }
        input[type="submit"]
       {
            color:brown;
            background-color:white;
            opacity:0.9;
            padding:2px;
        }

.logo {
    size: 30px;
    height: 60px;
}
a{
    color:gold;
    text-decoration: none;
 
}

h4{
    margin-left:450px;
    padding:20px;
}

table{
	background-color:peachpuff;
	border-collapse: collapse;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
	border: 1px solid #ddd;
	margin-left:350px;
	margin-right:2px;
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
        background-color:white;
    
    }
    

h2{
margin-top:30px;
margin-left:500px;
}

.dropdown {
  color:gold;
  position:relative;
  display:inline-block;
}

 


.dropdown-content {
  display:none;
  position:absolute;
  background-color:white;
   min-width:60px;
  font-size:12px;
  box-shadow:0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index:1;
}

.dropdown-content a {
  color:black;
 
  text-decoration:none;
  display:block;
}

.dropdown-content a:hover {
  background-color:grey
}

.dropdown:hover .dropdown-content {
  display:block;
}

.dropdown:hover .dropbtn {
  background-color:white;
}

.buttons-atag.active{
 
    color:white;
    text-decoration:underline;
    
}

 
 
 
 
 </style>
    


</head>
<body>
      
    <header>
            <nav>
                <img class="logo" src="ebLogo.jpg" alt="Logo">
               <p style="color:white;font-size:300%;font-weight: 100;padding-left:100px; font-style:italic;">RP EB SERVICES AND ITS PAYMENT</p>
                <ul> 
                    <li><a href="">Home</a></li>
                    <li><a href="">About Us</a></li>
                    <li><a href="">Contact Us</a></li>
                   
                    <li><a href="" method="">Customer Details</a></li>
                    
               
                
                <li><a href="">LogOut</a></li>
                </ul>
            </nav>
        </header> 
<h2>Customer Property Details</h2>

<form action="/searchCustomerProperty" method="get"> 
         
         <h4>Search:<input type="search" placeholder="Enter your Search EmailId" name="emailId" id="emailId" required><br></h4>
 </form>
     <table border="1">
    <thead>
    <tr>
    
    
    <th scope="col">Email Id</th>
    
    <th scope="col">Service Number</th>
    <th scope="col">Service Type</th>
    <th scope="col">Address</th>
     <th scope="col">District</th>
    <th scope="col">State</th>
    
    
    </tr>
    </thead>
    
<%
    List<Customer> list=(ArrayList<Customer>)request.getAttribute("list");
    for(Customer obj:list)
    {
    %>
<tr>
       
        <td><%=obj.getEmailId() %></td>
        
        <td><%=obj.getServiceNumber() %></td>
        <td><%=obj.getServiceType() %></td>
        <td><%=obj.getAddress() %></td>
        <td><%=obj.getDistrict() %></td>
        <td><%=obj.getState() %></td>
        
               

</tr>
<%
}
%>
</table>
    
</body>
</html>