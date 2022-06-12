<%@ page language="java"
contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
    <title>Document</title>
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
          <h3>주문 상태</h3>
        </div>
        <div class="row title-body py-2 mt-4 text-center">
          <div class="col-3">
            <h5>주문번호</h5>
          </div>
          <div class="col-3">
            <h5>구매자id</h5>
          </div>
          <div class="col-3">
            <h5>상품명</h5>
          </div>
          <div class="col-3">
            <h5>상세보기</h5>
          </div>
        </div>
        
        <c:forEach items="${orderList}" var="orderList">
          
          <form id="form" action="/orderDetail.admin" method="post">
            <div
              class="row content py-2 text-center"
              style="cursor: pointer"> 
                
              <!--클릭시 상세보기 페이지로 이어짐-->
              <input type="hidden" name="orderId" value="${orderList.orderId}">
              <div class="col-3">${orderList.orderId}</div>
              <div class="col-3">${orderList.id}</div>
              <div class="col-3">${orderList.productCode}</div>
              <div class="col-3">   
                 <button
                id="goToDetailBtn"
                type="submit"
                class="btn btn-primary"
              >
                바로가기
              </button>
            </div>
            
            </div>
          </form>
        </c:forEach>
      
      </div>
    </div>
  </body>
</html>
