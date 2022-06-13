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
<title>로그인</title>
<style>
@font-face {
	src: url("/fonts/MinSans-Regular.otf");
	font-family: "MinSans-Regular.otf";
}

@font-face {
	src: url("/fonts/MinSans-bold.otf");
	font-family: "MinSans-bold.otf";
}

@font-face {
	font-family: "Theafhh_.TTF";
	src: url("/fonts/Theafhh_.TTF");
}

@font-face {
	src: url("/fonts/GongGothicLight.ttf");
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
	font-size: 20px;
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

.login_img {
	width: 650px;
	height: 420px;
	margin-left: 30px;
}

.login {
	width: 200px;
	font-size: 35px;
	font-family: "MinSans-bold.otf";
	color: rgb(68, 129, 71);
	margin-top: 70px;
	text-align: center;
	margin: 0 auto;
}

.logininput {
	margin: 0 auto;
	width: 400px;
	padding: 20px;
}

#loginBtn {
	width: 150px;
	margin: 0 auto;
	background-color: rgb(172, 206, 121);
	border: 1px solid white;
	height: 40px;
	border-radius: 40px;
	font-size: 15px;
	color: white;
	font-family: "GongGothicLight.ttf";
	margin-left: 24px;
}

#memberBtn {
	width: 150px;
	margin: 0 auto;
	background-color: rgb(243, 143, 125);
	border: 1px solid rgb(255, 255, 255);
	height: 40px;
	border-radius: 40px;
	font-size: 15px;
	color: white;
	font-family: "GongGothicLight.ttf";
	margin-left: 30px;
}

.emailSave {
	padding: 30px;
	text-align: center;
	font-family: "GongGothicLight.ttf";
}

.search {
	margin: 0 auto;
	font-family: "GongGothicLight.ttf";
	font-size: 17px;
	text-align: center;
	margin-left: -19px;
}

#idSearch {
	color: coral;
	text-decoration-line: none;
}

#passwordSearch {
	color: coral;
	text-decoration-line: none;
}
</style>
</head>

<body>
<body>
</head>
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
									style="color: rgb(117, 160, 36); font-weight: bold;" href="/pet.pet">구독하기</a>
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


<c:choose>
	<c:when test="${not empty loginSession}">
		<c:if test="${rs eq true}">
			<script>
						alert("로그인 성공");
					</script>
		</c:if>



	</c:when>
	<c:otherwise>
		<c:if test="${rs eq false}">
			<script>
				alert("로그인 실패");
			</script>
		</c:if>
        <form id="loginForm" action="/login.mem" method="post">
			<div class="row">
				<div class="row content text-center align-items-center">
					<div class="row justify-content-around" style="text-align: center;">
						<img src="/images/login_img.png" class="d-block login_img">
					</div>
				</div>

				<div class="row justify-content-around login"
					style="text-align: center;">LOGIN</div>
			</div>
			<div class="row justify-content-around logininput">
				<input type="text" id="id" name="id" placeholder="이메일을 입력해주세요.">
				<input type="password" id="password" name="password"
					placeholder="비밀번호를 입력해주세요.">

			</div>
			<br>
			</div>
			<div class="row justify-content-center text-center">
				<div class="col-lg-2">
					<button type="button" id="loginBtn">로그인</button>
				</div>
				<div class="col-lg-2">
					<button type="button" id="memberBtn">회원가입</button>
				</div>
			</div>
			</div>
			<div class="row justify-content-center emailSave">
				<div class="col-lg-2">
					<input type="checkbox" id="emailSave" name="emailSave">이메일
					저장하기
				</div>
			</div>
			</div>
			<div class="row justify-content-center search">
				<div class="col-lg-2">
					<a class="link" href="#" id="idSearch">이메일 찾기</a>

				</div>
				<div class="col-lg-2">
					<a class="link" href="#" id="passwordSearch">비밀번호 찾기</a>
				</div>
			</div>


		</form>

		<!-- 캐시를 이용하여 이메일 저장하기 checkbox 활용 -->
		<script type="text/javascript">

	    	$('#main-logo').on('click', () => {
	    		location.href = "/home";
	    	})
	    	$('#main-logo').on('click', () => {
	    		location.href = "/home";
	    	})
            $(function () {
                fnInit();
            });

            function fnInit() {
                var cookieid = getCookie("emailSave");
                console.log(cookieid);
                if (cookieid != "") {
                    $("input:checkbox[id='emailSave']").prop("checked", true);
                    $('#id').val(cookieid);
                }

            }

            function setCookie(name, value, expiredays) {
                if (expiredays == 0) {
                    document.cookie = name + "=" + escape(value) + "; path=/; max-age=0;";
                } else {
                    document.cookie = name + "=" + escape(value) + "; path=/; expires=" + expiredays + ";";
                }
                console.log(document.cookie);
            }

            function getCookie(Name) {
                var search = Name + "=";
                console.log("search : " + search);

                if (document.cookie.length > 0) { // 쿠키가 설정되어 있다면 
                    offset = document.cookie.indexOf(search);
                    console.log("offset : " + offset);
                    if (offset != -1) { // 쿠키가 존재하면 
                        offset += search.length;
                        // set index of beginning of value
                        end = document.cookie.indexOf(";", offset);
                        console.log("end : " + end);
                        // 쿠키 값의 마지막 위치 인덱스 번호 설정 
                        if (end == -1)
                            end = document.cookie.length;
                        console.log("end위치  : " + end);

                        return unescape(document.cookie.substring(offset, end));
                    }
                }
                return "";
            }

            function saveid() {
                var expdate = new Date();
                if ($("#emailSave").is(":checked")) {
                    expdate.setTime(expdate.getTime() + 1);
                    setCookie("emailSave", $("#id").val(), expdate);
                } else {
                    expdate.setTime(expdate.getTime() - 1);
                    setCookie("emailSave", $("#id").val(), 0);
                }
            } 
        </script>

		<script>

            // 로그인 버튼 눌렀을 때 값 있으면 submit
            $("#loginBtn").on("click", function () {
                if ($("#id").val() === "" || $("#password").val() === "") {
                    alert("아이디 혹은 비밀번호를 입력하세요.");
                    return;
                } else if ($("#id").val() == "${dto.id}" || $("#password").val() == "${dto.pw}") {
                    alert("로그인 성공.");
                }
                saveid();
                $("#loginForm").submit();
            })

            document.getElementById("memberBtn").onclick = function () { // 회원가입 누르면 회원가입창으로 이동
                location.href = "/member.mem"; // 로그인하던 회원가입하던 회원과 관련된 컨트롤러에게 보낸기 위한 공통 url(뒤가.mem으로 끝나도록~)
            }

            // 아이디 찾기 버튼 누르면 팝업창 띄우기
            document.getElementById("idSearch").onclick = function () {
                let url = "/idSearch.mem"; // jsp 경로값 (팝업창 꾸며주는 jsp 필요 **)
                let name = "이메일 찾기"; // 팝업창 이름값
                let option = "width=600, height=400, left=500, top=300"; // 팝업창 크기, 위치
                window.open(url, name, option);
            }

            document.getElementById("passwordSearch").onclick = function () {
                let url = "/passwordSearch.mem"; // jsp 경로값 (팝업창 꾸며주는 jsp 필요 **)
                let name = "비밀번호 찾기"; // 팝업창 이름값
                let option = "width=600, height=400, left=500, top=300"; // 팝업창 크기, 위치
                window.open(url, name, option);
            }

        </script>
	</c:otherwise>
</c:choose>

<!-- 여기부터 풋터 -->
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

</body>

</html>