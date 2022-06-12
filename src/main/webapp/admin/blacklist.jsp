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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
	background-color: lightgray;
	
}

.content {
	border-bottom: 1px solid darkgray;
}

#add-btn {
	margin-top: 20px;
}
</style>
</head>
<body>
	<div class="container">
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
				<div class="row title py-3 px-0">
					<h3>블랙리스트 회원</h3>
				</div>
				<div class="row title-body py-2  mt-4 text-center">
					<div class="col-3">
						<h6>아이디</h6>
					</div>
					<div class="col-2">
						<h6>날짜</h6>
					</div>
					<div class="col-6">
						<h6>이유</h6>
					</div>
					<div class="col-1">
						<h6>삭제</h6>
					</div>
				</div>
				<div class="listmem">
					<c:choose>
						<c:when test="${list.size()==0}">
							<div class="row content text-center align-items-center">
								<div class="col">등록된 회원이 없습니다.</div>
							</div>
						</c:when>
						<c:otherwise>
							<c:forEach items="${list}" var="dto">
								<div class="row content py-2 text-center">
									<div class="col-3">${dto.id}</div>
									<div class="col-2">${dto.blacklistDate}</div>
									<div class="col-6">${dto.blacklistReason}</div>
									<div class="col-1"><button type="button" class="btn btn-outline-secondary delete" value="${dto.id}">삭제</button></div>
								</div>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<div class='buttonBox1 d-grid gap-1 d-flex justify-content-center'>
				<button type="button" class="btn btn-outline-secondary" id="add-btn">추가</button>
			</div>
			<script>
			$("#add-btn").on("click",function(){
				popup();
			});
			function popup(){
            let url = "/admin/blacklistAdd.jsp";
            let name = "addblacklist";
            let option = "width = 800, height = 450, top = 300, left = 500, location = no"
            window.open(url, name, option);
            return;
			}
			
			$(".delete").on("click",function(e){
				let id = $(e.target).val();
				console.log(id);
				location.href="/blacklistDelete.admin?id="+id
			})
			
		</script>
	</div>
</body>
</html>