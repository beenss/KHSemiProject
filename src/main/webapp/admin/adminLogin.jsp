<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<title>Insert title here</title>
<style>
body {
	box-sizing: border-box;
}

nav {
	height: 80px;
}
.header {
	position: relative;
	padding: 60px;
}
.nav-item {
	padding-right: 50px;
}
.d-grid{
	margin-left:70px
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="row header">
			<div class="col">
				<nav
					class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark justify-content-center">
					<div class="container">
						<a class="navbar-brand" href="#"></a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
							aria-controls="navbarNavDropdown" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarNavDropdown">
							<ul class="navbar-nav text-center">
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="#">Home</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> 회원 </a>
									<ul class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item" href="#">조회</a></li>
										<li><a class="dropdown-item" href="#">블랙리스트</a></li>
									</ul></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> 상품 </a>
									<ul class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item" href="#">전체 조회</a></li>
										<li><a class="dropdown-item" href="#">수정/삭제</a></li>
										<li><a class="dropdown-item" href="#">추가</a></li>
									</ul></li>
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="#">주문 조회/상세보기</a></li>
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="#">배송 조회/수정</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> 문의 </a>
									<ul class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item"
											href="#">조회/삭제</a></li>
										<li><a class="dropdown-item"
											href="#">답변 추가</a></li>
									</ul></li>
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="#">리뷰 조회/삭제</a></li>
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="#">login</a></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>
		<div class="container">
			<form id="loginForm" action="/login.admin" method="post">
				<div class="row mb-3 justify-content-center">
					<label for="inputEmail3" class="col-sm-1 col-form-label"><h5>아이디</h5></label>
					<div class="col-sm-4">
						<input type="text" class="form-control" id="id" name="managerId">
					</div>
				</div>
				<div class="row mb-3 justify-content-center">
					<label for="inputPassword3" class="col-sm-1 col-form-label"><h5>비밀번호</h5></label>
					<div class="col-sm-4">
						<input type="password" class="form-control" id="pw" name="managerPw">
					</div>
				</div>
				<div class="d-grid col-5 mx-auto">
  					<button class="btn btn-primary" type="button" id="login-btn">로그인</button>
				</div>
			</form>
		</div>
		<script>
			$("#login-btn").on("click",function(){
				if($("#id").val()==="" || $("#pw").val() === ""){
					alert("아이디, 비밀번호를 입력하세요");
					return;
				}
				$("#loginForm").submit();
			})
		</script>
			<c:if test="${rs eq false}">
				<script>
					alert("올바른 아이디 혹은 패스워드를 입력해주세요")
				</script>
			</c:if>
	</div>
</body>
</html>