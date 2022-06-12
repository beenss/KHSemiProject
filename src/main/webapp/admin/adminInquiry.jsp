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
<title>Insert title here</title>
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

input[id="delete"] {
	width: 15px;
	height: 15px;
	position: relative;
	left: 6px;
	cursor: pointer;
}
</style>
</head>
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
									aria-current="page" href="/modifyOrder.admin">배송 조회/수정</a></li>
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
				<h3>문의 글</h3>
			</div>
			<div class="row title-body py-2 mt-4 text-center">
				<div class="col-1">
					<h5>번호</h5>
				</div>
				<div class="col-4">
					<h5>제목</h5>
				</div>
				<div class="col-3">
					<h5>작성자</h5>
				</div>
				<div class="col-2">
					<h5>작성일</h5>
				</div>
				<div class="col-2 delete">
					<h5>조회/삭제</h5>
				</div>
			</div>
			<c:choose>
				<c:when test="${list.size()==0}">
					<div class="row content text-center align-items-center">
						<div class="col">등록된 게시글이 없습니다.</div>
					</div>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list}" var="dto">
						<div class="row content py-2 text-center" style="cursor: pointer;">
							<!--클릭시 상세보기 페이지로 이어짐-->
							<div class="col-1">${dto.seqInquiry}</div>
							<c:if test="${not empty dto.inquiryAnswer}">
								<div class="col-4">
									<strong>[답변완료]</strong> ${dto.inquiryTitle}
								</div>
							</c:if>
							<c:if test="${empty dto.inquiryAnswer}">
								<div class="col-4">${dto.inquiryTitle}</div>
							</c:if>
							<div class="col-3">${dto.id}</div>
							<div class="col-2">${dto.inquiryDate}</div>
							<div class="col-1">
								<button type="button" class="btn btn-outline-secondary detail" value="${dto.seqInquiry}">조회</button>
							</div>
							<div class="col-1">
								<input type="text" name="page" value="${currentPage}" style="display:none">
								<button type="button" class="btn btn-outline-secondary delete" value="${dto.seqInquiry}">삭제</button>
							</div>
						</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>
			<script>
				$(".container").on("click",".delete",function(e){
					let seqInquiry = $(e.target).val();
					let page = $(e.target).parent().children("input").val();
					console.log(seqInquiry);
					console.log(page);
					location.href="/inquiryDelete.admin?seqInquiry="+seqInquiry+"&page="+page
				})
				$(".container").on("click",".detail",function(e){
					let seqInquiry = $(e.target).val();
					console.log(seqInquiry);
					location.href="/inquiryDetail.admin?seqInquiry="+seqInquiry
				})
			</script>
		</div>
		<div class="row paging mt-3">
            <div class="col-12">
                <nav aria-label="Page navigation">
                    <ul class="pagination justify-content-center">
                    <c:if test="${map.makePrev eq true}">
                        <li class="page-item">
                            <a class="page-link" href="/inquiry.admin?currentPage=${map.startNavi-1}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                   </c:if>
                   <c:forEach var="pageNumber" begin="${map.startNavi}" end="${map.endNavi}" step="1">
                   		<li class="page-item"><a class="page-link" href="/inquiry.admin?currentPage=${pageNumber}">${pageNumber}</a></li>
                   </c:forEach>    
                   <c:if test="${map.makeNext eq true}">                   
                        <li class="page-item">
                            <a class="page-link" href="/inquiry.admin?currentPage=${map.endNavi+1}" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        	</a>
                        </li>
                    </c:if>
                    </ul>
                </nav>
            </div>
        </div>
	</div>
</body>
</html>