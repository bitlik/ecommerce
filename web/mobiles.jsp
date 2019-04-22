<%-- 
    Document   : mobiles
    Created on : Nov 6, 2017, 3:19:52 PM
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
div.tab {

    border: 1px solid #ccc;
    background-color:  #4CAF50;
}     
#button1{
    margin-left: 25%;
    
}
#button2{
    margin-left: 2%;
}
#button3{
    margin-left: 2%;
}
#button4{
    margin-left: 2%;
}
#button5{
    margin-left: 2%;

}
#button6{
    margin-left: 2%;
}
#button7{
    margin-left: 27%;
    margin-right: 5%;
}
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
    align-content: space-between;
    
     
}

.dropdown {
    position: relative;
    display: inline-block;
    align-content: space-between;
    
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
    background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
    
  
}
.headtext{
 text-align: center;
 font: icon;
 font-size: 25px;
 letter-spacing: 3px;
 text-shadow : 1px 1px blue;
  

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
   
#cartwishbtn{
     background-color: #CCF3F3;
    color: white;
    padding: 6px;
    font-size: 16px;
    
    color: black;
    cursor: pointer;
    align-content: space-between;
    text-decoration: none;
}
#productname{
    text-decoration: none;
    color:black;
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
    <div>
    <div class="tab">
  <div class="dropdown" id="button1">
    <button class="dropbtn" onclick="myFunction()">Electronics
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content" id="myDropdown">
      <a href="mobiles.jsp">Mobiles</a>
      <a href="Laptops.jsp">Laptops</a>
      <a href="Speakers.jsp">Speakers</a>
    </div>
    
  </div> 
  <div class="dropdown"id="button2">
    <button class="dropbtn" onclick="myFunction()">Books
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content" id="myDropdown2">
      <a href="Fiction.jsp">Fiction</a>
      <a href="Nonfiction.jsp">Non-Fiction</a>
      <a href="Knowledge.jsp">Knowledge</a>
    </div>
    
  </div> 
  <div class="dropdown" id="button3">
    <button class="dropbtn" onclick="myFunction()">Men
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content" id="myDropdown">
      <a href="Mentopwear.jsp">Topwear</a>
      <a href="Menlowerwear.jsp">Lower wear</a>
      <a href="Menaccessories.jsp">Accessories</a>
    </div>
    
  </div> 
  <div class="dropdown" id="button4">
    <button class="dropbtn" onclick="myFunction()">Women
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content" id="myDropdown">
      <a href="Womentopwear.jsp">Topwear</a>
      <a href="Womenlowerwear.jsp">Lower wear</a>
      <a href="womenaccessories.jsp">Accessories</a>
    </div>
    
  </div> 
  <div class="dropdown" id="button5">
    <button class="dropbtn" onclick="myFunction()">Home and furniture
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content" id="myDropdown">
      <a href="Furniture.jsp">Furniture</a>
      <a href="Kitchenstuff.jsp">Kitchen stuff</a>
      <a href="Wood.jsp">Wood</a>
    </div>
    
  </div>
    
    
</div></body>
    <body>
        <h1 class="headtext">
            These are all the Mobiles
        </h1>
        <div>
            <table width="900"  cellpadding="3" cellspacing="5" align="center">

<tr>

<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://images-eu.ssl-images-amazon.com/images/I/81lDYg9zuwL.AC_AA200.jpg" alt="description here" height="200px" width="200px" />
<br />
 Samsung C9 25,000/-
 <br><br><a href="./addcart?id= Samsung C9 &price= 25000" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= Samsung C9" id='cartwishbtn'>add to wishlist</a>
</td>

<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://images-eu.ssl-images-amazon.com/images/I/81kJ-gZLx2L.AC_AA200.jpg" alt="description here"  height="200px" width="200px"/>
<br />
 Iphone 6 15,000/-
<br><br><a href="./addcart?id= Iphone 6 &price= 15000" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= Iphone 6" id='cartwishbtn'>add to wishlist</a></td>

<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://images-eu.ssl-images-amazon.com/images/I/81shPNqg8PL.AC_AA200.jpg" alt="description here" height="200px" width="200px" />
<br />
  Nexus 6 25,000/-
<br><br><a href="./addcart?id= Nexus 6 &price= 25000" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= Nexus 6" id='cartwishbtn'>add to wishlist</a></td>
</tr/>
<tr>
<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://images-eu.ssl-images-amazon.com/images/I/61hGig1YD1L.AC_AA200.jpg" alt="description here" height="200px" width="200px" />
<br />
Lenovo P50 12000/-
<br><br><a href="./addcart?id= Lenovo P50 &price= 12000" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= Lenovo P50" id='cartwishbtn'>add to wishlist</a></td>
 
<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://images-eu.ssl-images-amazon.com/images/I/71dM2WjKnTL._AC_AA200_.jpg" alt="description here" height="200px" width="200px" />
<br />
  LAva iris 8000/-
<br><br><a href="./addcart?id= LAva iris &price= 8000" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= LAva iris" id='cartwishbtn'>add to wishlist</a></td>
<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://images-eu.ssl-images-amazon.com/images/I/71Bveild+AL.AC_AA200.jpg" alt="description here" height="200px" width="200px" />
<br />
Hp new 5000/-
<br><br><a href="./addcart?id= Hp new&price= 5000" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= Hp new" id='cartwishbtn'>add to wishlist</a></td>

    </tr>

</table>
        </div>
    
    </body>
</html>

