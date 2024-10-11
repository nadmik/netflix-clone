<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="./css/signup.css">

<body>
	<div class="su container col-4">
		<form action="/asm/signup" class="form" method="post">
			<h4 class="cl mx-5 mt-5">Registration</h4>
			<div><mark>${message}</mark></div> 
			<div class="form-outline mx-5 ">
				<div class="form-floating">
					<input name="id" type="" id="loginName" class="form-control"
						placeholder="Username" /> <label class="form-label"
						for="loginName">Username</label>
				</div>
			</div>
			<div class="form-outline my-4 mx-5">
				<div class="form-floating">
					<input name="fullname" type="text" id="form2Example2" class="form-control"
						placeholder="Fullname" /> <label class="form-label"
						for="form2Example2">Fullname</label>
				</div>
			</div>
			<div class="form-outline my-4 mx-5">
				<div class="form-floating">
					<input name="email" type="text" id="form2Example2" class="form-control"
						placeholder="password" /> <label class="form-label"
						for="form2Example2">Email</label>
				</div>
			</div>
			<div class="form-outline my-4 mx-5">
				<div class="form-floating">
					<input name="password" type="password" id="form2Example2" class="form-control"
						placeholder="password" /> <label class="form-label"
						for="form2Example2">Password</label>
				</div>
			</div>
			<div class="d-flex justify-content-center my-4">
				<button class="btn btn-outline-darkbtn-lg  px-5" type="submit">SignUp</button>
			</div>
			 <p class="cl text-center">Already have an account? <a href="/asm/login">SignIn</a></p>
		</form>
	</div>
	<%-- <jsp:include page="content.jsp"></jsp:include>
	<jsp:include page="/views/admin/footer.jsp"></jsp:include> --%>
</body>
</html>