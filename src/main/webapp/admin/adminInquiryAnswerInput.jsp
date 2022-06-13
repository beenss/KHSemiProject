<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<title>답변 추가</title>
<style>
body {
	box-sizing: border-box;
}

nav {
	height: 80px;
}

.nav-item {
	padding-right: 50px;
}

.header {
	position: relative;
	padding: 60px;
}

.title {
	border-bottom: 1px solid black;
}

.title-body {
	background-color: lightgray
}

.content {
	border-bottom: 1px solid darkgray;
}

textarea {
	resize: none;
	margin-bottom: 30px;
	background-color: #FFF !important;
}

.buttonBox {
	margin-bottom: 30px;
}

.inquiry>.row:nth-child(2) {
	border-bottom: 1px solid lightgray;
}

.inquiry>.row:nth-child(3) {
	border-bottom: 1px solid lightgray;
}
</style>
</head>
<body>
<body>
	<div class="wrapper">
		<div class="row header">
			<div class="col">
				<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark justify-content-center">
					<div class="container">
						<a class="navbar-brand" href="#"></a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
							aria-controls="navbarNavDropdown" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarNavDropdown">
							<ul class="navbar-nav text-center">
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="/admin/index.jsp">Home</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> 회원 </a>
									<ul class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item" href="/member.admin">조회</a></li>
										<li><a class="dropdown-item" href="/blacklist.admin">블랙리스트</a></li>
									</ul></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> 상품 </a>
									<ul class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item" href="/productList.admin">전체 조회</a></li>
										<li><a class="dropdown-item" href="/productUpdate.admin">수정/삭제</a></li>
										<li><a class="dropdown-item" href="/productInsert.admin">추가</a></li>
									</ul></li>
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="/orderList.admin">주문 조회/상세보기</a></li>
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="/deliveryList.admin">배송 조회/수정</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> 문의 </a>
									<ul class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item"
											href="/inquiry.admin?currentPage=1">조회/삭제</a></li>
										<li><a class="dropdown-item"
											href="/inquiryAnswer.admin?currentPage=1">답변 추가</a></li>
									</ul></li>
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="/review.admin?currentPage=1">리뷰 조회/삭제</a></li>
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="/logout.admin">logout</a></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>
		<div class="container">
			<div class="row title py-3">
				<div class="col-12">
					<h4>문의게시판</h4>
				</div>
			</div>
			<div class="row py-2">
				<div class="col-2 col-form-label">제목</div>
				<div class="col-10">${dto.inquiryTitle}</div>
			</div>
			<div class="row py-2">
				<div class="col-2 col-form-label">작성자</div>
				<div class="col-5">${dto.id}</div>
				<div class="col-2 col-form-label">작성일</div>
				<div class="col-3">${dto.inquiryDate}</div>
			</div>
			<div class="row py-2">
				<div class="col-2 form-label">내용</div>
				<div class="col-10">
					<textarea readonly class="form-control" id="inquiry-content"
						rows="20">${dto.inquiryContent}</textarea>
				</div>
			</div>
		</div>
			<div class="container">
				<div class="row py-2">
				<div class="col-2 form-label">답변</div>
				<div class="col-10">
					<textarea class="form-control answer" id="inquiry-answer"
						rows="20"></textarea>
				</div>
			</div>
			<button type="button" class="btn btn-outline-secondary save" value="${dto.seqInquiry}">저장</button>
			<script>
				$(".save").on("click",function(e){
					let seqInquiry = $(e.target).val();
					console.log(seqInquiry);
					let inquiryAnswer = $(".answer").val();
					console.log(inquiryAnswer);
					if(inquiryAnswer===""){
						alert("답변을 입력해 주세요")
						 $('textarea').focus();
					}else{
					location.href="/inquiryAnswerProc.admin?seqInquiry="+seqInquiry+"&inquiryAnswer="+inquiryAnswer
					}
				})
			</script>
		</div>
	</div>
</body>
</html>