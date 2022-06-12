<%@ page language="java"
contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
    <title>레이아웃</title>
    <style>
   @font-face {
            src: url("fonts/MinSans-Regular.otf");
            font-family: "MinSans-Regular.otf";
        }

        @font-face {
            src: url("fonts/MinSans-bold.otf");
            font-family: "MinSans-bold.otf";
        }

        @font-face {
            font-family: "Theafhh_.TTF";
            src: url("fonts/Theafhh_.TTF");
        }

        @font-face {
            src: url("fonts/GongGothicLight.ttf");
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

        #orderimg{

            width: 450px;
            height: 300px;
            margin: 0 auto;
        }

        .orderindex{
            padding: 20px;
            margin-top: 30px;
            font-family: "GongGothicLight.ttf";
            color: rgb(80, 80, 80);

        }

        #btn-mypage{
            width: 200px;
            margin: 0 auto;
            background-color: rgb(255, 156, 131);
            border: 1px solid white;

            height: 40px;
            border-radius: 40px;
            font-size: 18px;
            color: white;
            font-family: "GongGothicLight.ttf";

        }

        #goToDetailBtn{
            margin-left: -15px;
            border: 1px solid rgb(255, 255, 255);
            background-color: rgb(255, 255, 255);
            height: 40px;
            border-radius: 10px;
            font-size: 17px;
            color: rgb(130, 189, 116);
            font-family: "GongGothicLight.ttf";

        }
        
    </style>
  </head>
</head>
<div class="row justify-content-around header" style="text-align: center;">
    <div class="col-lg-2" style="text-align: center;">
        <img src="/images/project_logo.PNG" class="d-block w-100" id="main-logo">
    </div>
    <div class="col-lg-8 col-12 topmenu">
        <nav class="navbar navbar-expand-lg navbar-light" style="float: right;">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation" style="border: none;">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" style="color: rgb(0, 0, 0);" href="#">제품 보기</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" style="color: rgb(0, 0, 0);" href="#">고객센터</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" style="color: rgb(0, 0, 0);" href="#">회원 가입</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" style="color: rgb(0, 0, 0);" href="#">리뷰</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" style="color: rgb(0, 0, 0);" href="#">로그인</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" style="color: rgb(117, 160, 36); font-weight: bold;"
                                href="#">구독하기</a>
                        </li>
                    </ul>
                </div>
            </div>
    </div>
    </nav>
</div>
</div>
           
      <!-- 여기까지 헤더 -->
      <div class="container class-body">
        <div class="row content text-center align-items-center">
            <img src="/images/order_img.png" class="d-block" id="orderimg">
            </div>
        <form action="/petInput.pet" method="post" id="pet-input-form">
                
                <div class="col-12">
          <div class="row orderindex">
            <table id="listTable">
              <c:forEach items="${orderList}" var="orderList">
                <thead>
                  <tr>
                    <th>주문번호</th>
                    <th>주문아이디</th>
                    <th>주문자명</th>
                    <th>구독시작일</th>
                    <th>상품명</th>
                    <th>상세내역</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <form action="/detail.order" method="post">
                      <input type="hidden" name="orderId" value="${orderList.orderId}">
                      <td>${orderList.orderId}</td>
                      <td>${orderList.id}</td>
                      <td>${orderList.orderName}</td>
                      <td>${orderList.subscribeStart}</td>
                      <td>${orderList.productCode}</td>
                      <td>
                         
                        <button
                          id="goToDetailBtn"
                          type="submit"
                        >
                          바로가기
                        </button>
                      </td>
                    </form>
                  </tr>
                </tbody>
              </c:forEach>
            </table>
          </div>
          <div class="row content text-center align-items-center">
          <button type="button" id="btn-mypage" href="/mypage.my">
            마이페이지로이동
          </button>
          </div>
        </div>
        <!-- 여기부터 풋터 -->
        <div class="row justify-content-center footer">
          <div class="col-lg-10 col-12">
            <ul class="ft-ul">
              <li>BoriBob Inc. 사랑시 고백구 행복동</li>
              <li>대표 : 보리밥형제들 사업자등록번호 : 780-86-01094</li>
              <li>
                대표번호 : +82)-665-3430 팩스번호 : +82)-888-3430 홈페이지 :
                petvenience.store.com
              </li>
              <li>CopyrightⓒBoriBob Inc. All Rights Reserved.</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>

