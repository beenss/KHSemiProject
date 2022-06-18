<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous" />
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<title>주문 상세</title>
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

.container {
	width: 700px;
}

.btnBox>* {
	padding: 0;
	width: 155px;
	margin-left: 50px;
	border: 1px solid rgb(255, 255, 255);
	background-color: rgb(255, 115, 91);
	border-radius: 10px;
	font-size: 18px;
	color: rgb(255, 255, 255);
	font-family: "GongGothicLight.ttf";
}

.orderDetailTxt {
	font-size: 37px;
	font-family: "GongGothicLight.ttf";
	color: rgb(159, 199, 121);
}
</style>
</head>
<body>
</head>
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

<!-- 여기까지 헤더 -->

<!-- 여기에 바디 코드 짜주셈 -->
<div class="container">
	<div class="row content text-center align-items-center">
		<p class="orderDetailTxt">주문 상태</p>
	</div>

	<ul class="list-group">
		<li class="list-group-item">배송상태 : ${detailDTO.deliveryStatus}</li>
		<li class="list-group-item">주문상품코드 : ${detailDTO.productCode}</li>
		<li class="list-group-item">주문자명 : ${detailDTO.orderName}</li>

		<li class="list-group-item">배송지주소 :
			${detailDTO.orderPost}-${detailDTO.orderRoadAddress}-${detailDTO.orderDetailAddress}
		</li>
		<li class="list-group-item">결제금액 : ${detailDTO.payAmount} 원</li>
		<li class="list-group-item">구독기간 : ${detailDTO.subscribeTerm} 개월
		</li>
		<li class="list-group-item">배송메시지 : ${detailDTO.postMsg}</li>
		<li class="list-group-item">주문메시지 : ${detailDTO.orderMsg}</li>
	</ul>
	<br> <br>
	<div class="btnBox">
		<button type="button" href="/home" id='homeBtn'>홈페이지로 이동</button>
		<button type="button" href="/review.bo?currentPage=1" id='reviewBtn'>리뷰페이지로
			이동</button>
		<button id="myPage" type="button">마이페이지로 이동
		</button>
	</div>
	
	<script>
		$('#main-logo').on('click', () => {
			location.href = "/home";
		})
		document.getElementById('homeBtn').addEventListener('click', () => {
			location.href = "/home"
		})
		document.getElementById('reviewBtn').addEventListener('click', () => {
			location.href = "/review.bo?currentPage=1"
		})
		document.getElementById('myPage').addEventListener('click', () => {
			location.href = "/mypage.my"
		})
	</script>



	<!-- 여기부터 풋터 -->
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
		<div class="col-lg-2 col-12"></div>
	</div>
</div>
</body>
</html>

