<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<title>AdminLTE 3 | Starter</title>

<!-- Font Awesome Icons -->
<link rel="stylesheet" href='<c:url value="/resources/plugins/fontawesome-free/css/all.min.css"></c:url>'>
<!-- Toastr -->
<link rel="stylesheet" href='<c:url value="/resources/plugins/toastr/toastr.min.css"></c:url>'>
<!-- DataTables -->
<link rel="stylesheet"
	href='<c:url value="/resources/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css"></c:url>'>
<link rel="stylesheet"
	href='<c:url value="/resources/plugins/datatables-responsive/css/responsive.bootstrap4.min.css"></c:url>'>
<!-- Theme style -->
<link rel="stylesheet" href='<c:url value="/resources/dist/css/adminlte.min.css"></c:url>'>
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
crossorigin="anonymous" referrerpolicy="no-referrer" />

</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">

		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="index3.html" class="nav-link">Home</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">Contact</a></li>
			</ul>

			<!-- SEARCH FORM -->
			<form class="form-inline ml-3">
				<div class="input-group input-group-sm">
					<input class="form-control form-control-navbar" type="search"
						placeholder="Search" aria-label="Search">
					<div class="input-group-append">
						<button class="btn btn-navbar" type="submit">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</div>
			</form>

		</nav>

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="index3.html" class="brand-link"> <img
				src='<c:url value="/resources/dist/img/AdminLTELogo.png"></c:url>' alt="AdminLTE Logo"
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">AdminLTE 3</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src='<c:url value="/resources/dist/img/user2-160x160.jpg"></c:url>'
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block">Alexander Pierce</a>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
                with font-awesome or any other icon font library -->
						<li class="nav-item has-treeview menu-open"><a href="#"
							class="nav-link active"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									Students <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a
									href="add" class="nav-link"> <i
										class="far fa-circle nav-icon"></i>
										<p>Add Student</p>
								</a></li>

								<li class="nav-item"><a
									href="view" class="nav-link"> <i
										class="far fa-circle nav-icon"></i>
										<p>View Student</p>
								</a></li>
							</ul></li>
					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">Student Details</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Starter Page</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Student Table</h3>
									<input type="hidden" value="${isDelete}" id="isDelete">
								</div>
								<!-- /.card-header -->
								<div class="card-body">
								
									<table class="table table-bordered" id="example1">
										<thead>
											<tr>
												<th style="width: 10px">Id</th>
												<th style="width: 20px">Name</th>
												<th>Email</th>
												<th>Mobile Number</th>
												<th>Gender</th>
												<th>Subject</th>
												<th>Course</th>
												<th>State</th>
												<th>City</th>
												<th>Address</th>
												<th>Action</th>
											</tr>
										</thead>
										
										<tbody>
											<c:forEach items="${studentlist}" var="s">
												<tr>
													<td>${s.studentId}</td>
													<td>${s.studentName}</td>
													<td>${s.studentEmail}</td>
													<td>${s.studentphoneNo}</td>
													<td>${s.studentGender}</td>
													<td>${s.studentSubject}</td>
													<td>${s.studentCourse}</td>
													<td>${s.stateName}</td>
													<td>${s.cityName}</td>
													<td>${s.studentAddress}</td>
													<td><a href="update/${s.studentId}"><i class="fa-solid fa-pen-nib text-primary" style="font-size: 20px"></i></a>
														<a href="delete/${s.studentId}"><i class="fa-solid fa-trash-can text-danger" style="font-size: 20px;margin-left: 10px;"></i></a>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
			<div class="p-3">
				<h5>Title</h5>
				<p>Sidebar content</p>
			</div>
		</aside>
		<!-- /.control-sidebar -->

		<!-- Main Footer -->
		<footer class="main-footer">
			<!-- To the right -->
			<div class="float-right d-none d-sm-inline">Anything you want</div>
			<!-- Default to the left -->
			<strong>Copyright &copy; 2014-2019 <a
				href="https://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
		</footer>
	</div>
	<!-- ./wrapper -->

	<div class="modal fade" id="modal-danger">
		<div class="modal-dialog">
			<div class="modal-content bg-danger">
				<div class="modal-header">
					<h4 class="modal-title">Danger Modal</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p id="msg"></p>
				</div>
				<div class="modal-footer justify-content-between">
					<button type="button" class="btn btn-outline-light"
						data-dismiss="modal">Close</button>
					<a href="#" class="btn btn-outline-light" id="deletebtn">Delete</a>
				</div>
			</div>
		</div>
	</div>
	<!-- REQUIRED SCRIPTS -->

	<!-- jQuery -->
	<script src='<c:url value="/resources/plugins/jquery/jquery.min.js"></c:url>'></script>
	<!-- Bootstrap 4 -->
	<script src='<c:url value="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></c:url>'></script>
	<!-- DataTables -->
	<script src='<c:url value="/resources/plugins/datatables/jquery.dataTables.min.js"></c:url>'></script>
	<script src='<c:url value="/resources/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></c:url>'></script>
	<script
		src='<c:url value="/resources/plugins/datatables-responsive/js/dataTables.responsive.min.js"></c:url>'></script>
	<script
		src='<c:url value="/resources/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></c:url>'></script>
	<!-- Toastr -->
	<script src='<c:url value="/resources/plugins/toastr/toastr.min.js"></c:url>'></script>
	<!-- AdminLTE App -->
	<script src='<c:url value="/resources/dist/js/adminlte.min.js"></c:url>'></script>

	<script type="text/javascript">

	$(document).ready(function() {
		
		var flagDelete = $('#isDelete').val();
		if(flagDelete == 1) {
			$(document).Toasts('create', {
		        class: 'bg-danger', 
		        title: 'Delete Record',
		        autohide: true,
		        body: 'Delete Record Successfully...!'
		    });
		}
		
		$('#example1').DataTable({
		      "paging": true,
		      "lengthChange": true,
		      "searching": true,
		      "ordering": true,
		      "info": true,
		      "autoWidth": false,
		      "responsive": true,
		 });
	});
	
	</script>
</body>
</html>
