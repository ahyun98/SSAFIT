<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<!-- 부트스트랩 코드-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!-- 구글 폰트 사이트-->
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<title>SSAFIT by 자료구조</title>

</head>

<body>
	<!-- NAV bar bootstrap -->
	<nav class="navbar navbar-light bg-light fixed-top">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
				aria-controls="offcanvasNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand" href="video">SSAFIT by 자료구조</a>

			<!-- Navbar-toggler 누르면 뜨는 것들 -->
			<div class="offcanvas offcanvas-start" tabindex="-1"
				id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
				<div class="offcanvas-header">
					<h5 class="offcanvas-title" id="offcanvasNavbarLabel">SSAFIT
						by 자료구조</h5>
					<button type="button" class="btn-close text-reset"
						data-bs-dismiss="offcanvas" aria-label="Close"></button>
				</div>
				<div class="offcanvas-body">
					<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
						<li class="nav-item p-2"><a class="nav-link active"
							aria-current="page" href="video">HOME</a> <!-- 누르면 토글 바 닫히는 기능 필요 -->
						</li>
						<li class="nav-item p-2"><a class="nav-link active"
							href="sortedvideo">Video 부위별로 보기</a></li>

						<!-- 작은 글씨 -->
						<li class="nav-item ms-4 mt-2"><a class="nav-link active"
							href="./join.html" style="font-size: smaller;">JOIN</a></li>
						<li class="nav-item ms-4 mt-2"><a class="nav-link active"
							href="./login.html" style="font-size: smaller;">LOGIN</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	
</body>

</html>