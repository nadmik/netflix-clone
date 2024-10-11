<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
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
<link rel="stylesheet" href="./css/login.css">
<body>
	<section>
		<div class="ss container col-4">
			<form action="/asm/login" class="form" method="post">
				<h4 class="cl mx-5 mt-5">Đăng Nhập</h4>
				<div class="form-outline mx-5 ">
					<div class="form-floating">
						<input name="username" type="" id="loginName" class="form-control"
							value="${username }" placeholder="Email or username" /> <label
							class="form-label" for="loginName">Email or username</label>
					</div>
				</div>
				<div class="form-outline my-4 mx-5">
					<div class="form-floating">
						<input name="password" type="password" id="form2Example2" class="form-control"
							value="${password }" placeholder="password" /> <label
							class="form-label" for="form2Example2">password</label>
					</div>
				</div>
				<div class="d-flex justify-content-between align-items-center mx-5">
					<!-- Checkbox -->
					<div class="form-check mb-0">
						<input name="rememberme" class="form-check-input me-2" type="checkbox" value=""
							id="form2Example3"
							<c:if test="${rememberme == 'true' }">checked = "checked"</c:if> />
						<label class="cl form-check-label" for="form2Example3">
							Remember me </label>
					</div>
					<a href="/asm/forgotpassword" >Forgot password?</a>
				</div>
				<div class="d-flex justify-content-center my-4">
					<button class="btn btn-outline-darkbtn-lg  px-5" type="submit">Login</button>
				</div>
				<div class="cl d-flex justify-content-between mx-5">
					<p>You don't have an account?</p>
					<a href="/asm/signup">Register</a>
				</div>
			</form>
		</div>
	</section>
	<%-- <jsp:include page="content.jsp"></jsp:include>
	<jsp:include page="/views/admin/footer.jsp"></jsp:include> --%>
</body>
</html>