<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import=com.boribob.dao.FileDAO" %>
<%@ page import="java.io.File" %>

<!-- 파일 이름이 동일한게 나오면 자동으로 다른걸로 바꿔주고 그런 행동 해주는것 -->

<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<!-- 실제로 파일 업로드 하기 위한 클래스 -->

<%@ page import="com.oreilly.servlet.MultipartRequest" %>
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
<title>review</title>
<style>
body {
	box-sizing: border-box;
	background-color: white;
}

.header {
	padding: 20px;
	position: relative;
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

.ft-images {
	text-align: center;
}

.board_view {
	width: 100%;
	border-top: 1px solid #000;
}

.board_view .info dl {
	position: relative;
	display: inline-block;
	padding: 0 20px;
}

.title {
	padding: 10px;
	text-align: center;
	font-size: 20px;
}

.productBox {
	border: 1px solid black;
	width: 400px;
	height: 400px;
	margin: 0 auto;
}

.boxBtn>* {
	width: 100px;
	height: 40px;
	background-color: rgb(0, 0, 0);
	border: 1px solid white;
	border-radius: 40px;
	font-size: 15px;
	color: white;
}

.txt {
	padding: 50px;
	text-align: center;
	margin: 0 auto;
	background-color: white;
}

.info {
	border-bottom: 1px solid black;
}

.infobox {
	border-bottom: 1px solid black;
}

.cont {
	padding-top: 40px;
}
</style>
</head>

<body>
</head>
<div class="wrapper">
	<div class="row justify-content-center header">
		<div class="col-lg-4 col-12">
			<img src="images/project_logo.PNG" class="d-block w-100"
				id="main-logo">
		</div>
		<div class="col-lg-8 col-12">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container-fluid">
					<a class="navbar-brand" href="#">Boribob</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link" href="#">제품 보기</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
							<li class="nav-item"><a class="nav-link" href="#">회원 가입</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#">리뷰</a></li>
							<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
							<li class="nav-item"><a class="nav-link" href="#">구독하기</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<div class="board_wrap">
		<div class="row justify-content-center title">
			<img src="images/review_main.png" class="col-lg-10 d-block w-100"
				id="main-logo"> <strong>리뷰</strong>
			<p>보리밥 회원들의 생생한 후기를 들려드립니다.</p>
		</div>
		<div class="row justify-content-center info">
			<div class="board_view">
				<div class="col-12" style="text-align: center; font-size: 20px;">${dto.reviewTitle}</div>
				<div class="row py-2 infobox">
					<div class="col-lg-2 d-none d-lg-block col-form-label">작성자</div>
					<div class="col-lg-5 col-7">${dto.id}</div>
					<div class="col-lg-2 d-none d-lg-block col-form-label">작성일</div>
					<div class="col-lg-3 col-5">${dto.reviewDate}</div>
				</div>
			</div>
			<div class="cont">
				<div class="col d-flex justify-content-center align-items-center">
					<img src="<%=request.getContextPath() %> /files/${dto.oriname}" class="buy-item w-100" alt="리뷰이미">
				</div>
		</div>
			<div class="col d-flex justify-content-center align-items-center txt">
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
                    <div class="col-lg-2 col-12">

                        <ul class="ft-ul">
                            <li><strong>고객센터</strong></li>
                            <li style="height: 8px;"></li>
                            <li>오전 10시부터 오후 6시까지</li>
                            <li>토요일, 일요일, 공휴일 휴무</li>
                        </ul>
                    </div>
                </div>

            </div>
    </body>

    </html>