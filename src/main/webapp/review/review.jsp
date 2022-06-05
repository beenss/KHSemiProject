<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&family=Noto+Sans+KR:wght@400;500;700&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
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
	background-color: rgb(255, 216, 131);
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

.container {
	/* padding-left: 50px;
            padding-right: 50px; */
	text-align: center;
	/* border: 1px solid black; */
}

* {
	margin: 0;
	padding: 0;
}

a {
	text-decoration: none;
	color: inherit;
}

.board_list_wrap {
	padding: 50px;
	/* border: 1px solid olive; */
}

#review-index-wrap {
	border-bottom: 2px solid rgb(196, 202, 178);
	background-color: rgb(235, 255, 213);
	font-family: 'Courier New', Courier, monospace;
}

#review-index-wrap>div {
	font-family: 'Courier New', Courier, monospace;
}

#review-submit-btn {
	background-color: rgb(179, 240, 171);
	color: black;
	border: none;
	margin-bottom: 20px;
}
/* paging */
.paging {
	margin-top: 30px;
	text-align: center;
}

.paging a {
	display: inline-block;
	vertical-align: middle;
}

.paging a.bt {
	width: 30px;
	height: 30px;
	background-color: rgb(115, 158, 121);
	background-image: url(images/page_bt.png);
	background-repeat: no-repeat;
	border-radius: 100px;
	text-indent: -1000px;
	overflow: hidden;
}

.paging a.bt:hover {
	background-color: #999;
}

.paging a.first {
	background-position: 10px -40px;
}

.paging a.prev {
	margin-right: 5px;
	background-position: 10px 10px;
}

.paging a.next {
	margin-left: 5px;
	background-position: -40px 10px;
}

.paging a.last {
	background-position: -40px -40px;
}

.paging a.num {
	margin: 0 5px;
}

.paging a.num.on {
	color: green;
}

.paging a.num:hover {
	text-decoration: underline;
}

#review-blank {
	text-align: center;
}

#review_main {
	width: 200px;
}
</style>
</head>
<body>
</head>
<div class="wrapper">
	<div class="row justify-content-center header">
		<div class="col-lg-4 col-12">
			<img src="images/project_logo.PNG" class="d-block w-100"
				id="reivew_main">
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
	<div class="container">
		<div id="review-title">
			<img src="images/review_main.png" class="col-lg-10 d-block w-100"
				id="main-logo">
			<div class="board_list_wrap">
				<div class="board_list">
					<div class="row row-cols-5" id="review-index-wrap">
						<div class="col-lg-1">번호</div>
						<div class="col-lg-1">상품코드</div>
						<div class="col-lg-7">제목</div>
						<div class="col-lg-1">글쓴이</div>
						<div class="col-lg-2">작성일</div>
					</div>
					<div class="review-body">
						<div>
							<div class="col-lg-11" id="review-blank">등록된 게시글이 없습니다.</div>
						</div>
						<div class="row row-cols-5">
							<div class="col-lg-1">${dto.seqReview}</div>
							<div class="col-lg-1">${dto.productCode}</div>
							<div class="col-lg-7">
								<a href="">${dto.reviewTitle}</a>
							</div>
							<div class="col-lg-1">${dto.id}</div>
							<div class="col-lg-2">${dto.reviewDate}</div>
						</div>
					</div>
				</div>

				<nav></nav>
			</div>
			<div class="btnWrap">
				<button type="button" class="btn btn-secondary" id="btnwrite">작성하기</button>
			</div>

			<script>
			const btnwrite = document.getElementById("btnwrite");
		
			$("#btnwrite").on("click", function(){
				location.href = "/review/write.jsp";
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
				<div class="col-lg-2 col-12">
					<ul class="ft-images">
						<img src="images/facebook_icon.png"
							style="border-color: lightblue; color: rgb(233, 148, 122);">
						<img src="images/instagram_icon.png"
							style="border-color: lightblue;">
						<img src="images/youtube_icon.png"
							style="border-color: lightblue;">
					</ul>
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