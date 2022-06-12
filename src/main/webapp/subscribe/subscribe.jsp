<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <title>Home</title>
    <style>
        @font-face {
            src: url("fonts/MinSans-Regular.otf");
            font-family: "MinSans-Regular.otf";
        }

        @font-face {
            src: url("fonts/MinSans-bold.otf");
            font-family: "MinSans-bold.otf";
        }

        @font-face {
            font-family: "Theafhh_.TTF";
            src: url("fonts/Theafhh_.TTF");
        }

        @font-face {
            src: url("fonts/GongGothicLight.ttf");
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


        .form-check {
            display: inline-block;
        }

        .class-body {
            padding: 20px;
            font-size: 25px;
            width: 600px;
        }

        .class-body div[class|=col] {
            padding: 20px;
        }
        .subs_img{
           padding-bottom: 30px;

        }

        #button-pay{
            background-color: rgb(172, 209, 130);
            border: 1px solid rgb(255, 255, 255);
            width: 150px;
            height: 40px;
            margin: 20px;
            border-radius: 40px;
            font-size: 18px;
            color: white;
            font-family: "GongGothicLight.ttf";
        }
        #button-back{
            background-color: rgb(134, 134, 134);
            border: 1px solid white;
            width: 150px;
            height: 40px;
            margin: 20px;
            border-radius: 40px;
            font-size: 18px;
            color: white;
            font-family: "GongGothicLight.ttf";
        }

        .suggest{
            font-family: "GongGothicLight.ttf";
            color: rgb(82, 82, 82);

        }
        .check{
            font-family: "GongGothicLight.ttf";
            color: rgb(255, 98, 98);

        }
    </style>
</head>
<body>
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

        <!-- 바디 -->
        <div class="container class-body">
            <div class="row content text-center align-items-center">
                <div class="row justify-content-around" style="text-align: center;">
                    <img src="/images/subs_img.png" class="d-block subs_img">
                </div>
               
            <form action="/subscribeInput.sub" method="post" id="subscribe-input-form">
                <div class="row content text-center align-items-center">
                    <div class="row suggest">
                        ${petDto.getPetName()} 에게 가장 어울리는 사료는 ${productName} 입니다.
                    </div>
                    <div class="col-12 check">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="subscribeTypeSelect" value="1" checked/>1개월 구독
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="subscribeTypeSelect" value="3"/>3개월 구독
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="subscribeTypeSelect" value="6"/>6개월 구독
                        </div>
                    </div>
                    <input type="text" name="subscribeType" id="subscribe-type" style="display: none;">
                    
                    <input type="text" name="productCode" value="${productCode}" style="display: none;">
                    
                    <input type="text" name="petName" value="${petDto.getPetName()}" style="display: none;">
                    <input type="text" name="petAge" value="${petDto.getPetAge()}" style="display: none;">
                    <input type="text" name="petAllergy" value="${petDto.getPetAllergy()}" style="display: none;">
                    <input type="text" name="petWeight" value="${petDto.getPetWeight()}" style="display: none;">
                    <input type="text" name="petKind" value="${petDto.getPetKind()}" style="display: none;">
                    <input type="text" name="petType" value="${petDto.getPetType()}" style="display: none;">
                    
                    <div class="col-12 btnBox">
                        <button type="button" id="button-pay">결제하기</button>
                        <button type="button" id="button-back">뒤로가기</button>
                    </div>
                </div>
            </form>
        </div>
        <!-- 여기까지 바디 -->

        <!-- 풋터 -->
        <div class="row justify-content-center footer">
            <div class="col-lg-10 col-12">
                <ul class="ft-ul">
                    <li>BoriBob Inc. 사랑시 고백구 행복동</li>
                    <li>대표 : 보리밥형제들 사업자등록번호 : 780-86-01094</li>
                    <li>대표번호 : +82)-665-3430 팩스번호 : +82)-888-3430 홈페이지 : petvenience.store.com</li>
                    <li>CopyrightⓒBoriBob Inc. All Rights Reserved.</li>
                </ul>
            </div>
     
        </div>
        <!-- 여기까지 풋터 -->
    </div>
    <script>
        function getSubscribeType() {
            const petTypeSelect = document.getElementsByName('subscribeTypeSelect');
            petTypeSelect.forEach((elem) => {
                if (elem.checked) {
                    document.getElementById('subscribe-type').value = elem.value;
                }
            })
        }

        document.getElementById('button-pay').addEventListener('click', () => {
            getSubscribeType();
            document.getElementById('subscribe-input-form').submit();
        })
        
        document.getElementById('button-back').addEventListener('click', () => {
        	location.href = '/pet.pet';
        })
    </script>
</body>
</html>