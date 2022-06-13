<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

    <title>상품상세</title>
    <style>
        

 		/* 상품상세 페이지 바디 부분 */
 		
             .wrap{
            margin-bottom: 50px;
            font-family: "GongGothicMedium.ttf"
            
        }
        .product-detail-info{
            margin-top: 50px;

        }
        .product-name{
            margin-left: 50px;
        }
        .wrap ul {
            margin-top: 30px;
            margin-bottom: 30px;
            display: block;
            list-style: none;
            height:150px;
        }

        .wrap li {
            float: left;
            height: 75px;
            line-height: 75px;
            text-align: center;
        }

        li:not(:first-child) {
            margin-left: 35px;
        }

        li>p {
            margin: 0%;
        }

        li>p>img {
            width: 100%;
            height: 60px;
        }
        .txt{
            margin-top: 50px;
            margin-bottom: 20px;
        }
        .txt>span{
            font-size:18px;
            font-weight: 700;
        }
        .btn{
            width: fit-content;
        }
        .product-img img {
            padding: 50px;
        }
        .product-info{
            vertical-align: middle;
            padding: 30px;
        }
        .btn-subscribe>button{
            width: 200px;
            height: 45px;
            font-size: 20px;
        }
        .btn-subscribe{
            text-align: center;
        }
        .product-info h2{
            margin-top: 30px;
            font-weight: 650;
        }
        .nutrient-text{
            margin-bottom: 30px;
        }
        .nutrient-text{
            border-bottom: 2px solid black;
        }
        .nutrient-text p {
            font-size: 20px;
            font-weight: bolder;
            margin-left: 20px;
        }
        .row-product-name{
            border-bottom: solid 2px black;
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
</head>

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
        <!--상품 이미지 영역입니다 해당 이미지를 클릭 시 상품 상세정보로 이동-->
        <!-- 상품 상세 페이지 -->
    <div class="wrap">
    <div class="container product-detail-info">
        <div class="row row-product-name">
            <div class="col-sm-12 product-name">
                <h1><span>${product.productName}</span></h1>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-lg-6 product-img">
                <div>
                    <img src="${product.productImg}" class="card-img-top" alt="...">
                </div>
            </div>
            <div class="col-lg-6 product-info">
                <div>
                    <h2><span>${product.productName}</span><span>는</span> <br>
                    <span>이런 특징을 가지고 있어요!</span></h2>
                </div>
                <br>
                <c:if test="${product.productCode == 1}">
                <ul class="d-none d-lg-block">
                    <li>
                        <p class="img"><img src="/images/nutrient/a.png"></p>
                        <span>고단백</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/b.png"></p>
                        <span>기호증강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/g.png"></p>
                        <span>성장기도움</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/j.png"></p>
                        <span>영양보충</span>
                    </li>
                </ul>
                </c:if>
                <c:if test="${product.productCode == 2}">
                <ul class="d-none d-lg-block">
                    <li>
                        <p class="img"><img src="/images/nutrient/l.png"></p>
                        <span>피부건강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/b.png"></p>
                        <span>기호증강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/g.png"></p>
                        <span>성장기도움</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/d.png"></p>
                        <span>미네랄보충</span>
                    </li>
                </ul>
                </c:if>
                <c:if test="${product.productCode == 3}">
                <ul class="d-none d-lg-block">
                    <li>
                        <p class="img"><img src="/images/nutrient/a.png"></p>
                        <span>고단백</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/e.png"></p>
                        <span>미네랄강화</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/c.png"></p>
                        <span>면역력증가</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/j.png"></p>
                        <span>영양보충</span>
                    </li>
                </ul>
                </c:if>
                    <c:if test="${product.productCode == 4}">
                <ul class="d-none d-lg-block">
                    <li>
                        <p class="img"><img src="/images/nutrient/k.png"></p>
                        <span>윤택한헤어</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/b.png"></p>
                        <span>기호증강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/l.png"></p>
                        <span>피부건강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/j.png"></p>
                        <span>영양보충</span>
                    </li>
                </ul>
                </c:if>
                 <c:if test="${product.productCode == 5}">
                <ul class="d-none d-lg-block">
                    <li>
                        <p class="img"><img src="/images/nutrient/f.png"></p>
                        <span>뼈건강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/h.png"></p>
                        <span>소화도움</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/g.png"></p>
                        <span>성장기도움</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/i.png"></p>
                        <span>영양균형</span>
                    </li>
                </ul>
                </c:if>
                <c:if test="${product.productCode == 6}">
                <ul class="d-none d-lg-block">
                    <li>
                        <p class="img"><img src="/images/nutrient/f.png"></p>
                        <span>뼈건강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/h.png"></p>
                        <span>소화도움</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/d.png"></p>
                        <span>비타민강화</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/i.png"></p>
                        <span>영양균형</span>
                    </li>
                </ul>
                </c:if>
                   <c:if test="${product.productCode == 7}">
                <ul class="d-none d-lg-block">
                    <li>
                        <p class="img"><img src="/images/nutrient/f.png"></p>
                        <span>뼈건강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/h.png"></p>
                        <span>소화도움</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/m.png"></p>
                        <span>항산화</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/i.png"></p>
                        <span>영양균형</span>
                    </li>
                </ul>
                </c:if>
                     <c:if test="${product.productCode == 8}">
                <ul class="d-none d-lg-block">
                    <li>
                        <p class="img"><img src="/images/nutrient/f.png"></p>
                        <span>뼈건강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/e.png"></p>
                        <span>미네랄강화</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/e.png"></p>
                        <span>비타민강화</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/i.png"></p>
                        <span>영양균형</span>
                    </li>
                </ul>
                </c:if>
                     <c:if test="${product.productCode == 9}">
                <ul class="d-none d-lg-block">
                    <li>
                        <p class="img"><img src="/images/nutrient/a.png"></p>
                        <span>고단백</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/b.png"></p>
                        <span>기호증강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/g.png"></p>
                        <span>성장기도움</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/j.png"></p>
                        <span>영양보충</span>
                    </li>
                </ul>
                </c:if>
                <c:if test="${product.productCode == 10}">
                <ul class="d-none d-lg-block">
                    <li>
                        <p class="img"><img src="/images/nutrient/l.png"></p>
                        <span>피부건강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/b.png"></p>
                        <span>기호증강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/g.png"></p>
                        <span>성장기도움</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/i.png"></p>
                        <span>영양균형</span>
                    </li>
                </ul>
                </c:if>
                
                <c:if test="${product.productCode == 11}">
                <ul class="d-none d-lg-block">
                    <li>
                        <p class="img"><img src="/images/nutrient/a.png"></p>
                        <span>고단백</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/d.png"></p>
                        <span>미네랄강화</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/e.png"></p>
                        <span>영양보충</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/c.png"></p>
                        <span>면역력증가</span>
                    </li>
                </ul>
                </c:if>
                
                 <c:if test="${product.productCode == 12}">
                <ul class="d-none d-lg-block">
                    <li>
                        <p class="img"><img src="/images/nutrient/k.png"></p>
                        <span>윤택한헤어</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/b.png"></p>
                        <span>기호증강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/l.png"></p>
                        <span>피부건강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/j.png"></p>
                        <span>영양보충</span>
                    </li>
                </ul>
                </c:if>
                
                  <c:if test="${product.productCode == 13}">
                <ul class="d-none d-lg-block">
                    <li>
                        <p class="img"><img src="/images/nutrient/h.png"></p>
                        <span>소화도움</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/g.png"></p>
                        <span>성장기도움</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/i.png"></p>
                        <span>영양균형</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/c.png"></p>
                        <span>면연력증진</span>
                    </li>
                </ul>
                </c:if>
                
                <c:if test="${product.productCode == 14}">
                <ul class="d-none d-lg-block">
                    <li>
                        <p class="img"><img src="/images/nutrient/f.png"></p>
                        <span>뼈건강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/h.png"></p>
                        <span>소화도움</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/e.png"></p>
                        <span>비타민강화</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/i.png"></p>
                        <span>영양균형</span>
                    </li>
                </ul>
                </c:if>
                
                  <c:if test="${product.productCode == 15}">
                <ul class="d-none d-lg-block">
                    <li>
                        <p class="img"><img src="/images/nutrient/f.png"></p>
                        <span>뼈건강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/h.png"></p>
                        <span>소화도움</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/m.png"></p>
                        <span>항산화</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/i.png"></p>
                        <span>영양균형</span>
                    </li>
                </ul>
                </c:if>
                
                 <c:if test="${product.productCode == 16}">
                <ul class="d-none d-lg-block">
                    <li>
                        <p class="img"><img src="/images/nutrient/f.png"></p>
                        <span>뼈건강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/d.png"></p>
                        <span>미네랄강화</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/e.png"></p>
                        <span>비타민보충</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/m.png"></p>
                        <span>항산화</span>
                    </li>
                </ul>
                </c:if>
                <c:if test="${product.productCode > 16}">
                <ul class="d-none d-lg-block">
                    <li>
                        <p class="img"><img src="/images/nutrient/a.png"></p>
                        <span>고단백</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/b.png"></p>
                        <span>기호증강</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/e.png"></p>
                        <span>비타민보충</span>
                    </li>
                    <li>
                        <p class="img"><img src="/images/nutrient/i.png"></p>
                        <span>영양균형</span>
                    </li>
                </ul>
                </c:if>
                        
                <div class="txt">
                    <span>${product.productContent}</span>
                </div> <br>
                <div class="btn-subscribe">
                    <button type="button" class="btn btn-dark" id="btnSubscribe">구독하기</button>
                </div>
            </div>
        </div>
        <br>
    </div>
    <div class="container product-detail-nutrient">
        <div class="row">
            <div class="col-12 nutrient-text d-none d-lg-block">
            <p>필수 영양소들이 포함된 재료로 만들어졌어요!</p>
            </div>
        </div>
        <div class="row row-ingredient">
       	<div class = "d-none d-lg-block">
       	<c:if test="${product.productCode == 1 || product.productCode == 3 }">
            <ul>
                <li>
                    <p class="img"><img src="/images/ingredient/16.png"></p>
                    <span>소고기</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/11.png"></p>
                    <span>보리</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/13.png"></p>
                    <span>블루베리</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/14.png"></p>
                    <span>비트</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/9.png"></p>
                    <span>두부</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/2.png"></p>
                    <span>감자</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/23.png"></p>
                    <span>파프리카</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/10.png"></p>
                    <span>렌틸콩</span>
                </li>
            </ul>
            </c:if>
            <c:if test="${product.productCode == 2 || product.productCode == 4 || product.productCode == 10 || product.productCode == 14}">
            <ul>
                <li>
                    <p class="img"><img src="/images/ingredient/25.png"></p>
                    <span>생선</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/15.png"></p>
                    <span>버섯</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/7.png"></p>
                    <span>당근</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/12.png"></p>
                    <span>브로콜리</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/9.png"></p>
                    <span>두부</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/22.png"></p>
                    <span>오트밀</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/19.png"></p>
                    <span>양배추</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/10.png"></p>
                    <span>렌틸콩</span>
                </li>
            </ul>
            </c:if>
  <c:if test="${product.productCode == 5 || product.productCode == 7 || product.productCode == 15 }">
            <ul>
                <li>
                    <p class="img"><img src="/images/ingredient/21.png"></p>
                    <span>오리</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/14.png"></p>
                    <span>비트</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/17.png"></p>
                    <span>애호박</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/7.png"></p>
                    <span>당근</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/9.png"></p>
                    <span>두부</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/22.png"></p>
                    <span>오트밀</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/19.png"></p>
                    <span>양배추</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/1.png"></p>
                    <span>가지</span>
                </li>
            </ul>
            </c:if>
              <c:if test="${product.productCode == 6 || product.productCode == 8 || product.productCode == 12 || product.productCode == 16}">
            <ul>
                <li>
                    <p class="img"><img src="/images/ingredient/12.png"></p>
                    <span>브로콜리</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/20.png"></p>
                    <span>연어</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/17.png"></p>
                    <span>애호박</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/10.png"></p>
                    <span>렌틸콩</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/22.png"></p>
                    <span>오트밀</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/24.png"></p>
                    <span>보리</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/15.png"></p>
                    <span>버섯</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/3.png"></p>
                    <span>고구마</span>
                </li>
            </ul>
            </c:if>
  				<c:if test="${product.productCode == 9 || product.productCode == 11}">
            <ul>
                <li>
                    <p class="img"><img src="/images/ingredient/5.png"></p>
                    <span>닭고기</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/2.png"></p>
                    <span>감자</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/3.png"></p>
                    <span>고구마</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/12.png"></p>
                    <span>브로콜리</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/22.png"></p>
                    <span>오트밀</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/23.png"></p>
                    <span>파프리카</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/14.png"></p>
                    <span>비트</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/8.png"></p>
                    <span>돼지고기</span>
                </li>
            </ul>
            </c:if>
		<c:if test="${product.productCode == 13}">
            <ul>
                <li>
                    <p class="img"><img src="/images/ingredient/18.png"></p>
                    <span>양고기</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/17.png"></p>
                    <span>애호박</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/3.png"></p>
                    <span>고구마</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/23.png"></p>
                    <span>파프리카</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/22.png"></p>
                    <span>오트밀</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/13.png"></p>
                    <span>블루베리</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/7.png"></p>
                    <span>당근</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/8.png"></p>
                    <span>돼지고기</span>
                </li>
            </ul>
            </c:if>
            <c:if test="${product.productCode > 16}">
            <ul>
                <li>
                    <p class="img"><img src="/images/ingredient/9.png"></p>
                    <span>두부</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/17.png"></p>
                    <span>애호박</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/3.png"></p>
                    <span>고구마</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/23.png"></p>
                    <span>파프리카</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/22.png"></p>
                    <span>오트밀</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/13.png"></p>
                    <span>블루베리</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/7.png"></p>
                    <span>당근</span>
                </li>
                <li>
                    <p class="img"><img src="/images/ingredient/19.png"></p>
                    <span>양배추</span>
                </li>
            </ul>
            </c:if>
            
            </div>
        </div>
    </div>    
    </div>
    
    
    <!--풋터영역-->
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