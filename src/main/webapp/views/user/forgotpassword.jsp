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
<link rel="stylesheet" href="./css/forgotpass.css">
<body>
	<div class="su">
		<form action="" class="forgot">
			<h4 class="cl modal-title">Quên Mật Khẩu</h4>
			<div>
				<div class="mb-3 ">
					<label for="username" class="cl username form-label"> Tài
						Khoản: </label> <input type="text" id="username" class="form-control"
						placeholder="Username">
				</div>
				<div class="mb-3 ">
					<label for="email" class="cl email form-label"> Email: </label> <input
						type="text" id="email" class="form-control" placeholder="Email">
				</div>
				<div class="d-flex ">
					<button type="submit" class="btn">confirm</button>
				</div>
				<p class="cl text-center">
					You Want to back? <a href="/asm/login">back sign in</a>
				</p>
			</div>
		</form>
	</div>
	<%-- <jsp:include page="content.jsp"></jsp:include>
	<jsp:include page="/views/admin/footer.jsp"></jsp:include> --%>
</body>
</html>