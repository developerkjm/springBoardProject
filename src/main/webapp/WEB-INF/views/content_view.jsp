<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Spring Project</title>
<link rel="icon" type="image/x-icon"
	href="resources/assets/img/favicon.ico" />

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Varela+Round"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link rel="stylesheet" type="text/css" href="resources/css/styles.css">
</head>
<body>

	<form action="modify" method="post">
		<input type="hidden" name="bId" value="${content_view.bId}">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-lg-8 mx-auto text-center">

					<h1 class="text-black mb-5 text-uppercase">modify</h1>


					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Number</label>
						<div class="col-sm-8">${content_view.bId}</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Hit</label>
						<div class="col-sm-8">${content_view.bHit}</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Name</label>
						<div class="col-sm-8">
							<input type="text" name="bName" class="form-control"
								value="${content_view.bName}">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Title</label>
						<div class="col-sm-8">
							<input type="text" name="bTitle" class="form-control"
								value="${content_view.bTitle}">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2 col-form-label">Content</label>
						<textarea class="form-control col-sm-8" rows="7" name="bContent">
							${content_view.bContent}
						</textarea>
					</div>

					<div class="form-group row">
						<div class="col-sm-10">
							<button type="submit" class="btn btn-primary">Modify</button>
							<button class="btn btn-secondary">
								<a href="list.do" style="text-decoration: none; color: white;">List</a>
							</button>
							<button class="btn btn-secondary">
								<a href="delete?bId=${content_view.bId}"
									style="text-decoration: none; color: white;">Delete</a>
							</button>
							<button class="btn btn-secondary">
								<a href="reply_view?bId=${content_view.bId}"
									style="text-decoration: none; color: white;">Reply</a>
							</button>
						</div>
					</div>
				</div>
	</form>


	<!-- Bootstrap core JS-->
	<script src="resources/js/scripts.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- Third party plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>





</body>
</html>
</body>
</html>