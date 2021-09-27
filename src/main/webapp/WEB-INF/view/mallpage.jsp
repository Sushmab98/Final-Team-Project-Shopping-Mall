<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel = "icon" href = "https://i.ibb.co/6X2yX57/544e83135d79e-thumb900.jpg" type = "image/x-icon">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>SSS Mallping Mall</title>
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
			height: 150px;
			padding-bottom: 5px;
			
		}

	</style>
</head>
<body>
<header>
		<center><h1 style="color: white; size: 300px; text-decoration:none;"><br>SSS Mallping Mall</h1></center>
		<div style="text-align:right;"><br><a style="color: white; text-decoration: none; padding: 20px 10px 0px 10px;" href="/loginmall">Login</a>
		<a style="color: white; text-decoration: none; padding: 20px 20px 0px 10px;" href="/registermall">New Registration</a>
		<a style="color: white; text-decoration: none; padding: 20px 20px 0px 10px;" href="/show-employees">Manage Employees</a>
		<a style="color: white; text-decoration: none; padding: 20px 20px 0px 10px;" href="/show-malls">Manage Malls</a></div>
	</header>
	<c:choose>
		<c:when test="${mode=='MODE_HOMEMALL' }">
		
			<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h1>Welcome to Mallping Mall</h1>
				</div>
			</div>

		</c:when>


		<c:when test="${mode=='MODE_REGISTERMALL' }">
			<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-mall">
					<input type="hidden" name="id" value="${mall.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Mall Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="mallname"
								value="${mall.mallname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Mall Category</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="category"
								value="${mall.category }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Mall status</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="mallstatus"
								value="${mall.mallstatus }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Mall Owner</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="mallowner"
								value="${mall.mallowner }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">LeaseStatus</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="leasestatus"
								value="${mall.leasestatus }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="RegisterMall" />
					</div>
				</form>
			</div>
		</c:when>
		<c:when test="${mode=='ALL_MALLS' }">
			<div class="container text-center" id="tasksDiv">
				<h3>All Malls</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>Mall Name</th>
								<th>Mall Category</th>
								<th>Mall Status</th>
								<th>Mall Owner</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="mall" items="${malls }">
								<tr>
									<td>${mall.id}</td>
									<td>${mall.mallname}</td>
									<td>${mall.category}</td>
									<td>${mall.mallstatus}</td>
									<td>${mall.mallowner}</td>
									<td><a href="/delete-mall?id=${mall.id }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-mall?id=${mall.id }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_UPDATEMALL' }">
			<div class="container text-center">
				<h3>Update User</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-mall">
					<input type="hidden" name="id" value="${mall.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Mall Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="mallname"
								value="${mall.mallname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">MallStatus</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="mallstatus"
								value="${mall.mallstatus }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Mall Category</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="category"
								value="${mall.category }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Mall Owner </label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="mallowner"
								value="${mall.mallowner }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Lease Status</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="leasestatus"
								value="${mall.leasestatus }" />
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
				<h3>Mall Login</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/login-mall">
					<c:if test="${not empty error }">
						<div class= "alert alert-danger">
							<c:out value="${error }"></c:out>
							</div>
					</c:if>
					<div class="form-group">
						<label class="control-label col-md-3">Mall Id</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="id"
								value="${mall.id }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Mall Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="mallname"
								value="${mall.mallname }" />
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