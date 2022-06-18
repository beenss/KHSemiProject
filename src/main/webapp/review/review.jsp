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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <title>리뷰 목록</title>
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


        .topmenu{
            font-family: "GongGothicLight.ttf";
            font-size: 20px;

        }

        .menu {
            background-color: rgb(255, 255, 255);
            font-size: 17px;
            font-family: "GongGothicLight.ttf";

        }
        #menu-logo{
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

        .pagination>li>a {
            background-color: white;
            color: #7e60b0;
        }

        .container>.row {
            border-top: 1px solid rgb(4, 128, 56);
        }

        .container>.row:first-child {
            height: 60px;
        }

        .content {
            height: 40px;
        }

        .paging {
            margin-top: 20px;
        }

        .btnBox {
            background-color: rgb(185, 211, 143);
            border: 1px solid white;
            width: 100px;
            height: 40px;
            margin: 20px;
            border-radius: 40px;
            font-size: 15px;
            color: white;
            font-family: "GongGothicLight.ttf";
        }
        .page{
            color: rgb(160, 182, 107);
            border: none;
            font-size: 20px;
            

        }
        .review_img{
            width: 600px;
            height: 450px;

        }
    </style>
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
    <div class="row justify-content-around" style="text-align: center;">
        <img src="/images/review_img.png"class="d-block review_img">
        </div>
    <div class="container">
     
        <div class="row text-center align-items-center menu">
            <div class="col-lg-1 col-2">번호</div>
            <div class="col-lg-2 d-none d-lg-block">상품코드</div>
            <div class="col-lg-5 col-8">제목</div>
            <div class="col-lg-2 d-none d-lg-block">작성자</div>
            <div class="col-lg-2 col-2">작성일</div>
        </div>
        <c:choose>
            <c:when test="${list.size()==0}">
                <div class="row content text-center align-items-center">
                    <div class="col">등록된 게시글이 없습니다.</div>
                </div>
            </c:when>
            <c:otherwise>
                <c:forEach items="${list}" var="dto">
                    <div class="row content text-center align-items-center" style="cursor: pointer;"
                        onclick="location.href='/detailView.bo?seqReview=${dto.seqReview}';">
                        <div class="col-lg-1 col-2">${dto.seqReview}</div>
                        <div class="col-lg-2 d-none d-lg-block">${dto.productCode}</div>
                        <div class="col-lg-5">${dto.reviewTitle}</div>
                        <div class="col-lg-2 d-none d-lg-block">${dto.id}</div>
                        <div class="col-lg-2">${dto.reviewDate}</div>
                    </div>
                </c:forEach>
            </c:otherwise>
        </c:choose>
    </div>
    <!--페이징-->

    </div>
    <div class="row paging">
        <div class="col-12">
            <nav aria-label="Page navigation">
                <ul class="pagination justify-content-center">
                    <c:if test="${map.makePrev eq true}">
                        <li class="page-item"><a class="page-link page" href="/review.bo?currentPage=${map.startNavi-1}"
                                aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
                            </a></li>
                    </c:if>
                    <c:forEach var="pageNumber" begin="${map.startNavi}" end="${map.endNavi}" step="1">
                        <li class="page-item"><a class="page-link page"
                                href="/review.bo?currentPage=${pageNumber}">${pageNumber}</a></li>
                    </c:forEach>
                    <c:if test="${map.makeNext eq true}">
                        <li class="page-item"><a class="page-link page" href="/review.bo?currentPage=${map.endNavi+1}"
                                aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a></li>
                    </c:if>
                </ul>
            </nav>
        </div>
        <div class="row justify-content-center boxBtn">
            <button type="button" class="btnBox" id="btn-write">글쓰기</button>
    </div>
    <script>
		$('#main-logo').on('click', () => {
			location.href = "/home";
		})
        $("#btn-write").on("click", function () {
            location.href = "/write.bo";
        });
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

</body>

</html>