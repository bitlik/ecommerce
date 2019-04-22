<%-- 
    Document   : Sellhere
    Created on : Nov 6, 2017, 11:16:05 PM
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
form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
input[type=email] {
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
}
        
        
    </style>
    
    <body>
         <div class="topnav" id="myTopnav">
  <a href="Sellhere.jsp">Sell here</a>
  <a href="index.jsp" >Home</a>
  <a href="Contact.jsp">Contact us</a>
  <a href="About.jsp">About</a>
</div>
    <header> <div align = 'center' ><b> Kuchbhi.com </div> </b> </header></body>
    </body>
    <div>
    <form action="user_ins">
  <div class="imgcontainer">
      <img src="http://saec.ac.in/wp-content/uploads/2014/05/stu_login.gif" alt="Avatar" class="avatar" height="400px" width="200px">
  </div>

  <div class="container">
    <label><b>Name</b></label>
    <input type="text" placeholder="Enter Username" name="uname" required placeholder="Some Joe">
    <br>
    <label><b>Phone Number</b></label>
    <input type="text" placeholder="Enter Username" name="unumber" required placeholder="9998887776" size='10'>
    <br>
    <label><b>Address</b></label>
    <input type="text" placeholder="Enter Username" name="uAddress" required placeholder="Where do I drop you ?">
    <br>
    <label><b>Email address</b></label>
    <input type="email" placeholder="Enter Username" name="uemail" required placeholder="No spam, I swear!!">
    <br>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="upwd" required placeholder="Password">
    <br>   
    <button type="submit">Submit</button>
    <input type="radio" value="customer" name="c1" > Customer
    <input type="radio"  value="seller" name="c1"> Seller
    
    
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>
    </div>
    
    
    
    
    
</html>
