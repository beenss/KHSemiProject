<%@ page language="java"
contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<lang lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/MinSans-Bold.woff">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <title>보리밥 - 멍멍이와 야옹이의 맞춤 사료 동산</title>
    <style>
        body {
            box-sizing: border-box;
        }
        .header {

            padding: 20px;
            position: relative;
            height: 320px;
            background: url("/images/anibanner1.gif");
            background-size: cover;
        }
        .vege {
            z-index: -100000;
        }

        .topmenu{
            font-size: 20px;
            font-family: "GongGothicLight.ttf";


        }
        .footer>* {
            background-color: rgb(255, 255, 255);
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
        #info {
            font-family: "GongGothicLight.ttf";
            font-size: 23px;
            font-weight: 700;
            line-height: 100%;
            letter-spacing: 1px;
            color: rgb(230, 137, 137);
            padding-top: 30px;
        }
        #minititle {
            padding-top: 50px;
            font-size: 25px;
            text-align: center;
            font-family: "GongGothicLight.ttf";
            color: #addaa0;
        }
        #title {
            font-family: "Theafhh_.TTF";
            font-size: 60px;
            color: rgb(252, 194, 186);
        }
        #mainbox1 {
            border: 1px solid rgb(255, 255, 255);
            width: 300px;
            height: 70px;
            background-color: rgb(183, 216, 150);
            font-family: "GongGothicLight.ttf";
            font-size: 26px;
            padding-top: 13.5px;
            border-radius: 40px;
            color: white;
            text-align: center;
            margin: 0 auto;
        }
        #mainbox2 {
            width: 700px;
            margin: 0 auto;
            padding: 50px;
        }
        #subscribebtn {
            width: 200px;
            height: 70px;
            background-color: rgb(255, 194, 145);
            border: 1px solid white;
            border-radius: 40px;
            font-size: 26px;
            font-family: "GongGothicLight.ttf";
            color: white;
        }
        .reviewtitle {
            border: 1px solid rgb(255, 255, 255);
            width: 400px;
            height: 70px;
            background-color: rgb(183, 216, 150);
            font-size: 27px;
            font-family: "GongGothicLight.ttf";
            border-radius: 40px;
            color: white;
            text-align: center;
            padding-top: 13.5px;
            margin-bottom: 70px;
        }
        .card {
            width: 350px;
            height: 350px;
            border-radius: 170px;
        }
        .review1 {
            background: url("images/6dog.jpg");
            border-radius: 170px;
            opacity: 0.8;
         
        }
        .review2 {
            background: url("/images/14cat.jpg");
            border-radius: 170px;
            opacity: 0.8;
        }

        .card-title{
            text-align: center;
            margin-top: 80px;
        }

        .btnMoreReview{
            text-align: center;
            text-decoration-line: none;
            margin-left: 110px;
            background-color: rgb(178, 184, 126);
        border: none;
        height: 100px;
        width: 100px;
        border-radius: 40px;
        font-size: 20px;
        color: white;
        font-family: "GongGothicLight.ttf";

            

        }
    </style>
</head>

</lang>

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
<!-- 여기까지 헤더 -->

<!-- 여기에 바디 코드 짜주셈 -->

<div class="container">
    <div class="row" style="text-align: center;">
        <div class="d-block" style="text-align: center;">
            <p id="minititle">우리집 강아지와 고양이에게 가장 행복한 시간을!</p>
            <img src="images/ss-001 (6).png" style="width: 800px; padding-bottom: 50px">
            <div class="d-block" style="text-align: center;" id="title">
                <p>BORI<br>BOB</p>
                <div class="d-block" style="text-align: center;" id="info">
                    <P>보리밥은 인공첨가물을 넣지 않아 반려동물에게</P>
                    <p>가장 건강한 식단을 제공합니다. 균형잡힌 영양가 높은 식단으로</p>
                    <p>나의 가족, 나의 친구에게 즐겁고 행복한 시간을 선물해주세요.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<br>
<br>
<div class="d-block" id="mainbox1">보리밥은 이렇게 달라요</div>
<br>

<div class="d-block" id="mainbox2">
    <img src="/images/3.png" class="d-block w-100">
</div>

<div class="d-block" id="mainbox2">
    <img src="/images/4.png" class="d-block w-100">
</div>
<br>
<br>

<div class="row justify-content-center">
    <p style="text-align: center;" class="reviewtitle">보리밥 회원들의 생생한 리뷰</p>
</div>
<div class="row justify-content-center">
    <div class="col-lg-3">
        <div class="col-lg-3">
            <div class="card">
                <div class="card-body review1">
                    <h3 class="card-title" style="text-shadow: -1px 0px white, 0px 1px white, 1px 0px white, 0px -1px white;">김바비님</h3>
                        <p class="card-text" style="text-shadow: -1px 0px white, 0px 1px white, 1px 0px white, 0px -1px white;">제가 살면서 먹어본 사료 중에서<br>
                            제일 맛있었어요.
                            저는 특히 닭고기를 좋아하는데 고소하면서도
                            잡냄새가 나지 않아서
                            먹는 내내 감탄만 했습니다</p>
                            <br>
                            <a href="/review.bo?currentPage=1" class="btnMoreReview">리뷰 더보기</a>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3">
        <div class="card">
            <div class="card-body review2">
                <h3 class="card-title" style="text-shadow: -1px 0px white, 0px 1px white, 1px 0px white, 0px -1px white;">이보리 님</h3>
                <p class="card-text" style="text-shadow: -1px 0px white, 0px 1px white, 1px 0px white, 0px -1px white;">저 정말 맛있는 것만 좋아하거든요?
                    제 친구들 사이에서도 맛있는 것만 좋아하는
                    미식냥으로 소문났는데 여기는 진짜 맛집이네요.
                    반해서 6개월 구독할 거예요</p>
                    <br>
                <a href="/review.bo?currentPage=1" class="btnMoreReview">리뷰 더보기</a>
            </div>
        </div>
    </div>
    <br>
    <!--구독하러 가기 버튼을 누르면 로그인 상태일 땐 구독정보 입력/ 비회원 상태일 땐 로그인창으로 이동-->
    <div class="btn-box">
        <br>
        <br>
        <br>
        <div class="row justify-content-center review">
            <button type="button" id="subscribebtn">구독하러 가기</button>
        </div>
    </div>
    <!-- 여기부터 풋터 -->
    <div class="row justify-content-center footer">
        <div class="col-lg-10 col-12">
            <ul class="ft-ul">
                <li>BoriBob Inc. 바비시 보리구 바비보리동</li>
                <li>대표 : 보리바비 사업자등록번호 : 777-77-77777</li>
                <li>대표번호 : +82)-665-3430 팩스번호 : +82)-1234-5678 홈페이지 : boribob.com</li>
                <li>CopyrightⓒBoriBob Inc. All Rights Reserved.</li>
            </ul>
        </div>

        </ul>
    </div>
    <script>
    	document.getElementById('subscribebtn').addEventListener('click', () => {
    		location.href = '/pet.pet';
    	})
    </script>
</div>
</div>
</body>
</html>