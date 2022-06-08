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
	border-top: 2px solid #000;
}

.board_view .title {
	padding: 20px 15px;
	border-bottom: 1px dashed #ddd;
	font-size: 2rem;
}

.board_view .info {
	padding: 15px;
	border-bottom: 1px solid #999;
	font-size: 0;
}

.board_view .info dl {
	position: relative;
	display: inline-block;
	padding: 0 20px;
}

.board_view .info dl:first-child {
	padding-left: 0;
}

.board_view .info dl::before {
	content: "";
	position: absolute;
	top: 1px;
	left: 0;
	display: block;
	width: 1px;
	height: 13px;
	background: #ddd;
}

.board_view .info dl:first-child::before {
	display: none;
}

.board_view .info dl dd {
	display: inline-block;
	font-size: 1.4rem;
}

.board_view .info dl dt {
	
}

.board_view .info dl dd {
	margin-left: 10px;
	color: #777;
}

.board_view .cont {
	padding: 15px;
	border-bottom: 1px solid #000;
	line-height: 160%;
	font-size: 1.4rem;
}

.board_view .info dl {
	width: 50%;
	padding: 0;
}

.board_view .info dl:nth-child(-n+2) {
	margin-bottom: 5px;
}

.board_view .info dl::before {
	display: none;
}

.board_view .info dl dt, .board_view .info dl dd {
	font-size: 1.2rem;
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
		<div class="board_title">
			<img src="images/review_main.png" class="col-lg-10 d-block w-100"
				id="main-logo"> <strong>리뷰</strong>
		</div>
		<div class="board_view_wrap">
			<div class="board_view">
				<div class="title">{dto.reviewTitle}</div>
				<div class="info">
					<dl>
						<dt>${dto.seqReview}</dt>
					</dl>
					<dl>
						<dt>글쓴이</dt>
						<dd>${dto.id}</dd>
					</dl>
					<dl>
						<dt>작성일</dt>
						<dd>${dto.reviewDate}</dd>
					</dl>
				</div>
				<div class="cont">
					<p>$(dto.productImg)</p>
					<p>${dto.reviewContent}</p>
				</div>
			</div>
			<div class="bt_wrap">
				<c:if test="${loginSession.id eq dto.id}">
                <div class="col-2">
                    <button type="button" class="btn btn-warning" id="btnupdate">수정</button>
                </div>
                <div class="col-2">
                    <button type="button" class="btn btn-danger" id="btndelete">삭제</button>
                </div>
                <script>
                    $("#btnupdate").on("click", function() { // 수정 페이지 요청
                        location.href = "/modify.bo?seq_board=${dto.seq_board}";
                    });
                    $("#btndelete").on("click",function() { // 삭제 요청
                        let answer = confirm("정말 삭제하시겠습니까?");
                        console.log(answer);
                        if (answer) {
                            location.href = "/deleteProc.bo?seqReview=${dto.seqReview}";
                        }
                    })
                </script>
            </c:if>
			</div>
		</div>
	</div>
</div>
</div>
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
			<img src="images/facebook_icon.png" style="border-color: lightblue;">
			<img src="images/instagram_icon.png" style="border-color: lightblue;">
			<img src="images/youtube_icon.png" style="border-color: lightblue;">
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

</body>

</html>