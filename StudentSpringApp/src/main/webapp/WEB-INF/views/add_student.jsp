<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

<title>Student App</title>

<!-- Font Awesome Icons -->
<link rel="stylesheet"
	href='<c:url value="/resources/plugins/fontawesome-free/css/all.min.css"></c:url>'>

<!-- Theme style -->
<link rel="stylesheet"
	href='<c:url value="/resources/dist/css/adminlte.min.css"></c:url>'>
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
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
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="index3.html" class="brand-link"> <img
				src='<c:url value="/resources/dist/img/AdminLTELogo.png"></c:url>'
				alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
				style="opacity: .8"> <span
				class="brand-text font-weight-light">AdminLTE 3</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img
							src='<c:url value="/resources/dist/img/user2-160x160.jpg"></c:url>'
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
						<li class="nav-item has-treeview menu-open"><a href="#"
							class="nav-link active"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									Students <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="add" class="nav-link active">
										<i class="far fa-circle nav-icon"></i>
										<p>Add Student</p>
								</a></li>
								<li class="nav-item"><a href="view" class="nav-link"> <i
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
							<h1 class="m-0 text-dark">Add Student</h1>
						</div>
						<!-- /.col -->

					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->
			<!-- Main content -->
			<section class="content">
				<div class="col-md-12">
					<div class="card card-primary">
						<div class="card-header">
							<h3 class="card-title">Add Student</h3>
							<div class="card-tools">
								<button type="button" class="btn btn-tool"
									data-card-widget="collapse" data-toggle="tooltip"
									title="Collapse">
									<i class="fas fa-minus"></i>
								</button>
							</div>
						</div>

						<form action="/StudentSpringApp/handleStudent" method="post"
							id="quickForm">
							<input type="hidden" name="studentId"
								value="${student.studentId}" />
								<input type="hidden" value="${student.cityId}" id="cityId" /> 
							<div class="card-body">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="inputName">Student Name</label> <input
												type="text" id="inputStudentName" name="studentName"
												class="form-control" value="${student.studentName}">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="inputEmail">Student Email</label> <input
												type="text" id="inputStudentEmail" name="studentEmail"
												class="form-control" value="${student.studentEmail}">
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="inputName">Mobile No.</label> <input type="text"
												id="inputStudentPhoneNo" name="studentphoneNo"
												class="form-control" value="${student.studentphoneNo}">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="inputName">Gender</label><br>
											<div class="form-check">
												<input class="form-check-input" type="radio"
													name="studentGender"
													<c:if test="${student.studentGender == 'male'}">checked="checked"</c:if>
													value="male">Male

											</div>
											<div class="form-check">
												<input class="form-check-input" type="radio"
													name="studentGender"
													<c:if test="${student.studentGender == 'female'}">checked="checked"</c:if>
													value="female">Female
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="inputName">Subjects</label><br>
											<div class="form-check">
												<input class="form-check-input" name="studentSubject"
													type="checkbox"
													<c:if test="${fn:contains(student.studentSubject, 'math')}">checked="checked"</c:if>
													value="math">Maths
											</div>
											<div class="form-check">
												<input class="form-check-input" name="studentSubject"
													type="checkbox"
													<c:if test="${fn:contains(student.studentSubject, 'marathi')}">checked="checked"</c:if>
													value="marathi">Marathi
											</div>
											<div class="form-check">
												<input class="form-check-input" name="studentSubject"
													type="checkbox"
													<c:if test="${fn:contains(student.studentSubject, 'hindi')}">checked="checked"</c:if>
													value="hindi">Hindi
											</div>
											<div class="form-check">
												<input class="form-check-input" name="studentSubject"
													type="checkbox"
													<c:if test="${fn:contains(student.studentSubject, 'english')}">checked="checked"</c:if>
													value="english">English
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="inputStatus">Course</label> <select
												class="form-control custom-select" name="studentCourse">
												<option selected disabled>Select Course</option>
												<option
													<c:if test="${student.studentCourse == 'bcom'}">selected="selected"</c:if>
													value="bcom">Bcom</option>
												<option
													<c:if test="${student.studentCourse == 'bcs'}">selected="selected"</c:if>
													value="bcs">Bcs</option>
												<option
													<c:if test="${student.studentCourse == 'mcs'}">selected="selected"</c:if>
													value="mcs">Mcs</option>
												<option
													<c:if test="${student.studentCourse == 'mcom'}">selected="selected"</c:if>
													value="mcom">Mcom</option>
											</select>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="inputStatus">States</label> 
											<select class="form-control custom-select" name="stateId"
												id="stateName">
												<option value="0">Select States</option>
												<c:forEach items="${statelist}" var="state">
													<option value="${state.stateId}"
														<c:if test="${student.stateId == state.stateId}">selected="selected"</c:if>>${state.stateName}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="inputStatus">City</label> 
											<select class="form-control custom-select" name="cityId" id="cityName">
												<option>Select City</option>
											</select>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<label for="inputDescription">Address</label>
											<textarea id="inputStudentDescription" name="studentAddress"
												class="form-control" rows="4">${student.studentAddress}</textarea>
										</div>
									</div>
								</div>
							</div>
							<div class="card-footer">
								<button type="submit" class="btn btn-primary" id="submitbtn">Save</button>
							</div>
							<div class="modal fade" id="modal-success">
								<div class="modal-dialog">
									<div class="modal-content bg-success">
										<div class="modal-header">
											<h4 class="modal-title">Success Modal</h4>
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
											<button type="submit" class="btn btn-outline-light" id="btn">Save
												changes</button>
										</div>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
							<!-- /.modal -->
							<div class="modal fade" id="modal-warning">
								<div class="modal-dialog">
									<div class="modal-content bg-warning">
										<div class="modal-header">
											<h4 class="modal-title">Warning Modal</h4>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-footer justify-content-between">
											<button type="button" class="btn btn-outline-light"
												data-dismiss="modal">Close</button>
											<button type="submit" class="btn btn-outline-light">Save
												changes</button>
										</div>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
							<!-- /.modal -->
						</form>
					</div>
				</div>
			</section>
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

	<!-- REQUIRED SCRIPTS -->

	<!-- jQuery -->
	<script
		src='<c:url value="/resources/plugins/jquery/jquery.min.js"></c:url>'></script>
	<!-- Bootstrap 4 -->
	<script
		src='<c:url value="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></c:url>'></script>
	<!-- jquery-validation -->
	<script
		src='<c:url value="/resources/plugins/jquery-validation/jquery.validate.min.js"></c:url>'></script>
	<script
		src='<c:url value="/resources/plugins/jquery-validation/additional-methods.min.js"></c:url>'></script>
	<!-- AdminLTE App -->
	<script
		src='<c:url value="/resources/dist/js/adminlte.min.js"></c:url>'></script>

	<script type="text/javascript">
		
		$(document).ready(function() {
			
			var stateId = $('#stateName').val();
			//alert(stateId);
			var cityId = $('#cityId').val();
			//alert(cityId);
			$.ajax({
				url: "stateType/"+stateId+"/"+cityId, 
				type:"GET",
				success: function(response){
					$("#cityName").html(response);
			    }
			});
			
			$('#stateName').on('change', function (event) {
				var stateId = $(this).val();
				//alert(stateId);
				
				$.ajax({
					type:"GET",
					url: "stateType/"+stateId, 
					
					success: function(response){
						//alert(response);
						
						$("#cityName").html(response);
				    }
				});
			});
		})
				
	</script>

</body>
</html>
