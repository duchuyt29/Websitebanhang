<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/IT16308_Assignment/css/bootstrap.min.css" />
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-5 mx-auto">
				<div id="first">
					<div class="myform form ">
						<div class="logo mb-3">
							<div class="col-md-12 text-center">
								<h2>Đăng Nhập</h2>
							</div>
						</div>
						<form method="POST" modelAttribute="loginF"
							action="/IT16308_Assignment/admin/login/form">
							<div class="form-group">
								<label for="exampleInputEmail1">Email</label> <input
									type="email" name="email" class="form-control" id="email"
									aria-describedby="emailHelp" placeholder="Enter email">
							</div>
							<br>
							<div class="form-group">
								<label for="exampleInputEmail1">Password</label> <input
									type="password" name="password" id="password"
									class="form-control" aria-describedby="emailHelp"
									placeholder="Enter Password">
							</div>
							<br>
							<div class="col-md-12 text-center ">
								<button type="submit"
									class=" btn btn-block mybtn btn-primary tx-tfm">Login</button>
							</div>
						</form>

					</div>
				</div>
			</div>
			<script src="/IT16308_Assignment/js/jquery.min.js"></script>
			<script src="/IT16308_Assignment/js/popper.min.js"></script>
			<script src="/IT16308_Assignment/js/bootstrap.min.js"></script>
</body>
</html>