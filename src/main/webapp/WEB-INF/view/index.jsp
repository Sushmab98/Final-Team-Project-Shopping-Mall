<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<link rel = "icon" href = "https://i.ibb.co/6X2yX57/544e83135d79e-thumb900.jpg" type = "image/x-icon">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>SSS Shopping Mall</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style type="text/css">

			#main{
			width: 98%;
			margin: auto;
			height: 95%;
			
		}

		header{
			background-color: black;
			width: 100%;
			height: 100px;
			padding-bottom: 5px;
			
		}
		.navbar {
		  overflow: hidden;
		  background-color: #333;
		}

		.navbar a {
		  float: left;
		  font-size: 16px;
		  color: white;
		  text-align: center;
		  padding: 14px 16px;
		  text-decoration: none;
		}

		.dropdown {
		  float: left;
		  overflow: hidden;
		}

		.dropdown .dropbtn {
		  font-size: 16px;  
		  border: none;
		  outline: none;
		  color: white;
		  padding: 14px 16px;
		  background-color: inherit;
		  font-family: inherit;
		  margin: 0;
		}

		.navbar a:hover, .dropdown:hover .dropbtn {
		  background-color: red;
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
		  float: none;
		  color: black;
		  padding: 12px 16px;
		  text-decoration: none;
		  display: block;
		  text-align: left;
		}

		.dropdown-content a:hover {
		  background-color: #ddd;
		}

		.dropdown:hover .dropdown-content {
		  display: block;
		}
        footer p{
        	background-color: lightskyblue;
        	color: whitesmoke;
        	text-align: center;
        	height: 30px;
        	width: 100%;
        	padding: 10px 0px;

        }

        #mysearch{
        	width: 25%;
        	border: 2px solid black;
        	border-radius: 50px;
        	height: 40px;
        	margin: 60px auto 60px 35%;

        }
        #explanation{
        	font-family: garamond;
        	color: black;
        	font-size: 25px;
        	background-image: url('imgs/down.jpg');
        	background-size: 100% 100%;
        	height: 350px;
        	text-align: 20px left ;

        }
	</style>
</head>
<body>
<div id="main">
<center><h3>Welcome Dear Customer <br>Your login was Sucessful</h3></center><h3></h3>

	<header>
		<center><h1 style="color: white; size: 300px; text-decoration:none;"><br>SSS Shopping Mall</h1></center>
		<div style="text-align:right;"><br><br><a style="color: white; text-decoration: none; padding: 20px 10px 0px 10px;" href="/login">Login</a></li>
		<a style="color: white; text-decoration: none; padding: 20px 20px 0px 10px;" href="/register">New Registration</a></div>
	</header>
	

	<div class="navbar">
  
  <div class="dropdown">
    <button class="dropbtn"><a href="index.html">Home</a></button>
  </div>
  <div class="dropdown">
    <button class="dropbtn"><a href="laptops.html">Laptops</a> 
     
    </button>
    <div class="dropdown-content">
      <a href="#">Under 40000</a>
      <a href="#">Under 50000</a>
      <a href="#">Under 60000</a>
      <a href="#">Above 60000</a>
    </div>
  </div>
  <div class="dropdown">
    <button class="dropbtn"><a href="mobiles.html">Moblies </a>
      
    </button>
    <div class="dropdown-content">
      <a href="#">Under 10000</a>
      <a href="#">Under 15000</a>
      <a href="#">Under 20000</a>
      <a href="#">Above 20000</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn"><a href="Tablet.html">Tablets</a> 

    </button>
    <div class="dropdown-content">
      <a href="#">Under 10000</a>
      <a href="#">Under 15000</a>
      <a href="#">Under 20000</a>
      <a href="#">Above 20000</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn"><a href="tv.html">TeleVisions</a>

    </button>
    <div class="dropdown-content">
      <a href="#">Under 20000</a>
      <a href="#">Under 30000</a>
      <a href="#">Under 50000</a>
      <a href="#">Under 70000</a>
      <a href="#">Under 80000</a>
      <a href="#">Above 80000</a>
    </div>
  </div>
  <div class="dropdown">
    <button class="dropbtn"><a href="computers.html">Computers</a>

    </button>
    <div class="dropdown-content">
      <a href="#">Under 20000</a>
      <a href="#">Under 30000</a>
      <a href="#">Under 40000</a>
      <a href="#">Under 50000</a>
      <a href="#">Under 60000</a>
      <a href="#">Above 60000</a>
    </div>
  </div>  

</div>

<div class="w3-content w3-section" >
  <img class="mySlides" src="imgs/indexSlide1.jpg" style="width:100%; height: 400px;" >
  <img class="mySlides" src="imgs/indexSlide2.jpg" style="width:100%; height: 400px;">
  <img class="mySlides" src="imgs/indexSlide3.jpg" style="width:100%; height: 400px;">
</div>



	<input id='mysearch' type="search" placeholder="search here..." onkeyup="searchIt()">
	<input type="button" name="search" value="search" onclick="searchIt()">
<div style="text-align: center;">
	<a href="laptops.html"><img src="imgs/HL.jpg" style="width: 400px; height: 240px; border: 3PX SOLID black;"></a>
	<a href="mobiles.html"><img src="imgs/HM.jpg" style="width: 400px; height: 240px;border: 3PX SOLID black;"></a>
	<a href="Tablet.html"><img src="imgs/HT.jpg" style="width: 400px; height: 240px;border: 3PX SOLID black;"></a>
	<a href="tv.html"><img src="imgs/HTv.jpg" style="width: 400px; height: 240px; border: 3PX SOLID black;"></a>
	<a href="computers.html"><img src="imgs/HC.jpg" style="width: 400px; height: 240px;border: 3PX SOLID black;"></a>
</div>


	<div id="explanation"><span style="text-align: left;width: 50%; margin: center;"><p style="padding-left: 30px;">
		<br><br>We are here to help you in your new Gadget purchases,
	Say no to research<br> 	on multiple websites, we are doing that for you.<br><br>Here you can find the best products and Best deals. Link for Links merge the both<br>
		 online shopping and store shopping here you can find the best price in online<br>platforms
	 	and you get the contacts of nearer stores who gives you better price then <br>online with
	 	minimum 10% Discount from the online price</p></span>
	</div>
	

	<footer>
		<p> This is Website is Owned By Link for Links @2021 </p>
	</footer>
</div> 
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 3000); // Change image every 3 seconds
}
</script>

</body>
</html>
