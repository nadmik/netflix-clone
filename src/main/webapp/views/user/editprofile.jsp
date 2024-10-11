<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<link rel="stylesheet" href="./css/editprofile.css">
<body>
	<div class="su container col-4">
		<form action="/asm/editprofile" class="form" method="post">
			<h4 class="cl mx-5 mt-5">Edit Profile</h4>
			<h5>
				<mark>${message}</mark>
			</h5>
			<div class="form-outline mx-5 ">
				<div class="form-floating">
					<input name="id" type="text" id="loginName" class="form-control "
						placeholder="Username" value="${user.id}" disabled readonly" /> <label
						class="form-label" for="loginName">Username</label>
				</div>
			</div>
			<div class="form-outline my-4 mx-5">
				<div class="form-floating">
					<input name="fullname" type="text" id="form2Example2"
						class="form-control" placeholder="Fullname"
						value="${user.fullname }" /> <label class="form-label"
						for="form2Example2">Fullname</label>
				</div>
			</div>
			<div class="form-outline my-4 mx-5">
				<div class="form-floating">
					<input name="email" type="text" id="form2Example2"
						class="form-control" placeholder="password" value="${user.email }" />
					<label class="form-label" for="form2Example2">Email</label>
				</div>
			</div>
			<div class="form-outline my-4 mx-5">
				<div class="form-floating">
					<input name="password" type="password" id="form2Example2"
						class="form-control" placeholder="password"
						value="${user.password }" /> <label class="form-label"
						for="form2Example2">Password</label>
				</div>
			</div>
			<div class="d-flex justify-content-center my-4">
				<button class="btn btn-outline-darkbtn-lg  px-5" type="submit">Update</button>
			</div>
			<div class="cl d-flex justify-content-between mx-5">
				<p>You Want To</p>
				<c:if test="${user.admin == true}">
					<a href="/asm/adminn">Back</a>
				</c:if>
				<c:if test="${user.admin == false}">
					<a href="/asm/userr">Back</a>
				</c:if>
			</div>
		</form>
	</div>
</body>
</html>