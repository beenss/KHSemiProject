<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
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
    <title>문의게시판</title>
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
            background-color: none;
        }

        .header {
            padding: 20px;
            position: relative;
        }

       
        .topmenu{
           font-size: 20px;
           font-family: "GongGothicLight.ttf";

        }

        .menu {
            background-color: rgb(255, 255, 255);
            font-size: 17px;
            font-family: "GongGothicLight.ttf";

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
        .inquiry_img{
            width: 600px;
            height: 450px;

        }
    </style>
    <title>고객센터</title>
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
        <!-- 여기부터 바디 -->
          <div class="row justify-content-around" style="text-align: center;">
        <img src="/images/inquiry_img.png"class="d-block inquiry_img">
        </div>
        <div class= "container">
            <div class="row text-center align-items-center menu">
                <div class="col-lg-1 col-2">번호</div>
                <div class="col-lg-6 col-7">제목</div>
                <div class="col-lg-3 col-3">작성자</div>
                <div class="col-lg-2 d-none d-lg-block">작성일</div>
            </div>
            <c:choose>
				<c:when test="${list.size()==0}">
					<div class="row content text-center align-items-center">
						<div class="col">
							등록된 게시글이 없습니다.
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list}" var="dto">
						<div class="row content text-center align-items-center" style="cursor: pointer;" 
						onclick="location.href='/inquiryDetailview.iq?seqInquiry=${dto.seqInquiry}';">
                			<div class="col-lg-1 col-2">${dto.seqInquiry}</div>
                			<c:if test="${not empty dto.inquiryAnswer}">
               		 			<div class="col-lg-6 col-7"><strong>[답변완료]</strong> ${dto.inquiryTitle}</div>
               		 		</c:if>
               		 		<c:if test="${empty dto.inquiryAnswer}">
               		 			<div class="col-lg-6 col-7">${dto.inquiryTitle}</div>
               		 		</c:if >
               	 			<div class="col-lg-3 col-3">${dto.id}</div>
                			<div class="col-lg-2 d-none d-lg-block">${dto.inquiryDate}</div>    
           				</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>     
        </div>
        <!--페이징-->
 
        <div class="row paging">
            <div class="col-12">
                <br>
                <nav aria-label="Page navigation">
                    <ul class="pagination justify-content-center">
                    <c:if test="${map.makePrev eq true}">
                        <li class="page-item">
                            <a class="page-link page" href="/inquiry.iq?currentPage=${map.startNavi-1}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                   </c:if>
                   <c:forEach var="pageNumber" begin="${map.startNavi}" end="${map.endNavi}" step="1">
                   		<li class="page-item"><a class="page-link page" href="/inquiry.iq?currentPage=${pageNumber}">${pageNumber}</a></li>
                   </c:forEach>    
                   <c:if test="${map.makeNext eq true}">                   
                        <li class="page-item">
                            <a class="page-link page" href="/inquiry.iq?currentPage=${map.endNavi+1}" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        	</a>
                        </li>
                    </c:if>
                    </ul>
                </nav>
            </div>
            </div>
            <div class="row justify-content-center boxBtn">
            <c:if test="${not empty loginSession.id }">
            <button type="button" class="btnBox" id="btn-write">글쓰기</button>
            </c:if>
            </div>
        <!-- 여기부터 풋터 -->
        <div class="row justify-content-center footer">
            <div class="col-12">
                <ul class="ft-ul">
                    <li>BoriBob Inc. 사랑시 고백구 행복동</li>
                    <li>대표 : 보리밥형제들 사업자등록번호 : 780-86-01094</li>
                    <li>대표번호 : +82)-665-3430 팩스번호 : +82)-888-3430 홈페이지 : petvenience.store.com</li>
                    <li>CopyrightⓒBoriBob Inc. All Rights Reserved.</li>
                </ul>
            </div>
        </div>
</body>
<script>
	$("#btn-write").on("click",function(){
		location.href="/inquiryWrite.iq";
	})
	$('#main-logo').on('click', () => {
		location.href = "/home";
	})
</script>
</html>