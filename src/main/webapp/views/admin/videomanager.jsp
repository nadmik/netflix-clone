<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.servletContext.contextPath}/">
<meta charset="utf-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet" href="./css/icofont/icofont/icofont.min.css">
<script src="./js/bootstrap.bundle.min.js"></script>
<script src="./js/jquery-3.6.0.min.js"></script>
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

.dlt {
	padding-left: 30px;
	padding-right: 30px;
}

.vd {
	padding-top: 30px;
	padding-bottom: 50px;
}

.vn {
	border: 5px solid black;
	background: #757a6e;
	border-radius: 10px;
	box-sizing: border-box;
	padding-top: 10px;
	padding-bottom: 10px;
}

.btn {
	line-height: 3em;
	margin-left: 2em;
	padding-left: 10px;
}

.fm button {
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

.table-wrapper {
	max-height: 300px; /* chỉ định chiều cao tối đa của bảng */
	overflow-y: scroll; /* tạo ra thanh cuộn dọc */
}
</style>
<body>
	<jsp:include page="nav.jsp"></jsp:include>
	<div class="vd bd container-fluid">
		<div class="dlt container">
			<h1>VIDEO MANAGER</h1>
		</div>
		<section class=" mt-3 mb-5" >
			<div class="vn container col-11 "style="min-height: 820px;">
				<ul class="nav nav-tabs">
					<li class="nav-item"><a class="nav-link active"
						data-bs-toggle="tab" href="#FavoriteUs"
						style="color: black; font-weight: bold;">VideoManager</a></li>
					<li class="nav-item"><a class="nav-link" data-bs-toggle="tab"
						href="#Shared" style="color: black; font-weight: bold;">VideoTable</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane container active" id="FavoriteUs">
						<c:url var="url" value="/videomanager" />
						<form action="${url}/index" method="post">
							<div class="row">
								<div class="row col-sm-12">
									<div class="col-4">
										<img id='imgPreview' class="w-100 my-4" src="" alt="">
									</div>
									<div class="col-8">
										<div class="form-outline my-4">
											<div class="form-floating">
												<input name="poster" id="poster" value="${form.poster}"
													type="text" class="form-control" placeholder="Poster src" />
												<label class="form-label" for="poster">Poster src</label>
											</div>
										</div>
										<div class="form-outline my-4">
											<div class="form-floating">
												<input name="id" type="text" id="ytbid" class="form-control"
													placeholder="Youtube ID" value="${form.id }" /> <label
													class="form-label" for="ytbid">Youtube ahred</label>
											</div>
										</div>
										<div class="form-outline my-4">
											<div class="form-floating">
												<input name="title" type="text" id="title"
													class="form-control" placeholder="Video title"
													value="${form.title }" /> <label class="form-label"
													for="title">Video title</label>
											</div>
										</div>
										<div class="form-outline my-4">
											<div class="form-floating">
												<input name="views" type="text" id="viewCount"
													class="form-control" placeholder="viewcount"
													value="${form.views }" /> <label class="form-label"
													for="viewCount">viewcount</label>
											</div>
										</div>
										<div class="my-4" style="color: #ffffff;">
											<input ${form.active?'checked':''} class=" mr-2" type="radio"
												name="active" value="true" id="" /> <label class="" for="">Active
											</label> <input ${form.active?'':'checked'} class=" me-2"
												type="radio" name="active" value="false" id="" /> <label
												class="" for="">InActive </label>
										</div>
									</div>

								</div>
								<div class="col-sm-12">
									<label style="color: #ffffff;" for="">Description</label>
									<textarea class="w-100" name="description" id="" cols="30"
										rows="10">${form.description }</textarea>
								</div>
							</div>
							<div class="fm d-flex justify-content-end">
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
						</form>
					</div>
					<div class="tab-pane container fade" id="Shared">
						<table class="table table-hover table-light mt-3" border="2"
							style="width: 100%">
							<thead>
								<tr>
									<th>Youtube ID</th>
									<th>Video title</th>
									<th>View count</th>
									<th>Status</th>
									<th>Edit</th>
								</tr>
							</thead>
							<tbody class="table-wrapper">
								<c:forEach var="item" items="${items}">
									<tr>
										<td>${item.id}</td>
										<td>${item.title}</td>
										<td>${item.views}</td>
										<td>${item.active?'active':'inactive'}</td>
										<td><a href="${url }/edit/${item.id}">Edit</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</section>
	</div>
</body>
</html>
<script>
	$(document.getElementById("poster")).ready(
			function() {
				var newSrc = $('#poster').val();
				$('#imgPreview').attr(
						'src',
						'https://img.youtube.com/vi/' + newSrc
								+ '/maxresdefault.jpg');
			});

	$('#poster').on(
			'blur',
			function() {
				var newSrc = $(this).val();
				$('#imgPreview').attr(
						'src',
						'https://img.youtube.com/vi/' + newSrc
								+ '/maxresdefault.jpg');
			});
</script>