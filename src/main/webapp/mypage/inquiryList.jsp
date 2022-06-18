
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
    <title>문의게시판</title>
    <style>
        body {
            box-sizing: border-box;
            font-family: "GongGothicMedium.ttf";
        }

        .header {
            padding: 20px;
            position: relative;
        }

        .footer > * {
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
        .pagination > li > a{
        background-color: white;
        color: #7e60b0;
        }
        .container>.row{
            border-bottom: 1px solid black;
        }
        .container>.row:first-child{
            height: 60px;
        }
        .content{
            height: 40px;
        }
        .paging{
            margin-top: 20px;
        }
        .buttonBox{
            margin-right: 300px;
            margin-top: 20px;
        }
        .container>.row:first-child{
            border-bottom: 1px solid black;
        }
        textarea{
            resize: none;
            margin-bottom: 30px;
            background-color:#FFF !important;
        }
        .inquiryTitle{
          	background-color:#FFF !important;
        }
        .listAll>.row:nth-child(2){
            border-bottom: 1px solid lightgray;
        }
        .listAll>.row:nth-child(3){
            border-bottom: 1px solid lightgray;
        }
        .buttonBox2>button{
        	display:none;
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
.footer{
margin-top : 50px;
} 
    </style>
</head>
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
        <!-- 여기까지 헤더 -->
        <!-- 여기부터 바디 -->
        <div class= "container listAll">
            <div class="row text-center align-items-center">
                <div class="col-lg-1 col-2">번호</div>
                <div class="col-lg-5 col-10">제목</div>
                <div class="col-lg-3 d-none d-lg-block">작성자</div>
                <div class="col-lg-3 d-none d-lg-block">작성일</div>    
            </div>
            <c:choose>
				<c:when test="${list.size()==0}">
					<div class="row content text-center align-items-center">
						<div class="col">
							등록된 문의글이 없습니다.
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list}" var="dto">
						<div class="row content text-center align-items-center" style="cursor: pointer;">
                			<div class="col-lg-1 col-2">${dto.seqInquiry}</div>
               		 		<div class="col-lg-5 col-10">${dto.inquiryTitle}</div>
               	 			<div class="col-3 d-none d-lg-block">${dto.id}</div>
                			<div class="col-3 d-none d-lg-block">${dto.inquiryDate}</div>    
           				</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>     
        </div>
        <script>
	    	$('#main-logo').on('click', () => {
	    		location.href = "/home";
	    	})
        	$('#main-logo').on('click', () => {
        		location.href = "/home";
        	})
       		$(".content").on("click",function(e){
       			let seqInquiry = $(e.target).parent(".row").children().eq(0).html();
       			console.log(seqInquiry);
       			$.ajax({url:"/inquiryListDetail.iq?seqInquiry="+seqInquiry
       				, type:"get"
       				, dataType:"json"
           			,success:function(rs){
           				console.log(rs);
           				makeInquiry(rs);
           			}, error: function(e){
        					console.log(e);
        			}
           		})
       				
       		});
       		$(".container").on("click",".modifyInquiry",function(e){//수정버튼
       			$(e.target).parent().children().css("display","none");
       			$(e.target).parent().next(".buttonBox2").children().css("display","block");
	       		$(".inquiryTitle").attr("readonly",false);
	       		$(".inquiryContent").attr("readonly",false);
	       		$(".inquiryTitle").focus();
       		})
       		$(".container").on("click",".backBtn",function(){//뒤로가기버튼
    			location.href="/inquiryList.iq"
    		})
    		$(".container").on("click",".deleteInquiry",function(e){//삭제버튼
    			let seqInquiry = $(e.target).val();
    			console.log(seqInquiry);
    			location.href="/inquiryDelete.iq?seqInquiry="+seqInquiry;
    		})
    		$(".container").on("click",".cancelInquiry",function(e){//취소버튼
    			location.href="/inquiryList.iq"
    		})
       		$(".container").on("click",".submitInquiry",function(e){//수정완료버튼
       			let seqInquiry = $(e.target).val();
       			console.log(seqInquiry);
       			let inquiryTitle = $(e.target).parent(".buttonBox2").parent(".container").find(".inquiryTitle").val();
       			console.log(inquiryTitle);
       			let inquiryContent = $(e.target).parent(".buttonBox2").parent(".container").find("textarea").val();
       			console.log(inquiryContent);
       			
       			$.ajax({
    				url : "/inquiryUpdate.iq"
    				,type: "post"
    				, dataType:"json"
    				,data:{seqInquiry:seqInquiry,inquiryTitle:inquiryTitle,inquiryContent:inquiryContent}
    				,success:function(rs){
    					console.log(rs)
    					if(rs ==="fail"){
    						alert("수정에 실패했습니다.")
    					}else{
    						console.log(rs);
               				makeInquiry(rs);
    					}
    				}, error:function(e){
    					console.log(e)
    				}
    			})
    		})
    		function makeInquiry(rs){
       			$(".container").empty();
   				let container = $("<div class='container'>");
   				let row1 = $("<div class='row py-2'>")
   				let col1 = $("<div class='col-2 col-form-label'>").html("제목");
   				let col2 = $("<div class='col-10'>")
   				let text = $("<input type='text' readonly='readonly'>").addClass("form-control inquiryTitle").val(rs.inquiryTitle);
   				col2.append(text);
   				row1.append(col1,col2);
   					
   				let row2 = $("<div class='row py-2'>")
   				let col3 = $("<div class='col-lg-2 d-none d-lg-block col-form-label'>").html("작성자");
   				let col4 = $("<div class='col-lg-5 col-7'>").html(rs.id);
   				let col5 = $("<div class='col-lg-2 d-none d-lg-block col-form-label'>").html("작성일");
   				let col6 = $("<div class='col-lg-3 col-5'>").html(rs.inquiryDate);
   				row2.append(col3,col4,col5,col6);
   					
   				let row3 = $("<div class='row py-2'>");
   				let col7 = $("<div class='col-2 form-label'>").html("내용");
   				let col8 = $("<div class='col-10'>");
   				let textarea = $("<textarea readonly class='inquiryContent form-control' rows='20'>").val(rs.inquiryContent);
   				col8.append(textarea);
   				row3.append(col7,col8);
   					
   				let buttonBox1 = $("<div class='buttonBox1 d-grid gap-3 d-flex justify-content-center'>")
   				let button1 = $("<button>").addClass("btn btn-outline-secondary modifyInquiry").html("수정").val(rs.seqInquiry);
   				let button2 = $("<button>").addClass("btn btn-outline-secondary deleteInquiry").html("삭제").val(rs.seqInquiry);
   				let button3 = $("<button>").addClass("btn btn-outline-secondary backBtn").html("뒤로가기")
   				let buttonBox2 = $("<div class='buttonBox2 d-grid gap-2 d-flex justify-content-center'>")
   				let button4 = $("<button>").addClass("btn btn-outline-secondary submitInquiry").html("완료").val(rs.seqInquiry);
   				let button5 = $("<button>").addClass("btn btn-outline-secondary cancelInquiry").html("취소").val(rs.seqInquiry);
   				buttonBox1.append(button1,button2,button3);
   				buttonBox2.append(button4,button5);
   				container.append(row1,row2,row3,buttonBox1,buttonBox2);
   				$(".container").append(container);
       		}
       		    		
        </script>
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
</body>
</html>