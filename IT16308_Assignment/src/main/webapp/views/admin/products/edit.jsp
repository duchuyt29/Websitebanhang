<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cập nhật sản phẩm</title>
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
					<h2 class="text-center">QUẢN LÝ SẢN PHẨM</h2>
				</div>
				<div class="col-md-12">
					<form:form
						action="/IT16308_Assignment/admin/products/update/${item.id }"
						modelAttribute="product" method="POST">
						<div class="form-input">
							<label class="form-label">Name :</label>
							<form:input path="name" value="${item.name }"
								class="form-control" />
						</div>
						<div class="form-input">
							<label class="form-label">Image :</label>
							<form:input path="image" value="${item.image }" type="file"
								class="form-control" />
						</div>
						<div class="form-input">
							<label class="form-label">Price :</label>
							<form:input path="price" value="${item.price }" type="number"
								class="form-control" />
						</div>
						<div class="form-input">
							<label class="form-label">Create date :</label>
							<form:input path="created_date" value="${item.created_date }"
								type="date" class="form-control" />
						</div>
						<div class="form-input">
							<label class="form-label"> Avaliable :</label>
							<form:radiobuttons name="available" path="available"
								value="${item.available }" items="${available }"
								label="Avaliable" />
						</div>
						<div class="form-input">
							<label>Category</label>
							<form:select path="category_id" value="${item.category_id }"
								class="form-select">
								<c:forEach items="${ds}" var="cate">
									<form:option value="${cate.id }">${cate.name }</form:option>
								</c:forEach>
							</form:select>
						</div>
						<div class="form-input m-3">
							<button class="btn btn-primary">Update</button>
							<a class="btn btn-success"
								href="/IT16308_Assignment/admin/products/create">Tạo mới sản
								phẩm</a>
						</div>
					</form:form>
				</div>
				<br>
				<h2 class="text-center">QUẢN LÝ SẢN PHẨM</h2>
				<div class="col-md-12">
					<table class="table table-bordered">
						<thead class="table-success">
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Image</th>
								<th>Price</th>
								<th>Created date</th>
								<th>Avaliable</th>
								<th colspan="2">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${data.content }" var="pro">
								<tr>
									<td>${ pro.id }</td>
									<td>${ pro.name }</td>
									<td><img src="${ pro.image }"
										style="width: 50px; height: 50px"></td>
									<td>${ pro.price }</td>
									<td>${ pro.created_date }</td>
									<td><c:choose>
											<c:when test="${ pro.available == 1}">Avaliable</c:when>
											<c:when test="${ pro.available == 0}">Unavliable</c:when>
										</c:choose></td>
									<td><a class="btn btn-primary"
										href="/IT16308_Assignment/admin/products/edit/${pro.id }">Update</a>
									</td>
									<td><button type="button" class="btn btn-danger"
											data-bs-toggle="modal" data-bs-target="#p${pro.id}">Delete</button>
										<!-- Modal -->
										<div class="modal fade" id="p${pro.id }" tabindex="-1"
											aria-labelledby="exampleModalLabel" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="exampleModalLabel">Bạn có
															chắc muốn xóa</h5>
														<button type="button" class="btn-close"
															data-bs-dismiss="modal" aria-label="Close"></button>
													</div>
													<div class="modal-body">Bạn có chắc chắn muốn xóa sản
														phẩm này không?</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-secondary"
															data-bs-dismiss="modal">Hủy</button>
														<a class="btn btn-danger"
															href="/IT16308_Assignment/admin/products/delete/${ pro.id }">Delete</a>
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
								href="/IT16308_Assignment/admin/products/create"
								class="page-link"> First</a></li>
							<li class="page-item"><a
								href="/IT16308_Assignment/admin/products/create?page=${data.number - 1 } "
								class="page-link"> Previous</a></li>
							<li class="page-item"><a class="page-link" href="#">
									${data.number }</a></li>
							<li class="page-item"><a
								href="/IT16308_Assignment/admin/products/create?page=${data.number + 1 }"
								class="page-link"> Next </a></li>
							<li class="page-item"><a
								href="/IT16308_Assignment/admin/products/create?page=${data.totalPages - 1 }"
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