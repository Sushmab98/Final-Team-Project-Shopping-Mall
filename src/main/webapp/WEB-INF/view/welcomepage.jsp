<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel = "icon" href = "https://i.ibb.co/6X2yX57/544e83135d79e-thumb900.jpg" type = "image/x-icon">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>SSS Shopping Mall</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">

<style type="text/css">

			#main{
			width: 98%;
			margin: auto;
			height: 95%;
			
		}

		header{
			background-color: black;
			width: 100%;
			height: 150px;
			padding-bottom: 5px;
			
		}
	</style>

</head>
<body>

			<header>
		<center><h1 style="color: white; size: 300px; text-decoration:none;"><br>SSS Shopping Mall</h1></center>
		<div style="text-align:right;"><br>
		<a style="color: white; text-decoration: none; padding: 20px 10px 0px 10px;" href="/shop">Login</a>
		<a style="color: white; text-decoration: none; padding: 20px 20px 0px 10px;" href="/registershop">New Registration</a>
		</div>
	</header>
	<c:choose>
		<c:when test="${mode=='MODE_HOMESHOP' }">
		
			<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h1>Welcome to Shopping Mall</h1>
				</div>
			</div>

		</c:when>


		<c:when test="${mode=='MODE_REGISTERSHOP' }">
			<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-shop">
					<input type="hidden" name="id" value="${shop.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Shop Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="shopname"
								value="${shop.shopname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Shop Category</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="category"
								value="${shop.category }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Shop status</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="shopstatus"
								value="${shop.shopstatus }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Shop Owner</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="shopowner"
								value="${shop.shopowner }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">LeaseStatus</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="leasestatus"
								value="${shop.leasestatus }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="RegisterShop" />
					</div>
				</form>
			</div>
		</c:when>
		<c:when test="${mode=='ALL_SHOPS' }">
			<div class="container text-center" id="tasksDiv">
				<h3>All Shops</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>ShopName</th>
								<th>Shop Category</th>
								<th>Shop Status</th>
								<th>Shop Owner</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="shop" items="${shops }">
								<tr>
									<td>${shop.id}</td>
									<td>${shop.shopname}</td>
									<td>${shop.category}</td>
									<td>${shop.shopstatus}</td>
									<td>${shop.shopowner}</td>
									<td><a href="/delete-shop?id=${shop.id }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-shop?id=${shop.id }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_UPDATESHOP' }">
			<div class="container text-center">
				<h3>Update User</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-shop">
					<input type="hidden" name="id" value="${shop.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Shop Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="shopname"
								value="${shop.shopname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">ShopStatus</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="shopstatus"
								value="${shop.shopstatus }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Shop Category</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="category"
								value="${shop.category }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Shop Owner </label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="shopowner"
								value="${shop.shopowner }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Lease Status</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="leasestatus"
								value="${shop.leasestatus }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_LOGIN' }">
			<div class="container text-center">
				<h3>Shop Login</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/login-shop">
					<c:if test="${not empty error }">
						<div class= "alert alert-danger">
							<c:out value="${error }"></c:out>
							</div>
					</c:if>
					<div class="form-group">
						<label class="control-label col-md-3">Shop Id</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="id"
								value="${shop.id }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Shop Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="shopname"
								value="${shop.shopname }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Login" />
					</div>
					</form>
					</div>
					</c:when>
	</c:choose>


	
</body>
</html>