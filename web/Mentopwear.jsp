<%-- 
    Document   : Mentopwear
    Created on : Nov 8, 2017, 10:41:21 AM
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
      <a href="Menaccesories.jsp">Accessories</a>
    </div>
    
  </div> 
  <div class="dropdown" id="button4">
    <button class="dropbtn" onclick="myFunction()">Women
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content" id="myDropdown">
      <a href="Womentopwear.jsp">Topwear</a>
      <a href="Womenlowerwear.jsp">Lower wear</a>
      <a href="Womenaccessories.jsp">Accessories</a>
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
            These are all the Men Topwear clothes
        </h1>
        <div>
            <table width="900"  cellpadding="3" cellspacing="5" align="center">

<tr>
<% session.getAttribute("n1");%>
<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://ae01.alicdn.com/kf/HTB1P48Tdp9gSKJjSspbq6zeNXXaq/Big-Sale-Men-Shirts-Fit-Mens-Dress-Plaid-Shirts-Male-Clothes-Social-Casual-Striped-Shirt-Men.jpg_200x200.jpg" alt="description here" height="200px" width="200px" />
<br />
 Van Heusen Checked 2500/-
<br><br><a href="./addcart?id= Van Heusen Checked&price= 2500" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= Van Heusen Checked" id='cartwishbtn'>add to wishlist</a>
</td>

<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://www.dhresource.com/200x200s/f2-albu-g5-M00-8F-B8-rBVaJFkiRCqAcrbHAAJAJ4VlIoY698.jpg/wholesale-m-5xl-2016-autumn-men-shirt-slim.jpg" alt="description here"  height="200px" width="200px"/>
<br />
 Levi's  750/-
<br><br><a href="./addcart?id= Levi's&price= 750" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= Levi's" id='cartwishbtn'>add to wishlist</a>
 </form></td>

<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="http://ae01.alicdn.com/kf/HTB1CKQYOpXXXXbRXFXXq6xXFXXXL/2017-New-Design-Fashion-Autumn-Men-Shirts-Casual-Turn-down-Collar-Male-Striped-Shirt-Long-Sleeve.jpg_200x200.jpg" alt="description here" height="200px" width="200px" />
<br />
  Raymond's 150/-
<br><br><a href="./addcart?id= Raymond's &price= 150" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= Raymond's" id='cartwishbtn'>add to wishlist</a></td>
</tr/>
<tr>
<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://cdn.shopclues.com/images/thumbnails/27936/200/200/F4U08011449372290.jpg" alt="description here" height="200px" width="200px" />
<br />
Levv's 125/-
<br><br><a href="./addcart?id= Levv's &price= 125" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= Levv's" id='cartwishbtn'>add to wishlist</a></td>
 
<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://ae01.alicdn.com/kf/HTB1CUgJQVXXXXcHXXXXq6xXFXXXN/-New-Mens-T-Shirts-Fashion-2017-Summer-Striped-Slim-Fit-Short-Sleeve-T-Shirt-Men.jpg_200x200.jpg" alt="description here" height="200px" width="200px" />
<br />
  Brown's Special 100/-
<br><br><a href="./addcart?id= Brown's Special&price= 100" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= Brown's Special" id='cartwishbtn'>add to wishlist</a></td>
<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://ae01.alicdn.com/kf/HTB1_MqiSFXXXXczXFXXq6xXFXXX5/Chilin-Hot-Sale-Brand-New-Fashion-Summer-Men-T-shirt-CCCP-Star-Print-T-Shirts-Short.jpg_200x200.jpg" alt="description here" height="200px" width="200px" />
<br />
The Communist 1000/-
<br><br><a href="./addcart?id= The Communist&price= 1000" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= The Communist" id='cartwishbtn'>add to wishlist</a></td>

    </tr>

</table>
        </div>
    
    </body>
</html>

