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
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.js"></script>
    <title>고객센터-초안</title>
    <link rel='stylesheet' href='../css/inquiry.css'>
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
    <!--구분선-->
    <hr class="divider" style="width: 1200px; margin-left: 123px;">
    <div class="container">
        <!--로딩 텍스트는 왜 뜨는지 모르겟어요... 수정 시에 반영할테니 감안하고 봐주세요-->
        <table data-toggle="table" id="inquiry-table" style="margin-left: 48px;">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>문의유형</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>배송</td>
                    <td>배송 문의</td>
                    <td>보리보리</td>
                    <td>2022-05-12</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>배송</td>
                    <td>배송문의</td>
                    <td>바비바비</td>
                    <td>2022-05-07</td>
                </tr>

                <tr>
                    <td>3</td>
                    <td>배송</td>
                    <td>배송 문의</td>
                    <td>보리보리</td>
                    <td>가나다</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>배송</td>
                    <td>배송 문의</td>
                    <td>보리보리</td>
                    <td>가나다</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>배송</td>
                    <td>배송문의</td>
                    <td>바비바비</td>
                    <td>가나다</td>
                </tr>
                <tr>
                    <td>6</td>
                    <td>배송</td>
                    <td>배송 문의</td>
                    <td>보리보리</td>
                    <td>가나다</td>
                </tr>
                <tr>
                    <td>7</td>
                    <td>배송</td>
                    <td>배송문의</td>
                    <td>바비바비</td>
                    <td>가나다</td>
                </tr>
                <tr>
                    <td>8</td>
                    <td>배송</td>
                    <td>배송문의</td>
                    <td>바비바비</td>
                    <td>가나다</td>
                </tr>
                <tr>
                    <td>9</td>
                    <td>배송</td>
                    <td>배송문의</td>
                    <td>바비바비</td>
                    <td>가나다</td>
                </tr>
                <tr>
                    <td>10</td>
                    <td>배송</td>
                    <td>배송문의</td>
                    <td>바비바비</td>
                    <td>가나다</td>
                </tr>
                <tr>
                    <td>11</td>
                    <td>배송</td>
                    <td>배송문의</td>
                    <td>바비바비</td>
                    <td>가나다</td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="row justify-content-center" style="padding-left: 600px; margin-top: 20px;">
        <div class="col">
            <ul class="pagination">
                <li class="page-item disabled">
                    <a class="page-link" href="#">&laquo;</a>
                </li>
                <li class="page-item active">
                    <a class="page-link" href="#">1</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">2</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">3</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">4</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">5</a>
                </li>
                <li class="page-item">
                    <a class="page-link" href="#">&raquo;</a>
                </li>
                <div style="padding-left: 420px;"><button type="button" class="btn btn-danger disabled">글쓰기</button>
                </div>

            </ul>

        </div>
    </div>
    </div>
    </head>

    <body>
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