<%-- 
    Document   : Productadded
    Created on : Nov 7, 2017, 3:59:30 PM
    Author     : ezchave
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
.toptext{
    text-align: center;
    font-size: 20px;
}       
        
    </style>
    
    <body>
         <div class="topnav" id="myTopnav">
  <a href="Sellhere.jsp">Sell here</a>
  <a href="Contact.jsp">Contact us</a>
  <a href="About.jsp">About</a>
  <a href="index.jsp">Home</a>
</div>
    <header> <div align = 'center' ><b> Kuchbhi.com </div> </b> </header></body>
<h1 class="toptext"><b>Product Added</b></h1>
<form action="Seller.jsp">
    <button type="input"> Seller homepage </button>
</form>
    </body>
</html>

