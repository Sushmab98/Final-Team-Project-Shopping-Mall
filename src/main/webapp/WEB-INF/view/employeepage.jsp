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
			height: 150px;
			padding-bottom: 5px;
			
		}

	</style>
</head>
<body>
<header>
		<center><h1 style="color: white; size: 300px; text-decoration:none;"><br>SSS Shopping Mall</h1></center>
		<div style="text-align:right;"><br><a style="color: white; text-decoration: none; padding: 20px 10px 0px 10px;" href="/employee">Login</a></li>
		<a style="color: white; text-decoration: none; padding: 20px 20px 0px 10px;" href="/registeremployee">New Registration</a></div>
	</header>
	<c:choose>
		<c:when test="${mode=='MODE_HOMEEMPLOYEE' }">
		
			<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h1>Welcome to Shopping Mall</h1>
				</div>
			</div>

		</c:when>

		<c:when test="${mode=='MODE_REGISTEREMPLOYEE' }">
			<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-employee">
					<input type="hidden" name="id" value="${employee.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${employee.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Full Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="fullname"
								value="${employee.fullname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="address"
								value="${employee.address }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Salary </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="salary"
								value="${employee.salary}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${employee.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="RegisterEmployee" />
					</div>
				</form>
			</div>
		</c:when>
		<c:when test="${mode=='ALL_EMPLOYEES' }">
			<div class="container text-center" id="tasksDiv">
				<h3>All Employees</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>UserName</th>
								<th>Full Name</th>
								<th>Address</th>
								<th>Salary</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="employee" items="${employees }">
								<tr>
									<td>${employee.id}</td>
									<td>${employee.username}</td>
									<td>${employee.fullname}</td>
									<td>${employee.address}</td>
									<td>${employee.salary}</td>
									<td><a href="/delete-employee?id=${employee.id }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-employee?id=${employee.id }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_UPDATEEMPLOYEE' }">
			<div class="container text-center">
				<h3>Update Employee</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-employee">
					<input type="hidden" name="id" value="${employee.id}" />
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${employee.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Full Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="fullname"
								value="${employee.fullname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="address"
								value="${employee.address }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Salary </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="salary"
								value="${employee.salary }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${employee.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_LOGINEMP' }">
			<div class="container text-center">
				<h3>Employee Login</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/login-employee">
					<c:if test="${not empty error }">
						<div class= "alert alert-danger">
							<c:out value="${error }"></c:out>
							</div>
					</c:if>
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${employee.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${employee.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Loginemp" />
					</div>
					</form>
					</div>
					</c:when>
	</c:choose>


	
</body>
</html>