<%-- 
    Document   : Checkout
    Created on : Nov 7, 2017, 2:33:15 PM
    Author     : ezchave
--%>


<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kuchbhi.com</title>
    </head>
    
    <style>
        header {
    text-shadow: 0 0 10px #2443F2;
	font-size:30px;
	text-align:center;
}
.topnav {
    background-color: #F29B24;
    overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
    float: right;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
    background-color: #ddd;
    color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
    background-color: #4CAF50;
    color: white;
}
/* the forms*/
input[type=text], input[type=password] {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
input[type=email], input[type=password] {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 25%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}
.cancelbtn2 {
    width: auto;
    padding: 14px 20px;
    background-color: #4CAF50;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 25%;
}
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
/* drop down mwnu */


    
    
    
    </style>
    
    <body>
         <div class="topnav" id="myTopnav">
  <a href="Sellhere.jsp">Sell here</a>
  <a href="#news" onclick="document.getElementById('id01').style.display='block'">Log in</a>
  <a href="Contact.jsp">Contact us</a>
  <a href="About.jsp">About</a>
  <a href="index.jsp">Home</a>
</div>
    <header> <div align = 'center' ><b> Kuchbhi.com </div> </b> </header></body>
    </body>
    
    
   
    
    
    
    <body>
         <div class="container">
             <form action="bill.jsp" method="post">
    <label><b>Name:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp         </b></label>
    <input type="text"  name="name" required placeholder="Some Joe">
    <br>
    <label><b>Phone Number:  &nbsp&nbsp</b></label>
    <input type="text"  name="number" required placeholder="9998887776">
    <br>
    <label><b>Address :&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp &nbsp    </b></label>
    <input type="text"  name="address" required placeholder="Where do I drop your order ?">
    <br>
    
    
        <label><b> Select the payment mode : &nbsp&nbsp&nbsp&nbsp </b></label>
  <select name="pay"  >  
    <option value="credit">Credit Card</option>
    <option value="debit">Debit Card</option>
    <option value="cash">Cash on Delivery</option>
    <option value="paytm">Payment Wallets</option>
    
  </select><br/><br/><br/>
       </select>
        <label><b>Card Number:  &nbsp&nbsp</b></label>
    <input type="text"  name="number"  size='16'>
    <br>
     <label><b>CVV:  &nbsp&nbsp</b></label>
    <input type="text"  name="number"  size='3'>
    <br>
     <label><b>Expiry Date:  &nbsp&nbsp</b></label>
    <input type="text"  name="number" >
    <br>
       
          <br>
  <br><br>
   
    <br>
   
    
    
    <button type="submit">Confirm Order</button>

    </form>
   
    </body> 
 
    
    
</html>
