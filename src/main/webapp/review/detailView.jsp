<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.boribob.dao.FileDAO"%>
<%@ page import="java.io.File"%>

<!-- 파일 이름이 동일한게 나오면 자동으로 다른걸로 바꿔주고 그런 행동 해주는것 -->

<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>

<!-- 실제로 파일 업로드 하기 위한 클래스 -->

<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
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
<title>리뷰보기</title>
<style>
@font-face {
	src: url("/fonts/MinSans-Regular.otf");
	font-family: "MinSans-Regular.otf";
}

@font-face {
	src: url("/fonts/MinSans-bold.otf");
	font-family: "MinSans-bold.otf";
}

@font-face {
	font-family: "Theafhh_.TTF";
	src: url("/fonts/Theafhh_.TTF");
}

@font-face {
	src: url("/fonts/GongGothicLight.ttf");
	font-family: "GongGothicLight.ttf";
}

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

.review>.row:first-child {
	border-bottom: 1px solid black;
}

textarea {
	resize: none;
	margin-bottom: 30px;
	background-color: #FFF !important;
}

#back-btn {
	margin-bottom: 30px;
	width: 100px;
	margin: 0 auto;
	font-family: "GongGothicLight.ttf";
	background-color: rgb(172, 209, 130);
	border: 1px solid white;
	height: 40px;
	border-radius: 40px;
	font-size: 18px;
	color: white;
}

.review>.row:nth-child(2) {
	border-bottom: 1px solid lightgray;
}

.review>.row:nth-child(3) {
	border-bottom: 1px solid lightgray;
}

.reviewTxt {
	font-size: 20px;
	font-family: "GongGothicLight.ttf";
}

.review {
	font-family: "GongGothicLight.ttf";
}

.answer {
	font-family: "GongGothicLight.ttf";
}

.buy-item {
	margin: 0 auto;
	border: 1px solid rgb(233, 233, 233);
	text-align: center;
	width: 300px;
	height: 300px;
}

#btn-back {
	margin-bottom: 30px;
	width: 100px;
	margin: 0 auto;
	font-family: "GongGothicLight.ttf";
	background-color: rgb(172, 209, 130);
	border: 1px solid white;
	height: 40px;
	border-radius: 40px;
	font-size: 18px;
	color: white;
}
}
</style>
</head>

<body>
</head>
<body>
    <body>
        <div class="row justify-content-around header" style="text-align: center;">
            <div class="col-lg-2" style="text-align: center;">
                <img src="/images/project_logo.png" class="d-block w-100" id="main-logo">
            </div>
            <div class="col-lg-8 col-12 topmenu">
                <nav class="navbar navbar-expand-lg navbar-light" style="float: right;">
                    <div class="container-fluid">
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation" style="border: none;">
                            <span class="navbar-toggler-icon"></span>
                        </button>
			            <c:choose>
					<c:when test="${not empty loginSession}">
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
									style="color: rgb(117, 160, 36); font-weight: bold;" href="/pet.pet">구독하기</a>
								</li>
							</ul>
						</div>
		            </c:when>
		            <c:otherwise>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/product.pro">제품 보기</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/inquiry.iq?currentPage=1">고객센터</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/member/member.jsp">회원 가입</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/review.bo?currentPage=1">리뷰</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/login/login.jsp">로그인</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(117, 160, 36); font-weight: bold;" href="/pet.pet">구독하기</a>
								</li>
							</ul>
						</div>
		            </c:otherwise>
		           	</c:choose> 
                    </div>
            </div>
            </nav> 
        </div>
        </div>
	<div class="board_wrap">
		<div class="container review">
			<div class="row  py-3">
				<div class="col-12 reviewTxt">보리밥 회원들의 생생한 후기</div>
			</div>
			<div class="row py-2">
				<div class="col-2 col-form-label">제목</div>
				<div class="col-10">${dto.reviewTitle}</div>
			</div>
			<div class="row py-2">
				<div class="col-lg-2 d-none d-lg-block col-form-label">작성자</div>
				<div class="col-lg-5 col-7">${dto.id}</div>
				<div class="col-lg-2 d-none d-lg-block col-form-label">작성일</div>
				<div class="col-lg-3 col-5">${dto.reviewDate}</div>
			</div>
			<div class="row py-2">
				<div class="col-2 form-label">내용</div>
				<div class="row justify-content-around">
					<img src="<%=request.getContextPath()%>/files/${oriName}"
						class="buy-item" alt="리뷰이미지">
						<br>
					<textarea readonly class="form-control" id="review-content"
						rows="20">${dto.reviewContent}</textarea>
				</div>
			</div>
		</div>
	</div>
	<div class="bt_wrap">
		<div class="row justify-content-center boxBtn">
			<button type="button" class="boxBtn" id="btn-back">뒤로가기</button>
		</div>

		<script>
    	$('#main-logo').on('click', () => {
    		location.href = "/home";
    	})
    $("#btn-back").on("click", function () {
    location.href = "/review.bo?currentPage=1"
 })

     </script>
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
</body>

</html>