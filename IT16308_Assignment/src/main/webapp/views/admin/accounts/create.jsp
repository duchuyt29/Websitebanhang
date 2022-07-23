<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm mới người dùng</title>
<link rel="stylesheet" href="/IT16308_Assignment/css/bootstrap.min.css">
</head>
<body>
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
	<div class="container">
		<div class="row">
			<div class="card">
				<div class="">
					<h2 class="text-center">THÊM MỚI NGƯỜI DÙNG</h2>
				</div>
				<div class="col-md-12">
					<form:form action="/IT16308_Assignment/admin/accounts/store"
						method="POST" modelAttribute="account">
						<div class="form-input">
							<label class="form-label">Username :</label>
							<form:input path="username" name="username" class="form-control" />
							<form:errors path="username" class="text-danger"></form:errors>
						</div>
						<div class="form-input">
							<label class="form-label">Password :</label>
							<form:password path="password" name="password"
								class="form-control" />
							<form:errors path="password" class="text-danger"></form:errors>
						</div>

						<div class="form-input">
							<label class="form-label">Fullname :</label>
							<form:input path="fullname" name="fullname" class="form-control" />
							<form:errors path="fullname" class="text-danger"></form:errors>
						</div>
						<div class="form-input">
							<label class="form-label">Email :</label>
							<form:input path="email" name="email" type="email"
								class="form-control" />
							<form:errors path="email" class="text-danger"></form:errors>
						</div>
						<div class="form-input">
							<label class="form-label">Photo :</label>
							<form:input path="photo" name="photo" type="file"
								class="form-control" />
							<form:errors path="photo" class="text-danger"></form:errors>
						</div>

						<div class="form-input">
							<label>Role :</label>
							<form:select path="admin" class="form-select">
								<form:option value="1">Admin</form:option>
								<form:option value="0">Member</form:option>
							</form:select>
						</div>
						<div class="form-input m-3">
							<button class="btn btn-primary">Save</button>
						</div>
					</form:form>
				</div>
				<br>
				<h2 class="text-center">QUẢN LÝ NGƯỜI DÙNG</h2>
				<div class="col-md-12">
					<table class="table table-bordered">
						<thead class="table-success">
							<tr>
								<th>ID</th>
								<th>Fullname</th>
								<th>Username</th>
								<th>Email</th>
								<th>Photo</th>
								<th>Activated</th>
								<th>Role</th>
								<th colspan="2">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${data.content }" var="acc">
								<tr>
									<td>${ acc.id }</td>
									<td>${ acc.fullname }</td>
									<td>${ acc.username }</td>
									<td>${ acc.email }</td>
									<td><img src="${ acc.photo }"
										style="width: 50px; height: 50px"></td>
									<td><c:choose>
											<c:when test="${ acc.activated == 1 }">Yes</c:when>
											<c:when test="${ acc.activated == 0 }">No</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose></td>
									<td><c:choose>
											<c:when test="${acc.admin == 1}">Admin</c:when>
											<c:when test="${acc.admin == 0}">Member</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose></td>
									<td><a class="btn btn-primary"
										href="/IT16308_Assignment/admin/accounts/edit/${acc.id }">Update</a>
									</td>
									<td><button type="button" class="btn btn-danger"
											data-bs-toggle="modal" data-bs-target="#p${acc.id}">Delete</button>
										<!-- Modal -->
										<div class="modal fade" id="p${acc.id }" tabindex="-1"
											aria-labelledby="exampleModalLabel" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalLabel">Bạn có
															chắc muốn xóa</h5>
														<button type="button" class="btn-close"
															data-bs-dismiss="modal" aria-label="Close"></button>
													</div>
													<div class="modal-body">Bạn có chắc chắn muốn xóa tài
														khoản này không?</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-secondary"
															data-bs-dismiss="modal">Hủy</button>
														<a class="btn btn-danger"
															href="/IT16308_Assignment/admin/accounts/delete/${ acc.id }">Delete</a>
													</div>
												</div>
											</div>
										</div></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<div class="card-footer">
				<div class="row">
					<div class="col-6 offset-5">
						<ul class="pagination">
							<li class="page-item"><a
								href="/IT16308_Assignment/admin/accounts/create"
								class="page-link"> First</a></li>
							<li class="page-item"><a
								href="/IT16308_Assignment/admin/accounts/create?page=${data.number - 1 } "
								class="page-link"> Previous</a></li>
							<li class="page-item"><a class="page-link" href="#">
									${data.number }</a></li>
							<li class="page-item"><a
								href="/IT16308_Assignment/admin/accounts/create?page=${data.number + 1 }"
								class="page-link"> Next </a></li>
							<li class="page-item"><a
								href="/IT16308_Assignment/admin/accounts/create?page=${data.totalPages - 1 }"
								class="page-link"> Last </a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="/IT16308_Assignment/js/bootstrap.min.js"></script>
	<script src="/IT16308_Assignment/js/jquery.min.js"></script>
	<script src="/IT16308_Assignment/js/popper.min.js"></script>

</body>

</html>