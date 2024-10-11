<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Forr_Admin</title>
</head>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="./css/bootstrap.min.css">
<script src="./js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="./css/nav.css">
<link rel="stylesheet" href="./css/icofont/icofont/icofont.min.css">

<body>
	<header>
		<!-- fixed-top  -->
		<nav class="navbar navbar-expand-sm navbar-dark ">
			<div class="container-fluid">
				<div>
					<a class="navbar-brand" href="/asm/userr"> <img
						src="./image/logo/logo.png" alt="Avatar Logo" style="width: 60px;"
						class=""> <!-- rounded-pill -->
					</a>
				</div>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#mynavbar">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="mynavbar">
					<ul class="navbar-nav me-auto">
						<li class="nav-item"><a class="nav-link" href="#">TV Show</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Movies</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">New &
								Popular</a></li>
						<li class="nav-item"><a class="nav-link" href="#">My List</a>
						</li>
					</ul>
					<div class="nav-icon">
						<!-- <i class="icofont-search"></i>
                        <i class="icofont-bell-alt"></i> -->
						<i class="nav-item dropdown"> <a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"> <img
								src="./image/logo/avatar.png" width="30" height="30" alt="">
						</a>
							<ul class="dropdown-menu dropdown-menu-end">
								<li><a class="dropdown-item" href="/asm/editprofile">Edit
										Profile</a></li>
								<li><a class="dropdown-item" href="#">Setting</a></li>
								<li>
									<hr class="dropdown-divider" />
								</li>
								<li><a class="dropdown-item" href="/asm/login">Log Out</a>
								</li>
							</ul>
						</i>

					</div>
				</div>
			</div>
		</nav>
	</header>




</body>

</html>