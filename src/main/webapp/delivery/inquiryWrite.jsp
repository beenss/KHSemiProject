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
    <title>문의쓰기</title>
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
     
       
                 .inquiry>.row:first-child{
                     border-bottom: 1px solid black;
                 }
                 textarea{
                     resize: none;
                     margin-bottom: 30px;
                     background-color:#FFF !important;
                 }
                 .inquiryTxt{
                 font-size: 20px;
                 font-family: "GongGothicLight.ttf";
                     
                 }
                 .container{
                    font-family: "GongGothicLight.ttf";

                 }

                 #btn-save{
                    margin-bottom: 30px;
                width: 100px;
   
            font-family: "GongGothicLight.ttf";
           background-color: rgb(209, 130, 130);
            border: 1px solid white;
            height: 40px;
            border-radius: 40px;
            font-size: 18px;
            color: white;

                 }
                 #btn-cancel{
                    margin-bottom: 30px;
                width: 100px;
         
            font-family: "GongGothicLight.ttf";
            background-color: rgb(172, 209, 130);
            border: 1px solid white;
            height: 40px;
            border-radius: 40px;
            font-size: 18px;
            color: white;
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
                    
            	</nav>
            </div>
        </div>


          
        <!-- 여기에 바디 코드 짜주셈 -->
        <form action = "/inquiryWriteProc.iq" method="post" id="inquiry-write-form">
        	<div class="container">
	            <div class="row">
	                <div class="col-12 inquiryTxt">
	                    <h4>궁금한 점을 물어봐주세요</h4> 
	                </div>
	            </div>      
	            <div class="row pb-3">
	                <div class="col-2 col-form-label">제목</div>
	                <div class="col-10">
	                    <input type="text" class="form-control" id="inquiry-title" name="inquiryTitle">
	                </div>
	            </div>
	            <div class="row">
	                <div class="col-2 form-label">내용</div>
	                <div class="col-10">
	                    <textarea class="form-control" id="inquiry-content" name="inquiryContent" rows="20"></textarea>
	                </div>
	            </div>
        	</div>
	        <div class="buttonBox d-grid gap-2 d-flex justify-content-center">
	            <button type="button" id="btn-save">저장</button>
	            <button type="button" id="btn-cancel">취소</button>
	        </div>
        </form>
        <script>
	    	$('#main-logo').on('click', () => {
	    		location.href = "/home";
	    	})
        	$("#btn-save").on("click",function(){
        		if($("#inquiry-title").val()===""){
        			//제목 입력 안하면 제목 입력해달라 요청
        			alert("제목을 입력해주세요")
        			$("#inquiry-title").focus();
        			return;
        		}
        		if($("#inquiry-content").val()===""){
        			alert("내용을 입력해주세요");
        			$("#inquiry-content").focus();
        			return;
        		}
        		$("#inquiry-write-form").submit();
        	})
        	$("#btn-cancel").on("click",function(){
        		location.href="/inquiry.iq?currentPage=1"
        	})
        </script>
        <!-- 여기부터 풋터 -->
        <div class="row justify-content-center footer">
            <div class="col-lg-10 col-12">
                <ul class="ft-ul">
                    <li>BoriBob Inc. 사랑시 고백구 행복동</li>
                    <li>대표 : 보리밥형제들 사업자등록번호 : 780-86-01094</li>
                    <li>대표번호 : +82)-665-3430 팩스번호 : +82)-888-3430 홈페이지 : petvenience.store.com</li>
        </div>
    </div>
</body>
</html>