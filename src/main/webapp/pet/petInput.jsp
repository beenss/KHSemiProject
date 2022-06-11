<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>펫 정보 입력</title>
    <style>
        body {
            box-sizing: border-box;
            background-color: rgb(255, 252, 221);
        }

        .header {
            padding: 20px;
            position: relative;
        }

        .footer>* {
            background-color: rgb(255, 216, 131);
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

        .ft-images {
            text-align: center;
        }

        .form-check {
            display: inline-block;
        }

        .class-body {
            padding: 20px;
            font-size: 25px;
            width: 600px;
        }

        .class-body div[class|=col] {
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <!-- 헤더 시작 -->
        <div class="row justify-content-center header">
            <div class="col-lg-4 col-12">
                <img src="images/project_logo.PNG" class="d-block w-100" id="main-logo">
            </div>
            <div class="col-lg-8 col-12">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="#">Boribob</a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link" href="/product.pro">제품 보기</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/inquiry.iq?currentPage=1">고객센터</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/mypage.my">마이페이지</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/review.bo?currentPage=1">리뷰</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="/logout.mem">로그아웃</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">구독하기</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- 여기까지 헤더 -->

        <!-- 바디 -->
        <div class="container class-body">
            <form action="/petInput.pet" method="post" id="pet-input-form">
                <div class="row">
                    <div class="col-12">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="petTypeSelect" value="dog"/>강아지
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="petTypeSelect" value="cat" checked/>고양이
                        </div>
                    </div>
                    <input type="text" name="petType" id="pet-type" style="display: none;">
                    <div class="col-12 ">
                        우리 아이의 견/묘종은
                        <select style="display:inline; width: 200px;" class="form-select" id="pet-kind" name="petKind">
                            <option value="1" style="display:none;"></option>
                            <option value="2">닥스훈트</option>
                            <option value="3">브리티쉬 숏헤어</option>
                        </select>
                        입니다.
                    </div>

                    <div class="col-12">
                        우리 아이 이름은 
                        <input type="text" class="form-control" id="pet-name" name="petName" style="display:inline; width: 200px;">
                        입니다.
                    </div>
                    <div class="col-12">
                        우리 아이 생일은 
                        <input type="text" class="form-control" id="pet-birthday-year" name="petBirthdayYear" style="display:inline; width: 100px;">
                        년
                        <input type="text" class="form-control" id="pet-birthday-month" name="petBirthdayMonth" style="display:inline; width: 100px;">
                        월
                        <input type="text" class="form-control" id="pet-birthday-day" name="petBirthdayDay" style="display:inline; width: 100px;">
                        일 입니다.
                    </div>
                    <div class="col-12">
                        우리 아이의 체형은
                        <select style="display:inline; width: 200px;" class="form-select" id='pet-weight' name='petWeight'>
                            <option value="0">보통</option>
                            <option value="1">통통</option>
                        </select>
                        입니다.
                    </div>
                    <div class="col-12">
                        우리 아이의 알러지는
                        <input type="text" class="form-control" id="pet-allergy" name="petAllergy" style="display:inline; width: 200px;" placeholder="없으면 '없음'으로 입력">
                        가 있습니다.
                    </div>
                    <div class="col-12">
                        <button type="button" class="btn btn-primary" id="button-submit">제출하기</button>
                        <button type="button" class="btn btn-secondary" id="button-back">뒤로가기</button>
                    </div>
                </div>
            </form>
        </div>
        <!-- 여기까지 바디 -->

        <!-- 풋터 -->
        <div class="row justify-content-center footer">
            <div class="col-lg-10 col-12">
                <ul class="ft-ul">
                    <li>BoriBob Inc. 사랑시 고백구 행복동</li>
                    <li>대표 : 보리밥형제들 사업자등록번호 : 780-86-01094</li>
                    <li>대표번호 : +82)-665-3430 팩스번호 : +82)-888-3430 홈페이지 : petvenience.store.com</li>
                    <li>CopyrightⓒBoriBob Inc. All Rights Reserved.</li>
                </ul>
            </div>
            <div class="col-lg-2 col-12">
                <ul class="ft-images">
                    <img src="images/facebook_icon.png" style="border-color: lightblue;">
                    <img src="images/instagram_icon.png" style="border-color: lightblue;">
                    <img src="images/youtube_icon.png" style="border-color: lightblue;">
                </ul>
                <ul class="ft-ul">
                    <li><strong>고객센터</strong></li>
                    <li style="height: 8px;"></li>
                    <li>오전 10시부터 오후 6시까지</li>
                    <li>토요일, 일요일, 공휴일 휴무</li>
                </ul>
            </div>
        </div>
        <!-- 여기까지 풋터 -->
    </div>
    <script>
        function getPetType() {
            const petTypeSelect = document.getElementsByName('petTypeSelect');
            petTypeSelect.forEach((elem) => {
                if (elem.checked) {
                    document.getElementById('pet-type').value = elem.value;
                }
            })
        }

        function isValidInput() {
            let petName = document.getElementById('pet-name').value;
            let petBirthdayYear = document.getElementById('pet-birthday-year').value;
            let petBirthdayMonth= document.getElementById('pet-birthday-month').value;
            let petBirthdayDay = document.getElementById('pet-birthday-day').value;
            
            if (petName === '') {
            	return 'invalidName';
            }
            
            if (petBirthdayMonth.length === 1) {
            	petBirthdayMonth = '0' + petBirthdayMonth;
            }
            if (petBirthdayDay.length === 1) {
            	petBirthdayDay = '0' + petBirthdayDay;
            }
            let petBirthday = petBirthdayDay + '-' + petBirthdayMonth + '-' + petBirthdayYear;
            let result = true;
            
            var dateRegex = /^(?=\d)(?:(?:31(?!.(?:0?[2469]|11))|(?:30|29)(?!.0?2)|29(?=.0?2.(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00)))(?:\x20|$))|(?:2[0-8]|1\d|0?[1-9]))([-.\/])(?:1[012]|0?[1-9])\1(?:1[6-9]|[2-9]\d)?\d\d(?:(?=\x20\d)\x20|$))?(((0?[1-9]|1[012])(:[0-5]\d){0,2}(\x20[AP]M))|([01]\d|2[0-3])(:[0-5]\d){1,2})?$/;
    		result = dateRegex.test(petBirthday);
    	    
    	    if (result === true) {
    	    	return 'valid';
    	    } else {
    	    	return 'invalidDate';
    	    }
        }

        document.getElementById('button-submit').addEventListener('click', () => {
            getPetType();
            if (isValidInput() === 'invalidName') {
            	alert('이름을 입력해주십시오.');
            } else if (isValidInput() === 'invalidDate') {
                alert('유효한 생일 날짜가 아닙니다.');
            } else {
            	document.getElementById('pet-input-form').submit();
            }
        })
        
        document.getElementById('button-back').addEventListener('click', () => {
        	location.href = "/home";
        })
    </script>
</body>
</html>