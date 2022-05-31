<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>

    <title>상품상세-초안</title>
	<link rel="stylesheet" href="../css/productDetail.css">
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
    <hr class="divider" style="width: 1200px; margin-left: 123px;">
    <div class="container">
        <!--상품 이미지 영역입니다 해당 이미지를 클릭 시 상품 상세정보로 이동-->
        <div class="row justify-content-left">
            <div class="col-5" id="product-imgs" style="margin-left: 100px;">
                <div class="btn-category" style="margin-bottom: 10px;">
                    <button type="button" class="btn btn-warning">강아지</button>
                    <button type="button" class="btn btn-warning">고양이</button>
                </div>
                <img src="../images/project_product.PNG" class="d-block w-100">
            </div>
            <div class="col-5">
                <br>
                <br>
                <br>
                <div class="col" style="text-align: right;">
                    <h3>보리밥's Special food type A</h3>
                </div>
                <div class="col" style="text-align: right;">
                    <br>
                    <br>
                    <h4>상품설명</h4>
                </div>
                <div class="col" style="text-align: right;">
                    -브로컬리<br>
                    칼륨, 칼슘 등의 풍부한 미네랄로 아이들의 활력 증강 !<br>
                    -단호박<br>
                    식이섬유와 펙틴으로 노폐물 배출에 도움 ! <br>
                    -렌틸콩<br>
                    콜레스테롤을 낮추고 혈당 조절에 도움 ! <br>
                </div>
                <br>
                <br>
                <div class="col" style="text-align: right;">
                    <br>
                    <h4>상품가격</h4>
                    <div>
                        <h6>50,000원</h6>
                    </div>
                </div>
                <br>
                <br>
                <div class="row">
                    <button type="button" class="btn btn-danger disabled" style="height: 50px;">구독하기</button>
                </div>
            </div>
        </div>
    </div>
    <hr class="divider" style="width: 1200px; margin-left: 123px;">
    <div class="row justify-content-center" id="pro-explain">상품 상세설명 및 이미지</div>
    </div>
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