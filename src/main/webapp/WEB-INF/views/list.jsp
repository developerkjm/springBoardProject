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

<body id="page-top">
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">Home</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#about">About</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#board">Board</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="#signup">Contact</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Masthead-->
	<header class="masthead">
		<div class="container d-flex h-100 align-items-center">
			<div class="mx-auto text-center">
				<h1 class="mx-auto my-0 text-uppercase">Spring Board Project</h1>
				<h2 class="text-white-50 mx-auto mt-2 mb-5">
					Kang jumi </br> jmkang1984@gmail.com</br> 010-2742-2558
				</h2>
				<a class="btn btn-primary js-scroll-trigger" href="#about">Get
					Started</a>
			</div>
		</div>
	</header>
	<!-- About-->
	<section class="about-section text-center" id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 mx-auto">
					<h2 class="text-white mb-4">Built with Bootstrap 4</h2>
					<p class="text-white-50">
						Grayscale is a free Bootstrap theme created by Start Bootstrap. It
						can be yours right now, simply download the template on <a
							href="https://startbootstrap.com/theme/grayscale/">the
							preview page</a> . The theme is open source, and you can use it for
						any purpose, personal or commercial.
					</p>
				</div>
			</div>
			<img class="img-fluid" src="resources/assets/img/ipad.png" alt="" />
		</div>
	</section>
	<!-- Projects-->
	<section class="projects-section bg-light" id="board">
		<div class="container">
			<div class="mx-auto text-center">
				<h1 class="mx-auto my-0 text-uppercase">Board</h1>
				<!-- Featured Project Row-->
				<!-- 게시판 시작 -->
			</div>
			</br>
			<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">이름</th>
						<th scope="col">제목</th>
						<th scope="col">날짜</th>
						<th scope="col">조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="dto">
						<tr>
							<td>${dto.bId}</td>
							<td>${dto.bName}</td>
							<td><c:forEach begin="1" end="${dto.bIndent}">-</c:forEach>
								<a href="content_view?bId=${dto.bId}">${dto.bTitle}</a></td>
							<td>${dto.bDate}</td>
							<td>${dto.bHit}</td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="5"><button type="button" class="btn btn-primary">
								<a href="write_view"
									style="text-decoration: none; color: white;">글작성</a>
							</button></td>
					</tr>
				</tbody>
			</table>


			<!-- 모달창 실험 시작
			<button type="button" class="btn btn-primary btn-lg" data-toggle="modal"
				data-target="#exampleModal">WRITE
			</button>			

			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">글쓰기</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form>
								<div class="form-group">
									<label for="recipient-name" class="col-form-label">TITLE:</label>
									<input type="text" class="form-control" id="recipient-name">
								</div>
								<div class="form-group">
									<label for="message-text" class="col-form-label">MESSAGE:</label>
									<textarea class="form-control" id="message-text"></textarea>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">CANCEL</button>
							<button type="button" class="btn btn-primary">
								SAVE</button>
						</div>
					</div>
				</div>
			</div>
			<script>
				// 모달 버튼에 이벤트를 건다.
				$('#openModalBtn').on('click', function() {
					$('#modalBox').modal('show');
				});
				// 모달 안의 취소 버튼에 이벤트를 건다.
				$('#closeModalBtn').on('click', function() {
					$('#modalBox').modal('hide');
				});
			</script>
			모달창 실험 끝  -->			
		</div>
	</section>
	<!-- Signup-->
	<section class="signup-section" id="signup">
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-lg-8 mx-auto text-center">
					<i class="far fa-paper-plane fa-2x mb-2 text-white"></i>
					<h2 class="text-white mb-5">Subscribe to receive updates!</h2>
					<form class="form-inline d-flex">
						<input class="form-control flex-fill mr-0 mr-sm-2 mb-3 mb-sm-0"
							id="inputEmail" type="email" placeholder="Enter email address..." />
						<button class="btn btn-primary mx-auto" type="submit">Subscribe</button>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- Contact-->
	<section class="contact-section bg-black">
		<div class="container">
			<div class="row">
				<div class="col-md-4 mb-3 mb-md-0">
					<div class="card py-4 h-100">
						<div class="card-body text-center">
							<i class="fas fa-map-marked-alt text-primary mb-2"></i>
							<h4 class="text-uppercase m-0">Name</h4>
							<hr class="my-4" />
							<div class="small text-black-50">Kang jumi</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 mb-3 mb-md-0">
					<div class="card py-4 h-100">
						<div class="card-body text-center">
							<i class="fas fa-envelope text-primary mb-2"></i>
							<h4 class="text-uppercase m-0">Email</h4>
							<hr class="my-4" />
							<div class="small text-black-50">
								<a href="#!">jmkang1984@gmail.com</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 mb-3 mb-md-0">
					<div class="card py-4 h-100">
						<div class="card-body text-center">
							<i class="fas fa-mobile-alt text-primary mb-2"></i>
							<h4 class="text-uppercase m-0">Phone</h4>
							<hr class="my-4" />
							<div class="small text-black-50">+1 (010) 2742-2558</div>
						</div>
					</div>
				</div>
			</div>
			<div class="social d-flex justify-content-center">
				<a class="mx-2" href="#!"><i class="fab fa-twitter"></i></a> <a
					class="mx-2" href="#!"><i class="fab fa-facebook-f"></i></a> <a
					class="mx-2" href="#!"><i class="fab fa-github"></i></a>
			</div>
		</div>
	</section>
	<!-- Footer-->
	<footer class="footer bg-black small text-center text-white-50">
		<div class="container">Copyright © Jumi Website 2020</div>
	</footer>

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
