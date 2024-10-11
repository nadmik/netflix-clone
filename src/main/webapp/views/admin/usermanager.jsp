<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<base href="${pageContext.servletContext.contextPath}/">
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
<link rel="stylesheet" href="./css/icofont/icofont/icofont.min.css">
<script src="./js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="/css/nav.css">
<style>
h1 {
	text-align: center;
	letter-spacing: 5px;
	border: 5px solid black;
	background: #757a6e;
	border-radius: 10px;
	box-sizing: border-box;
	padding-top: 10px;
	padding-bottom: 10px;
}

.dlt {
	padding-left: 30px;
	padding-right: 30px;
}

.dl {
	padding-left: 30px;
	padding-right: 30px;
}

.fm {
	border: 5px solid black;
	background: #757a6e;
	border-radius: 10px;
	box-sizing: border-box;
	padding-top: 15px;
	padding-bottom: 30px;
}

.fme {
	border: 5px solid black;
	background: #757a6e;
	border-radius: 10px;
	box-sizing: border-box;
	padding-top: 15px;
	padding-bottom: 30px;
	min-height: 481px;
}

.rol {
	max-width: 700px;
	width: 80%;
	line-height: 3em;
	margin-left: 2em;
	padding-left: 10px;
}

.fm input[type="text"], .fm input[type="password"] {
	max-width: 900px;
	width: 84%;
	line-height: 3em;
	margin-left: 2em;
	border-radius: 5px;
	border: 2px solid #f2f2f2;
	padding-left: 10px;
	margin-bottom: 0.3em;
}

.btn {
	line-height: 3em;
	margin-left: 2em;
	padding-left: 10px;
}

.fmb button {
	height: 50px;
	width: 100px;
	border: 1px solid #f2f2f2;
	border-radius: 20px;
	color: black;
	text-transform: uppercase;
	cursor: pointer;
	background-color: lightblue;
	padding-left: 10px;
}

.kq {
	max-width: 500px;
	border: .5px solid black;
	background: white;
	border-radius: 10px;
	box-sizing: border-box;
	padding-top: 5px;
	padding-bottom: 5px;
	margin: 5% auto;
	text-align: center;
}
</style>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="bd row">
		<div class="col-sm-12">
			<div class="dl row">
				<div class="dlt ">
					<h1>USER MANAGER</h1>
				</div>
				<div class="col-sm-4">
					<div class="fm">
						<div class="fm2">
							<c:url var="url" value="/usermanager" />
							<!-- Form -->
							<form action="${url}/index" method="post">
								<input value="${form.id}" type="text" name="id"
									placeholder="Id?"><br> <input
									value="${form.password}" type="password" name="password"
									placeholder="Password?"><br> <input
									value="${form.fullname}" type="text" name="fullname"
									placeholder="Fullname?"><br> <input
									value="${form.email}" type="text" name="email"
									placeholder="Email Address?"><br>
								<div class="rol">
									<input ${form.admin?'checked':''} name="admin" type="radio"
										value="true">Admin <input ${form.admin?'':'checked'}
										name="admin" type="radio" value="false">User
								</div>
								<br>
								<div class="fmb d-flex justify-content-end">
									<button formaction="${url}/create"
										class="text-center btn btnbg btn-outline-dark m-3 px-2"
										type="submit">
										<i class="bi bi-plus-lg">Create</i>
									</button>
									<button formaction="${url}/update"
										class="btn btnbg btn-outline-dark m-3 px-2" type="submit">
										<i class="bi bi-capslock">Update</i>
									</button>
									<button formaction="${url}/delete"
										class="btn btnbg btn-outline-dark m-3 px-2" type="submit">
										<i class="bi bi-x-lg">Delete</i>
									</button>
									<button formaction="${url}/index"
										class="btn btnbg btn-outline-dark m-3 px-2" type="submit">
										<i class="bi bi-arrow-counterclockwise">Reset</i>
									</button>
								</div>
								
								<br>
							</form>
							<div class="kq">${message}</div>
						</div>
					</div>
				</div>
				<div class="col-sm-8">
					<!-- Bảng -->
					<div class="fme">
						<table class="table table-hover table-light" border="2"
							style="width: 100%">
							<thead>
								<tr>
									<th>ID</th>
									<th>PassWord</th>
									<th>FullName</th>
									<th>Email</th>
									<th>Role</th>
									<th>Edit</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="item" items="${items}">
									<tr>
										<td>${item.id}</td>
										<td>${item.password}</td>
										<td>${item.fullname}</td>
										<td>${item.email}</td>
										<td>${item.admin?'Admin':'User'}</td>
										<td><a href="/asm/usermanager/edit/${item.id}">Edit</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-12"></div>
	</div>
</body>
</html>