<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<title>Home</title>
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

.subs_img {
	padding-bottom: 30px;
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

.pet_input {
	font-family: "GongGothicLight.ttf";
	font-size: 16.5px;
}

#button-submit {
	background-color: rgb(172, 209, 130);
	border: 1px solid white;
	width: 150px;
	height: 40px;
	margin: 20px;
	border-radius: 40px;
	font-size: 18px;
	color: white;
	font-family: "GongGothicLight.ttf";
}

#button-back {
	background-color: rgb(134, 134, 134);
	border: 1px solid white;
	width: 150px;
	height: 40px;
	margin: 20px;
	border-radius: 40px;
	font-size: 18px;
	color: white;
	font-family: "GongGothicLight.ttf";
}

#petinfo {
	width: 650px;
	height: 300px;
}
</style>
</head>
<body>
</head>
<body>
        <div class="row justify-content-around header" style="text-align: center;">
            <div class="col-lg-2" style="text-align: center;">
                <img src="/images/project_logo.png" class="d-block w-100" id="main-logo">
            </div>
            <div class="col-lg-8 col-12 topmenu">
                <nav class="navbar navbar-expand-lg navbar-light" style="float: right;">
                    <div class="container-fluid">
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation" style="border: none;">
                            <span class="navbar-toggler-icon"></span>
                        </button>
			            <c:choose>
					<c:when test="${not empty loginSession}">
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/product.pro">제품 보기</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/inquiry.iq?currentPage=1">고객센터</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/mypage.my">마이페이지</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/review.bo?currentPage=1">리뷰</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/logout.mem">로그아웃</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(117, 160, 36); font-weight: bold;" href="/pet.pet">구독하기</a>
								</li>
							</ul>
						</div>
		            </c:when>
		            <c:otherwise>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/product.pro">제품 보기</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/inquiry.iq?currentPage=1">고객센터</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/member/member.jsp">회원 가입</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/review.bo?currentPage=1">리뷰</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/login/login.jsp">로그인</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(117, 160, 36); font-weight: bold;" href="/pet">구독하기</a>
								</li>
							</ul>
						</div>
		            </c:otherwise>
		           	</c:choose> 
                    </div>
            </div>
            </nav>
        </div>
        </div>
<!-- 바디 -->
<div class="container class-body">
	<div class="row content text-center align-items-center">
		<img src="/images/petinfo_img.png" class="d-block w-100" id="petinfo">
		<form action="/petInput.pet" method="post" id="pet-input-form">
			<div class="row pet_input">

				<div class="col-12">
					<div class="form-check">
						<br> <input class="form-check-input" type="radio"
							name="petTypeSelect" value="dog" />강아지
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="petTypeSelect"
							value="cat" checked />고양이
					</div>
				</div>
				<input type="text" name="petType" id="pet-type"
					style="display: none;">
				<div class="col-12 ">
					우리 아이의 견/묘종은 <select style="display: inline; width: 200px;"
						class="form-select" id="pet-kind" name="petKind">
						<option value="1" style="display: none;"></option>
						<option value="2">닥스훈트</option>
						<option value="3">브리티쉬 숏헤어</option>
					</select> 입니다.
				</div>

				<div class="col-12">
					우리 아이 이름은 <input type="text" class="form-control" id="pet-name"
						name="petName" style="display: inline; width: 200px;">
					입니다.
				</div>
				<div class="col-12">
					우리 아이 생일은 <input type="text" class="form-control"
						id="pet-birthday-year" name="petBirthdayYear"
						style="display: inline; width: 100px;"> 년 <input
						type="text" class="form-control" id="pet-birthday-month"
						name="petBirthdayMonth" style="display: inline; width: 100px;">
					월 <input type="text" class="form-control" id="pet-birthday-day"
						name="petBirthdayDay" style="display: inline; width: 100px;">
					일 입니다.
				</div>
				<div class="col-12">
					우리 아이의 체형은 <select style="display: inline; width: 200px;"
						class="form-select" id='pet-weight' name='petWeight'>
						<option value="0">보통</option>
						<option value="1">통통</option>
					</select> 입니다.
				</div>
				<div class="col-12">
					우리 아이의 알러지는 <input type="text" class="form-control"
						id="pet-allergy" name="petAllergy"
						style="display: inline; width: 200px;" placeholder="없으면 '없음'으로 입력">
					가 있습니다.
				</div>
				<div class="col-12">
					<button type="button" id="button-submit">제출하기</button>
					<button type="button" id="button-back">뒤로가기</button>
				</div>
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
			<li>대표번호 : +82)-665-3430 팩스번호 : +82)-888-3430 홈페이지 :
				petvenience.store.com</li>
			<li>CopyrightⓒBoriBob Inc. All Rights Reserved.</li>
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