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
    <title>제품보기_초안</title>
    <link rel="stylesheet" href="../css/productList.css">
</head>
<body>
    <header>
        <div class="row justify-content">
            <div class="col-4">
                <img src="../images/project_logo.PNG" class="d-block w-100" id="main-logo">
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
    <!--메인영역-->
    <!--헤더와 메인의 구분선-->
    <div class="container">
        <hr class="divider" style="width: 1200px; margin-left: 50px;">
        <!--각 버튼을 누르면 해당되는 카테고리의 상품으로 분류됩니다-->
        <div class="col" id="btn-category">
            <button type="button" class="btn btn-warning">강아지</button>
            <button type="button" class="btn btn-warning">고양이</button>
            </div>
        <!--상품 이미지 영역입니다 해당 이미지를 클릭 시 상품 상세정보로 이동-->
        <div class="row justify-content-around">
            <div class="col" id="product-imgs" style="margin-left: 100px;">
                <br>
                <a href="#"><img src="../images/project_product.PNG" class="d-block w-100"></a>
            </div>
            <div class="col order-5">
                <br>
                <a href="#"><img src="../images/project_product.PNG" class="d-block w-100"></a>
            </div>
            <div class="col order-1">
                <br>
                <a href="#"><img src="../images/project_product.PNG" class="d-block w-100"></a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row justify-content-around">
            <div class="col" id="product-imgs" style="margin-left: 100px;">
                <br>
                <a href="#"><img src="../images/project_product.PNG" class="d-block w-100"></a>
            </div>
            <div class="col order-5">
                <br>
                <a href="#"><img src="../images/project_product.PNG" class="d-block w-100"></a>
            </div>
            <div class="col order-1">
                <br>
                <a href="#"><img src="../images/project_product.PNG" class="d-block w-100"></a>
            </div>
        </div>
    </div>
    <br>
    <br>
    <!--풋터영역-->
    <div class="row justify-content-around">
        <div class="footer">
            <ul class="ft-ul">
                <li>BoriBob Inc. 사랑시 고백구 행복동</li>
                <li>대표 : 보리밥형제들 사업자등록번호 : 780-86-01094</li>
                <li>대표번호 : +82)-665-3430 팩스번호 : +82)-888-3430 홈페이지 : petvenience.store.com</li>
                <li>CopyrightⓒBoriBob Inc. All Rights Reserved.</li>
                <div class="facebookicon">
                    <img src="../images/facebook_icon.png" style="border-color: lightblue;">
                </div>
                <div class="instagramicon">
                    <img src="../images/instagram_icon.png" style="border-color: lightblue;">
                </div>
                <div class="youtubeicon">
                    <img src="../images/youtube_icon.png" style="border-color: lightblue;">
                </div>
                <div class="ft-ul2">
                    <li><strong>고객센터</strong></li>
                    <li style="height: 8px;"></li>
                    <li>오전 10시부터 오후 6시까지</li>
                    <li>토요일, 일요일, 공휴일 휴무</li>
                </div>
            </ul>
        </div>
    </div>
</body>

</html>