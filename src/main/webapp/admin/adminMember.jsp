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

button {
	margin-top: 20px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row header">
			<div class="col">
				<nav
					class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark justify-content-center">
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
									aria-current="page" href="#">Home</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> 회원 </a>
									<ul class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item" href="/member.admin">조회</a></li>
										<li><a class="dropdown-item" href="#">블랙리스트</a></li>
									</ul></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> 통계 </a>
									<ul class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item" href="#">상품별매출/전체매출</a></li>
										<li><a class="dropdown-item" href="#">재고</a></li>
									</ul></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> 상품 </a>
									<ul class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item" href="#">전체 조회</a></li>
										<li><a class="dropdown-item" href="#">수정/삭제</a></li>
										<li><a class="dropdown-item" href="#">추가</a></li>
									</ul></li>
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="#">주문 조회/상세보기</a></li>
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="#">배송 조회/수정</a></li>
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
									aria-current="page" href="#">리뷰 조회/삭제</a></li>
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="#">login</a></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>
		<div class="container">
				<div class="row">
					<div class="col-md-5 mx-auto">
						<div class="input-group">
							<input class="form-control border-end-0 border rounded-pill"
								type="search" placeholder="search ID" id="example-search-input">
							<span class="input-group-append">
								<button class="btn btn-outline-secondary bg-white border-bottom-0 border rounded-pill ms-n5 mt-0 searchBtn"type="button">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div>
					</div>
				<div class="row title py-3 px-0">
					<h3>회원 목록</h3>
				</div>
				<div class="row title-body py-2  mt-4 text-center">
					<div class="col-2">
						<h6>아이디</h6>
					</div>
					<div class="col-1">
						<h6>이름</h6>
					</div>
					<div class="col-2">
						<h6>연락처</h6>
					</div>
					<div class="col-2">
						<h6>우편번호</h6>
					</div>
					<div class="col-3">
						<h6>주소</h6>
					</div>
					<div class="col-2">
						<h6>상세주소</h6>
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
									<div class="col-2 p-0">${dto.id}</div>
									<div class="col-1 p-0">${dto.name}</div>
									<div class="col-2 p-0">${dto.phone}</div>
									<div class="col-2 p-0">${dto.post}</div>
									<div class="col-3 p-0">${dto.roadAddress}</div>
									<div class="col-2 p-0">${dto.detailAddress}</div>
								</div>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			<div class='buttonBox1 d-grid gap-3 d-flex justify-content-center'>
				<button type="button" class="btn btn-outline-secondary" id="all-btn">전체회원</button>
				<button type="button" class="btn btn-outline-secondary" id="sub-btn">구독회원</button>
				<button type="button" class="btn btn-outline-secondary"
					id="notsub-btn">비구독회원</button>
			</div>
			<script>
			$("#all-btn").on("click",function(){
				$.ajax({url:"/allMember.admin"
       					, type:"get"
       					, dataType:"json"
           				,success:function(rs){
           				console.log(rs);
           				makeMember(rs);
           				}, error: function(e){
        					console.log(e);
        				}
           			})
				})
			$("#sub-btn").on("click",function(){
				$.ajax({url:"/subMember.admin"
	       				, type:"get"
	       				, dataType:"json"
	           			,success:function(rs){
	           				console.log(rs);
	           				makeMember(rs);
	           			}, error: function(e){
	        					console.log(e);
	        			}
	           		})
			})
			$("#notsub-btn").on("click",function(){
				$.ajax({url:"/notSubMember.admin"
	       				, type:"get"
	       				, dataType:"json"
	           			,success:function(rs){
	           				console.log(rs);
	           				makeMember(rs);
	           			}, error: function(e){
	        					console.log(e);
	        			}
	           		})
			})
			$(".input-group").on("click",".searchBtn",function(e){
				let id = $(".searchBtn").parent().prevAll().val();
				console.log(id);
				$.ajax({url:"/findMember.admin"
	       				, type:"get"
	       				, dataType:"json"
	       				,data:{id:id}
	           			,success:function(rs){
	           				console.log(rs);
	           				makeMember(rs);
	           			}, error: function(e){
	        					console.log(e);
	        			}
	           		})
			})
			function makeMember(rs){
				let list = rs; // 함수의 매개변수로 받아온 json 형식의 문자열 실제 json 타입으로 변환 
				console.log(list);
			
				$(".listmem").empty();
			
				if(list.length==0){
					let row = $("<div>").addClass("row content text-center align-items-center");
					let col =$("<div>").addClass("col").html("회원이 존재하지 않습니다.")
					row.append(col);
					$(".listmem").append(row);
				}else{
					for(let mem of list){
						let row1 = $("<div>").addClass("row content py-2 text-center");
						let col1 = $("<div>").addClass("col-2").html(mem.id);
						let col2 = $("<div>").addClass("col-1").html(mem.name);
						let col3 = $("<div>").addClass("col-2").html(mem.phone);
						let col4 = $("<div>").addClass("col-2").html(mem.post);
						let col5 = $("<div>").addClass("col-3").html(mem.roadAddress);
						let col6 = $("<div>").addClass("col-2").html(mem.detailAddress);
						
						row1.append(col1,col2,col3,col4,col5,col6);
						$(".listmem").append(row1);
					}	
				}
			}
		</script>
		</div>
	</div>
</body>
</html>