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
      textare {
        resize: none;
      }
      .title {
        border-bottom: 1px solid black;
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
          <h3>주문 상세 페이지</h3>
        </div>
        <div class="row pt-3 pb-3">
          <div class="col-2">주문번호</div>
          <div class="col-4">
            <input type="text" readonly value="${orderDTO.orderId}" />
          </div>
          <div class="col-2">회원아이디</div>
          <div class="col-4">
            <input type="text" readonly value="${orderDTO.id}" />
          </div>
        </div>

        <div class="row pt-3 pb-3">
          <div class="col-2">회원이름</div>
          <div class="col-4">
            <input type="text" readonly value="${orderDTO.orderName}" />
          </div>
          <div class="col-2">회원연락처</div>
          <div class="col-4">
            <input type="text" readonly value="${orderDTO.orderPhone}" />
          </div>
        </div>
        
        <div class="row py-3">
          <div class="col-2">우편번호</div>
          <div class="col-10">
            <input type="text" readonly value="${orderDTO.orderPost}" />
          </div>
        </div>
        <div class="row py-3">
          <div class="col-2">도로명 주소</div>
          <div class="col-10">
            <textarea readonly style="width: 600px">
              ${orderDTO.orderRoadAddress}</textarea
            >
          </div>
        </div>
      
        <div class="row py-3">
          <div class="col-2">상세주소 주소</div>
          <div class="col-10">
            <textarea readonly style="width: 600px">
              ${orderDTO.orderDetailAddress}</textarea
            >
          </div>
        </div>

        <div class="row py-3">
          <div class="col-2">주문 메세지</div>
          <div class="col-10">
            <textarea readonly style="width: 600px">
              ${orderDTO.orderMsg}</textarea
            >
          </div>
        </div>


        <div class="row py-3">
          <div class="col-2">배송 메세지</div>
          <div class="col-10">
            <textarea readonly style="width: 600px">
              ${orderDTO.postMsg}</textarea
            >
          </div>
        </div>

        <div class="row pt-3 pb-3">
          <div class="col-2">상품코드</div>
          <div class="col-4">
            <input type="text" readonly value="${orderDTO.productCode}" />
          </div>
          <div class="col-2">구독시작일</div>
          <div class="col-4">
            <input type="text" readonly value="${orderDTO.subscribeStart}" />
          </div>
        </div>

        <div class="row pt-3 pb-3">
          <div class="col-2">구독기간</div>
          <div class="col-4">
            <input type="text" readonly value="${orderDTO.subscribeTerm}" />
          </div>
          <div class="col-2">상품가격</div>
          <div class="col-4">
            <input type="text" readonly value="${orderDTO.price}" />
          </div>
        </div>


        <div class="row pt-3 pb-3">
          <div class="col-2">결제 성공 여부</div>
          <div class="col-4">
            <input type="text" readonly value="${orderDTO.paySuccess}" />
          </div>
          <div class="col-2">Pay Id</div>
          <div class="col-4">
            <input type="text" readonly value="${orderDTO.payId}" />
          </div>
        </div>

        <div class="row pt-3 pb-3">
          <div class="col-2">Pay Trade Id</div>
          <div class="col-4">
            <input type="text" readonly value="${orderDTO.payTradeId}" />
          </div>
          <div class="col-2">결제 금액</div>
          <div class="col-4">
            <input type="text" readonly value="${orderDTO.payAmount}" />
          </div>
        </div>

        <div class="row pt-3 pb-3">
          <div class="col-2">pay approval</div>
          <div class="col-4">
            <input type="text" readonly value="${orderDTO.payApproval}" />
          </div>
          <div class="col-2">배송 상태</div>
          <div class="col-4">
            <input type="text" readonly value="${orderDTO.deliveryStatus}" />
          </div>
        </div>

        <div class="row pt-3 pb-3">
          <div class="col-2">배송 예정일</div>
          <div class="col-4">
            <input type="text" readonly value="${orderDTO.expectedArrival}" />
          </div>
          <div class="col-2">배송 회차</div>
          <div class="col-4">
            <input type="text" readonly value="${orderDTO.deliveryCount}" />
          </div>
        </div>


      </div>
      </div>
    </div>
  </body>
</html>
