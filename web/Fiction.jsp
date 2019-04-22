<%-- 
    Document   : Fiction
    Created on : Nov 8, 2017, 10:39:33 AM
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
    <% session.getAttribute("n1");%>
    <body>
         <div class="topnav" id="myTopnav">
  <a href="Sellhere.jsp">Sell here</a>
  <a href="Contact.jsp">Contact us</a>
  <a href="About.jsp">About</a>
  <a href="index.jsp">Home</a>
</div>
    <header> <div align = 'center' ><b> Kuchbhi.com </div> </b> </header></body>

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
    
    
</div>
    </body>
    
    <body>
        <h1 class="headtext">
            These are all the Fiction Books
        </h1>
        <div>
            <table width="900"  cellpadding="3" cellspacing="5" align="center">

<tr>

<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://i.pinimg.com/236x/d2/9e/b9/d29eb909b1ddef9e95d271bdc8308ca7--fiction-books-story-books.jpg" alt="description here" height="200px" width="200px" />
<br />
 Shaadi ka joker 25/-
 <br><br><a href="./addcart?id= Shaadi ka joker&price= 25" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= Shaadi ka joker" id='cartwishbtn'>add to wishlist</a>
</td>

<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://i.pinimg.com/736x/f0/90/02/f0900275ac4268c86b8f897a00aee39a--philosophy-books-fiction-books.jpg" alt="description here"  height="200px" width="200px"/>
<br />
 Super heroes 75/-
 <br><br><a href="./addcart?id= Super heroes&price=75" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= Super heroes" id='cartwishbtn'>add to wishlist</a>

<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://i.pinimg.com/736x/64/63/e5/6463e5a100d48767b9601baf58e84557--fiction-books-childrens-books.jpg" alt="description here" height="200px" width="200px" />
<br />
  It wasn't me 150/-
 <br><br><a href="./addcart?id= It wasn't me&price= 150" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= It wasn't me" id='cartwishbtn'>add to wishlist</a>
</td>
</tr/>
<tr>
<td align="center" valign="center">
    <a href="www.hp"id='productname'>
<img src="https://cdn.churchm.ag/wp-content/uploads/2016/02/YouVersion-Google-Logo-Image.png" alt="description here" height="200px" width="200px" />
<br />
The Bible 77/-
 <<br><br><a href="./addcart?id= The Bible&price= 77" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= The Bible" id='cartwishbtn'>add to wishlist</a>
</td>
 
<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="http://4.bp.blogspot.com/-3m2kd4tSKRw/UVlfdf4JC-I/AAAAAAAAAHM/fG8jXIgnh7s/s200/quran.jpg" alt="description here" height="200px" width="200px" />
<br />
  Quran 100/-
 <br><br><a href="./addcart?id= Quran&price= 100" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= Quran" id='cartwishbtn'>add to wishlist</a>
</td>
<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://i.pinimg.com/736x/16/24/d0/1624d08cdd36bbbce2d9eac265d7e482--fiction-books-e-books.jpg" alt="description here" height="200px" width="200px" />
<br />
The time trap 100/-
<br><br><a href="./addcart?id= The time trap&price= 100" id='cartwishbtn'>add to cart</a> &nbsp&nbsp&nbsp&nbsp&nbsp;
<a href="./addwishlist?id= The time trap" id='cartwishbtn'>add to wishlist</a>
</td>

    </tr>

</table>
        </div>
    
    </body>
</html>


