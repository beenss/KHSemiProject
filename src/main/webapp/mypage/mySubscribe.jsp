
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
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>마이페이지</title>
</head>
<style>
.mypage-container {
	font-family: "GongGothicMedium.ttf";
}

.mypage-container {
	margin-top: 50px;
	margin-bottom: 100px;
}

.line {
	border-bottom: 2px solid black;
}

#id {
	color: gray;
	margin-top: 25px;
	margin-bottom: 20px;
}

.sidebar {
	margin-top: 30px;
}

.sidebar>h2:first-child {
	font-weight: bolder;
}

li {
	color: black;
}

.content-box h2 {
	font-weight: bolder;
}

.row-product-body img {
	width: 25rem;
	height: 25rem;
}

.tr-th {
	text-align: center;
}

.row-product-body table>thead>tr:first-child>th {
	text-align: center;
	font-size: 25px;
	font-weight: bold;
}

.col-table {
	line-height: 60px;
}

.col-img {
	text-align: center;
}

.content-box p:first-child {
	margin-left: 35px;
}

#btnSubscribe {
	width: 200px;
	height: 45px;
	font-size: 20px;
}

.btn-subscribe {
	text-align: center;
	margin-top: 50px;
}

.noSubscribe {
	text-align: center;
}
/*  font */
@font-face {
	src: url("/fonts/MinSans-Regular.otf");
	font-family: "MinSans-Regular.otf";
}

@font-face {
	src: url("/fonts/MinSans-Thin.otf");
	font-family: "MinSans-Thin.otf";
}

@font-face {
	src: url("/fonts/MinSans-Medium.otf");
	font-family: "MinSans-Medium.otf";
}

@font-face {
	src: url("/fonts/MinSans-Theafhh.otf");
	font-family: "Theafhh_.TTF";
}

@font-face {
	src: url("/fonts/MinSans-Light.otf");
	font-family: "MinSans-Light.otf";
}

@font-face {
	src: url("/fonts/MinSans-Bold.otf");
	font-family: "MinSans-Bold.otf";
}

@font-face {
	src: url("/fonts/MinSans-Black.otf");
	font-family: "MinSans-Black.otf";
}

@font-face {
	src: url("/fonts/GongGothicBold.ttf");
	font-family: "GongGothicBold.ttf";
}

@font-face {
	src: url("/fonts/GongGothicLight.ttf");
	font-family: "GongGothicLight.ttf";
}

@font-face {
	src: url("/fonts/GongGothicMedium.ttf");
	font-family: "GongGothicMedium.ttf";
}

/* 헤더 풋터 */
body {
	box-sizing: border-box;
	background-color: white;
}

.header {
	padding: 20px;
	position: relative;
}

.topmenu {
	font-family: "GongGothicLight.ttf";
	font-size: 20px;
}

.menu {
	background-color: rgb(255, 255, 255);
	font-size: 17px;
	font-family: "GongGothicLight.ttf";
}

#menu-logo {
	width: 70px;
	height: 80px;
}

.footer>* {
	background-color: white;
	padding: 20px;
	position: relative;
}

.ft-ul {
	list-style: none;
	text-align: center;
	height: 100%;
	padding-top: 28px;
	color: black;
	font-size: 12px;
	z-index: 1;
}
</style>
<body>
	<!-- header -->
	<div class="row justify-content-around header"
		style="text-align: center;">
		<div class="col-lg-2" style="text-align: center;">
			<img src="/images/project_logo.png" class="d-block w-100"
				id="main-logo">
		</div>
		<div class="col-lg-8 col-12 topmenu">
			<nav class="navbar navbar-expand-lg navbar-light"
				style="float: right;">
				<div class="container-fluid">
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation" style="border: none;">
						<span class="navbar-toggler-icon"></span>
					</button>


					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link"
								style="color: rgb(0, 0, 0);" href="/product.pro">제품 보기</a></li>
							<li class="nav-item"><a class="nav-link"
								style="color: rgb(0, 0, 0);" href="/inquiry.iq?currentPage=1">고객센터</a></li>
							<li class="nav-item"><a class="nav-link"
								style="color: rgb(0, 0, 0);" href="/mypage.my">마이페이지</a></li>
							<li class="nav-item"><a class="nav-link"
								style="color: rgb(0, 0, 0);" href="/review.bo?currentPage=1">리뷰</a></li>
							<li class="nav-item"><a class="nav-link"
								style="color: rgb(0, 0, 0);" href="/logout.mem">로그아웃</a></li>
							<li class="nav-item"><a class="nav-link"
								style="color: rgb(117, 160, 36); font-weight: bold;"
								href="/pet.pet">구독하기</a></li>
						</ul>
					</div>
				</div>
				</nav>
		</div>		
	</div>
	<!-- 마이페이지  바디-->
	<div class="container mypage-container">
		<div class="row">
			<!-- 사이드 내비바 -->
			<div class="col-sm-2 sidebar">
				<h2>
					<span>${member.name}</span><span>님</span>
				</h2>
				<h3>
					<span>안녕하세요.</span>
				</h3>
				<div id="id">
					<span>${member.id}</span>
				</div>
				<ul class="nav flex-column">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="/mypage.my">구독 내역 조회</a></li>
					<li class="nav-item"><a class="nav-link" href="/orderList.my">주문
							내역 조회</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/inquiryList.iq">내가 쓴 문의</a></li>
					<li class="nav-item"><a class="nav-link" href="/reviewList.bo">내가
							쓴 후기</a></li>
					<li class="nav-item"><a class="nav-link" href="/update.my">회원정보
							수정</a></li>
					<li class="nav-item"><a class="nav-link" href="/withdrawal.my">회원탈퇴</a></li>
				</ul>
			</div>
			<!-- content body -->
			<div class="col-sm-10 content-box">
				<div>
					<h2>
						<p>구독 내역</p>
					</h2>
				</div>
				<div class="line"></div>
				<c:if test="${subscribe eq null}">
					<%-- 구독하고 있지 않을때 --%>
					<br>
					<%-- 로고 넣기 --%>
					<div class="noSubscribe">
						<p>
						<h5>구독 중인 상품이 없습니다.</h5>
						</p>
					</div>
					<div class="btn-subscribe">
						<button type="button" class="btn btn-dark" id="btnSubscribe">구독하기</button>
					</div>
				</c:if>
				<c:if test="${subscribe ne null}">
					<%-- 구독 중일때 --%>

					<br>
					<div class="row row-product-body">
						<div class=" col-md-6 col-img">
							<div>
								<img src="${product.productImg}">
							</div>
						</div>
						<!-- 테이블 자리 -->
						<div class=" col-md-6 col-table">
							<table class="table">
								<thead>
									<tr>
										<th scope="col" colspan="2">${pet.petName}</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row" class="tr-th">구독 중인 사료</th>
										<td>${product.productName}</td>
									</tr>
									<tr>
										<th scope="row" class="tr-th">구독 시작일</th>
										<td>${subscribe.subscribeStart}</td>
									</tr>
									<tr>
										<th scope="row" class="tr-th">구독 개월수</th>
										<td>${subscribe.subscribeTerm}개월</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</c:if>
			</div>
		</div>
	</div>
	<!-- footer -->
	<div class="row justify-content-center footer">
			<div class="col-lg-10 col-12">
				<ul class="ft-ul">
					<li>BoriBob Inc. 사랑시 고백구 행복동</li>
					<li>대표 : 보리밥형제들 사업자등록번호 : 780-86-01094</li>
					<li>대표번호 : +82)-665-3430 팩스번호 : +82)-888-3430 홈페이지 :
						petvenience.store.com</li>
					<li>CopyrightⓒBoriBob Inc. All Rights Reserved.</li>
				</ul>
			</div>
		</div>
	</div>
	
	<script>
	$('#main-logo').on('click', () => {
		location.href = "/home";
	})
	$("#btnSubscribe").on("click",function(){
		location.href="/pet.pet";
	})
	
	</script>
</body>
</html>
