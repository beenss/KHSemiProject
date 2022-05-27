<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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
    <title>주문서창</title>
    <style>
        /*메인 로고 스타일*/
        #main-logo {
            margin-left: 123px;
            width: 350px;
            height: 200px;
        }

        body {
            background-color: rgb(255, 252, 221);
        }

        /*메뉴 스타일*/
        *.nav-link {
            color: rgb(44, 44, 44);
            font-size: large;
        }

        *.nav-link:hover {
            background-color: blanchedalmond;
            background-size: 3px;
        }

        /*메뉴 위치*/
        #nav-item {
            margin-top: 150px;
            margin-left: 325px;
        }

        .container {
            width: 1200px;
            height: 700px;
        }

        .content {
            position: relative;
            width: 600px;
            height: 600px;
            left: 30px;
        }

        .customeritem {
            border: 1px solid lightblue;
            width: 400px;
            height: 400px;
        }

        .content1 {
            position: relative;
            width: 600px;
            height: 600px;
            left: 630px;
            bottom: 600px;
        }




        /*대략적인 구조를 직관적으로 확인하시라고 임의로 설정해 둔 테두리입니다!*/
        img {
            border: 1px solid rgb(218, 218, 218);
        }

        /*footer*/
        .footer {
            height: 150px;
            overflow: visible;
            background-color: rgb(255, 216, 131);
            z-index: 1;
            margin-top: 40px;
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

        .ft-ul li {
            height: 25px;
        }

        .facebookicon {
            position: relative;
            bottom: 40px;
            margin-left: 1000px;
            z-index: 2;
        }

        .instagramicon {
            position: relative;
            bottom: 90px;
            margin-left: 1100px;
            z-index: 2;
        }

        .youtubeicon {
            position: relative;
            bottom: 140px;
            margin-left: 1200px;
            z-index: 2;
        }

        .ft-ul2 {
            position: relative;
            bottom: 250px;
            margin-left: 1100px;
            z-index: 2;
            font-size: 10px;
        }

        .ft-ul2 li {
            height: 17px;
        }
    </style>
</head>

<body>
    <header>
        <div class="row justify-content">
            <div class="col-4">
                <img src="images/project_logo.PNG" class="d-block w-100" id="main-logo">
            </div>
            <div class="col" id="nav-item">
                <nav class="nav">
                    <a class="nav-link" href="#">제품 보기</a>
                    <a class="nav-link" href="#">리뷰</a>
                    <a class="nav-link" href="#">고객센터</a>
                    <a class="nav-link" href="#">로그인</a>
                    <a class="nav-link" href="#">회원가입</a>
                    <a class="nav-link" style="color: rgb(255, 94, 0);" href="#">구독하기</a>
                </nav>
            </div>
        </div>
        </div>
    </header>

    <!--구분선-->
    <hr class="divider" style="width: 1200px; margin-left: 123px;">
    <!--주문서 영역-->
    <div class="container">
        <div style="margin-left: 30px;">
            <h2>주문서</h2>
        </div>
        <div class="content" style="border: 1px solid lightgrey; margin-left:-38px;">
            <div>성명</div>
            <input type="text" placeholder="이름을 입력하세요." style="width: 400px;">
            <div>전화번호</div>
            <div>
                <button type="button" class="btn btn-secondary" data-bs-toggle="dropdown" aria-expanded="false"
                    style="width: 120px">010</button>
                <div class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">017</a></li>
                    <li><a class="dropdown-item" href="#">011</a></li>
                    <li><a class="dropdown-item" href="#">018</a></li>
                </div>
                -
                <input type="text" style="width: 120px; height: 35px;">
                -
                <input type="text" style="width: 120px; height: 35px;">
            </div>
            <div>주문한 구독 상품</div>
            <div class="customeritem">
                <!--고객이 주문한 상품 사진 보여주기-->
                <div style="text-align: center;"><strong>보리밥's Special food type-A</strong></div>
                <div>
                    <img src="images/project_product.PNG" style="width: 300px; margin-left: 50px;">
                </div>
            </div>
        </div>
        <div class="content1" style="border: 1px solid lightgrey; margin-left: -35px;">
            <div>받는분 주소</div>
            <input type="text" placeholder="우편번호" style="width: 200px;">
            <button type="button" class="btn btn-secondary" style="height: 35px; width: 200px; margin-bottom: 5px;">우편번호
                찾기</button>
            <input type="text" placeholder="도로명주소" style="width: 400px;">
            <input type="text" placeholder="상세주소" style="width: 200px; margin-top: 5px;">
            <input type="text" placeholder="읍/면/동" style="width: 200px; margin-top: 5px;"><br>
            <br>
            <div class="customeritem">
                <br>
                <div style="text-align: center;"><strong>배송을 시작할까요?</strong></div>
                <div>
                    <img src="images/truck_icon.png" style="width: 200px; margin-left: 100px; margin-top: 40px;">
                </div><br>
                <button type="button" class="btn btn-secondary" style="margin-left: 110px;">취소하기</button>
                <button type="button" class="btn btn-success">주문하기</button>
            </div>
        </div>
    </div>
    <!--구분선-->
    <hr class="divider">
    <div class="row justify-content-around">
        <!--풋터 영역-->
        <div class="footer">
            <ul class="ft-ul">
                <li>BoriBob Inc. 사랑시 고백구 행복동</li>
                <li>대표 : 보리밥형제들 사업자등록번호 : 780-86-01094</li>
                <li>대표번호 : +82)-665-3430 팩스번호 : +82)-888-3430 홈페이지 : petvenience.store.com</li>
                <li>CopyrightⓒBoriBob Inc. All Rights Reserved.</li>
                <div class="facebookicon">
                    <img src="images/facebook_icon.png" style="border-color: lightblue;">
                </div>
                <div class="instagramicon">
                    <img src="images/instagram_icon.png" style="border-color: lightblue;">
                </div>
                <div class="youtubeicon">
                    <img src="images/youtube_icon.png" style="border-color: lightblue;">
                </div>
                <div class="ft-ul2">
                    <li><strong>고객센터</strong></li>
                    <li style="height: 8px;"></li>
                    <li>오전 10시부터 오후 6시까지</li>
                    <li>토요일, 일요일, 공휴일 휴무</li>
                </div>
            </ul>
        </div>
</body>
</html>