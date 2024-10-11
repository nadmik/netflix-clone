<%@ page contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/icofont/icofont/icofont.min.css">
<script src="./js/bootstrap.bundle.min.js"></script>
<style type="text/css">
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

.rp {
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


.table-wrapper {
	max-height: 300px; /* chỉ định chiều cao tối đa của bảng */
	overflow-y: scroll; /* tạo ra thanh cuộn dọc */
}
</style>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="bd container-fluid">
		<section class="">
			<div class="container col-11">
				<div class="row">
					<div class="dlt ">
						<h1>REPORT</h1>
					</div>
					<div class="rp col-sm-12">
						<form action="/asm/report" method="get">
							<table class="table table-hover table-light" border="1"
								style="width: 100%">
								<thead>
									<tr>
										<th>ID</th>
										<th>FAVORITE COUNT</th>
										<th>NEWEST DAY</th>
										<th>OLDEST DAY</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${report}">
										<tr>
											<td>${item.group}</td>
											<td>${item.likes}</td>
											<td>${item.newest}</td>
											<td>${item.oldest}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</form>
					</div>
				</div>
			</div>
		</section>
		<section class="mt-3 mb-5">
			<div class="rp container col-11 ">
				<ul class="nav nav-tabs">
					<li class="nav-item"><a class="nav-link active"
						data-bs-toggle="tab" href="#FavoriteUs"
						style="color: black; font-weight: bold;">Favorite user</a></li>
					<li class="nav-item"><a class="nav-link" data-bs-toggle="tab"
						href="#Shared" style="color: black; font-weight: bold;">Shared
							friends</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane container active" id="FavoriteUs">
						<form action="/asm/report/videott" method="get">
							<div class="d-flex align-items-center">
								<p style="color: #ffffff; font-size: 24px;">Video title</p>
								<select class="my-3 form-select w-75" name="idVideo"
									style="margin-left: 2rem;" onChange="changeAction()"
									id="select_box">
									<c:forEach items="${titles}" var="item">
										<option value="${item.id}"
											${item.id == selectedValue ? 'selected' : ''}>${item.title}</option>
									</c:forEach>
									<script type="text/javascript">
										var x = document.getElementById("select_box");
										var params = new URLSearchParams(window.location.search);
										var selectedValue = params.get('idVideo');
										if (selectedValue) {
											var option = x.querySelector('option[value="'+ selectedValue+ '"]');
											if (option) {
												option.selected = true;
											}
										}
										x.addEventListener("change",
											function() {
												var selectedValue = x.value;
												var encodedValue = encodeURIComponent(selectedValue);
												window.location = "/asm/report/videott?idVideo="+ encodedValue;
										});
									</script>
								</select>
							</div>
							<%-- <div class="table-responsive">
								<table class="table table-hover table-light">
									<thead>
										<tr>
											<th>Username</th>
											<th>Fullname</th>
											<th>Email</th>
											<th>Favorite date</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${user}">
											<tr>
												<td>${item[0]}</td>
												<td>${item[1]}</td>
												<td>${item[2]}</td>
												<td>${item[3]}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div> --%>
							<div class="table-wrapper">
								<table class="table table-hover table-light">
									<thead class="clonedHeader">
										<tr>
											<th>Username</th>
											<th>Fullname</th>
											<th>Email</th>
											<th>Favorite date</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="item" items="${user}">
											<tr>
												<td>${item[0]}</td>
												<td>${item[1]}</td>
												<td>${item[2]}</td>
												<td>${item[3]}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</form>
					</div>
					<div class="tab-pane container fade" id="Shared">
						<form action="/asm/report" method="post">
							<div class="d-flex align-items-center">
								<p style="color: #ffffff; font-size: 24px;">Video title</p>
								<select class="my-3 form-select w-75" style="margin-left: 2rem;">
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
								</select>
							</div>
							<table class="table table-hover table-light">
								<thead>
									<tr>
										<th>Sender name</th>
										<th>Sender email</th>
										<th>Receiver email</th>
										<th>Send date</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>ng a</td>
										<td>n@gmail.com</td>
										<td>02/02/2022</td>
										<td>02/02/2022</td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>