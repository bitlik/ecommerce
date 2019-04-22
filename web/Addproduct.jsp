<%-- 
    Document   : Addproduct
    Created on : Nov 7, 2017, 3:22:57 PM
    Author     : ezchave
--%>


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
input[type=text], input[type=password] {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}  
input[type=number], input[type=password] {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
#toptext{
    text-align: center;
    font-size: 20px;
}    
.submitbutton{
    background-color: white;
    color: black;
    border: 2px solid #4CAF50;
    width: 25%;
    
}
.submitbutton:hover {
    background-color: #4CAF50; /* Green */
    color: white;
     box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
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
    </body>
    <body>
        <p id = "toptext"><b>Add a product to your inventory</b></p>
        <form action="productadded">
            <label> Product name :&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp </label>
            <input type="text" name="pname" placeholder="Something"> <br>
            <label> Quantity :&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp </label>
            <input type="number" name="quantity" placeholder="Price"><br> 
            <label> Price : &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
            <input type="number" name="price" placeholder="Quantity"> <br>
            <label> Description : &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
            <input type="text" name="des" placeholder="Description"> <br>
            <label> seller id :</label>
            <input type="text" name="sid"  placeholder="Add image"><br><br>
            <label> seller name :</label>
            <input type="text" name="sname"  placeholder="Add image"><br><br>
            <label> category :</label>
            <input type="text" name="cat"  placeholder="Add image"><br><br>
            <input class="submitbutton"type="submit" >
            
        
        
        
        </form>
        
    </body>
    
    
</html>
