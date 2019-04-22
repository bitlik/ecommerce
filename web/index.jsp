<%-- 
    Document   : index
    Created on : Oct 25, 2017, 11:19:09 AM
    Author     : ezchave
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    
<meta name="viewport" content="width=device-width, initial-scale=1">
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
/* Style the tab */
div.tab {

    border: 1px solid #ccc;
    background-color:  #4CAF50;
}
/*  Image */


  .container {
  float: left;
   padding: 16px;
}

.image {
  display: block
}

.caption {
  display: block;
  width: 100%;
  text-align: center; 
}


/* Full-width input fields */
input[type=text], input[type=password] {
    width: 25%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #24F2E6;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.5;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}


span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
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
  <a href="#news" onclick="document.getElementById('id01').style.display='block'">Log in</a>
  <a href="Contact.jsp">Contact us</a>
  <a href="About.jsp">About</a>
</div>
    <header> <div align = 'center' ><b> Kuchbhi.com </div> </b> </header></body>
<style>
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
* {box-sizing:border-box}
body {font-family: Verdana,sans-serif;margin:0}
.mySlides {display:none}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
#cartext{
    text-decoration: none;
    text-color:black;
}
#cc{
    text-decoration: none;
    text-align: center;
    color:white;
}
</style>

<body>
  
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
    
    
</div>

</div>
<div id="id01" class="modal">
  
  <form class="modal-content animate"  action="uval" >
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="http://saec.ac.in/wp-content/uploads/2014/05/stu_login.gif" height ="200px " width ="200px"  alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button type="submit">Login</button>
      <input type="radio" value="customer" name="c2" > Customer
    <input type="radio"  value="seller" name="c2"> Seller

      
      <input type="checkbox" checked="checked"> Remember me
    </div>

    <div class="container" style="background-color:#f1f1f1">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button> &nbsp&nbsp&nbsp&nbsp;
        <a href="Newuser.jsp"  class="cancelbtn" id='cc'>New User</a> <br>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>
</body>
        <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="https://1.bp.blogspot.com/-gbzW_N5nyX8/WXXxiiuTkjI/AAAAAAAAFRE/BwBa1Q1jsdgjLgdTAxo2ffK29534tn56QCLcBGAs/s1600/Samsung-mobile-fest-on%2BAmazon%2BIndia%2B24th%2Bto%2B26th%2BJuly%2B2017.jpg" style="width:100%">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="https://78.media.tumblr.com/d8787c609d4241f216948d230caf1429/tumblr_oxwluaQjg11wz3nye_og_1280.jpg"style="width:100%">
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="https://mobileart.co.nz/wp-content/uploads/2016/06/Truss-slider-1080x400.jpg" style="width:100%">
  <div class="text"></div>
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>

<div>
<table width="900"  cellpadding="8" cellspacing="8" align="center">

<tr>

<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="http://www.directd.com.my/content/images/thumbs/0011453_xiaomi-redmi-note-4-deca-core-official-global-rom_200.jpeg" alt="description here" height="200px" width="200px" />
<br />
Mi note 4 10,000/-
</td>

<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://image2.pricedekho.com/p/45/5/75/1652075/7296133-lg-gl-m322rmpl-310-l-frost-free-double-door-refrigerator-picture-big.jpg" alt="description here"  height="200px" width="200px"/>
<br />
LG Refrigerator 15,000/-
</td>

<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://image2.pricedekho.com/p/6/9/99/2219899/8986488-sony-bravia-klv-32w512d-32-inches-led-tv-picture-big.jpg" alt="description here" height="200px" width="200px" />
<br />
Sony Led tv 28,000/-
</td>
</tr>
 <tr>
<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://images-eu.ssl-images-amazon.com/images/I/81ycdj8-r-L._SS200_.jpg" alt="description here" height="200px" width="200px" />
<br />
Iron 3000/-
</td>
 

<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://image3.pricedekho.com/p/212/4/64/1607964/3885634-singer-tradition-2250-sewing-machine-picture-big.jpg" alt="description here" height="200px" width="200px" />
<br />
Sewing Machine 8000/-
</td>
<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://image2.pricedekho.com/p/1886/6/56/1913356/5066698-skybags-surf-03-purple-backpack-picture-big.jpg" alt="description here" height="200px" width="200px" />
<br />
Skybags 3000/-
</td>
</tr>
<tr>
<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="http://alienskart.com/image/cache/catalog/Amazon/electronics/bluetooth-speakers/philips-bt64r-bluetooth-speakers-red-si-005003/philips-bt64r-bluetooth-speakers-red-si-005003-1-200x200.jpg" alt="description here" height="200px" width="200px" />
<br />
Phillips Speakers 5000/-
</td><td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://image1.pricedekho.com/p/477/2/12/1051112/2199877-cello-hestia-melamine-dinner-set-melhest-24pinky-flow-picture-big.jpg" alt="description here" height="200px" width="200px" />
<br />
Crockery set 3200/-
</td>
<td align="center" valign="center">
    <a href="www.hp" id='productname'>
<img src="https://www.dhresource.com/200x200s/f2-albu-g5-M01-C4-65-rBVaI1lpiSSAIX6iAAGKsbXRZfY459.jpg/wmf-bistro-4-piece-long-drink-spoon-set.jpg" alt="description here" height="200px" width="200px" />
<br />
Spoon set 3200/-
</td>

    </tr>

</table>
</div>

</body>
<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1;}    
  if (n < 1) {slideIndex = slides.length;}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target === modal) {
        modal.style.display = "none";
    }
};
</script>
   
</html>
