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




/* STRUCTURE */

.wrapper {
  display: flex;
  align-items: center;
  flex-direction: column; 
  justify-content: center;
  width: 100%;
  min-height: 100%;
  padding: 20px;
}

#formContent {
  -webkit-border-radius: 10px 10px 10px 10px;
  border-radius: 10px 10px 10px 10px;
  background: #fff;
  padding: 30px;
  width: 90%;
  max-width: 450px;
  position: relative;
  padding: 0px;
  -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
  text-align: center;
}

/* FORM TYPOGRAPHY*/

input[type=button], input[type=submit], input[type=reset]  {
  background-color: #56baed;
  border: none;
  color: white;
  padding: 15px 80px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  text-transform: uppercase;
  font-size: 13px;
  -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
  margin: 5px 20px 40px 20px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -ms-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}



input[type=text], input[type=password]{
  background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 5px;
  width: 85%;
  border: 2px solid #f6f6f6;
  -webkit-transition: all 0.5s ease-in-out;
  -moz-transition: all 0.5s ease-in-out;
  -ms-transition: all 0.5s ease-in-out;
  -o-transition: all 0.5s ease-in-out;
  transition: all 0.5s ease-in-out;
  -webkit-border-radius: 5px 5px 5px 5px;
  border-radius: 5px 5px 5px 5px;
}







	</style>
</head>
<body>
<div id="main">

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

<div class="wrapper">

				<h3>Customer Login</h3>
				<hr>
				<div id="formContent">
				<form method="POST" action="/login-customer">
<input type="text" class="form-control" name="username" placeholder="Username" value="${customer.username }" />
<input type="password" class="form-control" name="password" placeholder="password" value="${customer.password }" />
<input type="submit" class="btn btn-primary" value="Log in" />
					
					</form>
					</div>
					</div>



	<footer>
		<p> This is Website is Owned SSS Shoping MAll @2021 </p>
	</footer>
</div> 


</body>
</html>
