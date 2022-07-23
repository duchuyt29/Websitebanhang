
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<link rel="stylesheet" href="/IT16308_Assignment/css/bootstrap.min.css">
</head>
<body>
	<header class="row">
		<div id="carouselExampleControls" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="https://img4.thuthuatphanmem.vn/uploads/2020/06/05/hinh-nen-cong-nghe-vi-xu-ly_103229633.jpg"
						class="d-block w-100" alt="..." height="400px">
				</div>
				<div class="carousel-item">
					<img
						src="https://img4.thuthuatphanmem.vn/uploads/2020/05/30/hinh-nen-cong-nghe-dep_031030539.jpg"
						class="d-block w-100" alt="..." height="400px">
				</div>
				<div class="carousel-item">
					<img
						src="https://thuthuatnhanh.com/wp-content/uploads/2020/09/anh-nen-cong-nghe-voi-nhung-diem-va-duong-noi-nhau-trong-khong-gian-lap-the.jpg"
						class="d-block w-100" alt="..." height="400px">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</header>

<!-- 	<nav class="navbar navbar-expand-lg bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Trang chủ</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Accounts</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Category</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Products</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Orders</a></li>
					<li class="nav-item"><a class="nav-link" href="#">OrderDetails</a></li>
				</ul>

				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="#">Đăng
							xuất</a></li>
				</ul>
			</div>
		</div>
	</nav> -->


	<nav class="navbar navbar-expand-lg c shadow navbar-light bg-white">
		<div class="container-fluid">
			<ul class="navbar-nav ms-auto">
				<li class="nav-item"><a class="nav-link"
					href="/IT16308_Assignment/admin/getHome">Trang chủ</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle active" id="homeDropdownMenuLink"
					href="#" data-bs-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Danh mục</a>
					<div class="dropdown-menu" aria-labelledby="homeDropdownMenuLink">
						<a class="dropdown-item"
							href="/IT16308_Assignment/admin/accounts/create">Quản lý
							người dùng</a> <a class="dropdown-item"
							href="/IT16308_Assignment/admin/categories/create">Quản lý
							danh mục </a> <a class="dropdown-item"
							href="/IT16308_Assignment/admin/products/create">Quản lý sản
							phẩm</a> <a class="dropdown-item"
							href="/IT16308_Assignment/admin/orders/create">Quản lý đặt
							hàng</a> <a class="dropdown-item"
							href="/IT16308_Assignment/admin/orderDetails/create">Quản lý
							đặt hàng chi tiết</a> <a class="dropdown-item" href="">Đổi mật
							khẩu</a>
					</div></li>
			</ul>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
				aria-controls="navbarCollapse" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fa fa-bars"></i>
			</button>
			<!-- Navbar Collapse -->
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<form class="form-inline mt-4 mb-2 d-sm-none" action="#"
					id="searchcollapsed">
					<div class="input-label-absolute input-label-absolute-left w-100">
						<label class="label-absolute" for="searchcollapsed_search"><i
							class="fa fa-search"></i><span class="sr-only">What are
								you looking for?</span></label> <input
							class="form-control form-control-sm border-0 shadow-0 bg-gray-200"
							id="searchcollapsed_search" placeholder="Search"
							aria-label="Search" type="search">
					</div>
				</form>
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="#">Đăng
							xuất</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="row m-0">
		<aside class="col-md-3">
			<div class="card mt-2">
				<div class="card-body">
					<div class="row">
						<div class="row text-center">
							<h4>Nguyễn Đức Huy</h4>
						</div>
					</div>
				</div>
			</div>
			<div class="pt-3">
				<div class="card border border-secondary" style="width: 100%;">
					<div class="card-header" data-bs-toggle="collapse"
						href="#collapseExample2" role="button">
						<span class="glyphicon glyphicon-star-empty pe-1"
							aria-hidden="true"></span> <b>Hàng đặc biệt</b>
					</div>
					<ul class="list-group list-group-flush card-collapse"
						id="collapseExample2">
						<li class="list-group-item p-0"><a
							class="dropdown-item text-decoration-none" href="#">Hàng bán
								chạy</a></li>
						<li class="list-group-item p-0 "><a
							class="dropdown-item text-decoration-none" href="#">Hàng mới</a></li>
						<li class="list-group-item p-0 "><a
							class="dropdown-item text-decoration-none" href="#">Hàng giảm
								giá</a></li>
						<li class="list-group-item p-0 "><a
							class="dropdown-item text-decoration-none" href="#">Hàng đặc
								biệt</a></li>
						<li class="list-group-item p-0 "><a
							class="dropdown-item text-decoration-none" href="#">Hàng xem
								nhiều</a></li>
					</ul>
				</div>
			</div>
		</aside>
		<article class="col-md-9 " style="background-color:"></article>
	</div>

	<div class="bg-dark text-white text-center">HuyND</div>

	<script src="/IT16308_Assignment/js/jquery.min.js"></script>
	<script src="/IT16308_Assignment/js/popper.min.js"></script>
	<script src="/IT16308_Assignment/js/bootstrap.min.js"></script>

</body>
</html>