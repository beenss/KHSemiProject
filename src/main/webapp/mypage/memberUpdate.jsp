
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
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
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>회원정보 수정</title>
</head>
<style>
.mypage-container {
	margin-top: 20px;
	font-family: "GongGothicMedium.ttf";
}

.line {
	border-bottom: 2px solid black;
}

.btn-area {
	text-align: center;
	margin-top: 40px;
}

.btn-area>button {
	margin: 10px;
	width: 150px;
	border-color: #ffc107;
}

.wrap {
	margin-bottom: 50px;
}
 .mypage-container {
            margin-top: 50px;
            margin-bottom: 50px;
        }

        #id {
            color: gray;
            margin-top: 25px;
            margin-bottom: 20px;

        }

        .sidebar {
            margin-top: 30px;
        }

        .sidebar>h2:first-child {
            font-weight: bolder;
        }

        li {
            color: black;
        }

        .content-box h2 {
            font-weight: bolder;
        }

        .row-product-body img {
            width: 25rem;
            height: 25rem;
        }

        .tr-th {
            text-align: center;
        }

        .row-product-body table>thead>tr:first-child>th {
            text-align: center;
            font-size: 25px;
            font-weight: bold;
        }

        .col-table {
            line-height: 60px;
        }

        .col-img {
            text-align: center;
        }

        .content-box p:first-child {
            margin-left: 35px;
        }
        /*  font */
              @font-face {
                src: url("/fonts/MinSans-Regular.otf");
                font-family: "MinSans-Regular.otf";
            }
        @font-face {
                src: url("/fonts/MinSans-Thin.otf");
                font-family: "MinSans-Thin.otf";
            }    
        @font-face {
                src: url("/fonts/MinSans-Medium.otf");
                font-family: "MinSans-Medium.otf";
            }
            
            @font-face {
                src: url("/fonts/MinSans-Theafhh.otf");
                font-family: "Theafhh_.TTF";
            }
             @font-face {
                src: url("/fonts/MinSans-Light.otf");
                font-family: "MinSans-Light.otf";
            }
          @font-face {
                src: url("/fonts/MinSans-Bold.otf");
                font-family: "MinSans-Bold.otf";
            }
          @font-face {
                src: url("/fonts/MinSans-Black.otf");
                font-family: "MinSans-Black.otf";
            }  
             @font-face {
                src: url("/fonts/GongGothicBold.ttf");
                font-family: "GongGothicBold.ttf";
            }  
            @font-face {
                src: url("/fonts/GongGothicLight.ttf");
                font-family: "GongGothicLight.ttf";
            } 
            @font-face {
                src: url("/fonts/GongGothicMedium.ttf");
                font-family: "GongGothicMedium.ttf";
            }   
			/* 헤더 풋터 */
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
</style>
<body>
<!-- header -->
	<div class="row justify-content-around header"
		style="text-align: center;">
		<div class="col-lg-2" style="text-align: center;">
			<img src="/images/project_logo.png" class="d-block w-100"
				id="main-logo">
		</div>
		<div class="col-lg-8 col-12 topmenu">
			<nav class="navbar navbar-expand-lg navbar-light"
				style="float: right;">
				<div class="container-fluid">
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation" style="border: none;">
						<span class="navbar-toggler-icon"></span>
					</button>


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
								style="color: rgb(117, 160, 36); font-weight: bold;"
								href="/pet.pet">구독하기</a></li>
						</ul>
					</div>
				</div>
				</nav>
		</div>		
	</div>
	<!-- 마이페이지  -->
    <div class="container mypage-container">
        <div class="row">
            <!-- 사이드 내비바 -->
            <div class="col-sm-2 sidebar">
                <h2><span>${dto.name}</span><span>님</span></h2>
                <h3><span>안녕하세요.</span></h3>
                <div id="id">
                    <span>${dto.id}</span>
                </div>
                <ul class="nav flex-column">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="/mypage.my">구독 내역 조회</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="/orderList.my">주문 내역 조회</a></li>
                    <li class="nav-item"><a class="nav-link" href="/inquiryList.iq">내가 쓴 문의</a></li>
                    <li class="nav-item"><a class="nav-link" href="/reviewList.bo">내가 쓴 후기</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="/update.my">회원정보 수정</a></li>
                    <li class="nav-item"><a class="nav-link" href="/withdrawal.my">회원탈퇴</a></li>
                </ul>
            </div>
			<!-- content body -->
			<div class="col-sm-10 wrap">
				<p>
				<h3>회원정보 수정</h3>
				</p>
				<div class="line"></div>

				<!-- 회원정보 수정 container-->
				<div class="container" style="border: 1px solid lightgrey">
					<form id="updateForm" action="/updateProc.my" method="post">
						<div class="row p-2">
							<div class="col-12">
								<label for="id" class="form-label">아이디(이메일)</label>
							</div>
							<div class="col-8 mb-2">
								<input type="text" class="form-control" id="id" name="id"
									value="${dto.id}" readonly>
							</div>
						</div>
						
						<!--비밀번호 -->
						<div class="row p-2">
							<div class="col-12">
								<label for="password" class="form-label">비밀번호</label>
							</div>
							<div class="col-12 mb-2">
								<input type="password" class="form-control" id="pw"
									name="password">
							</div>
						</div>

						<div class="row p-2">
							<div class="col-12">
								<label for="pwCheck" class="form-label">비밀번호 확인</label>
							</div>
							<div class="col-12 mb-2">
								<input type="password" class="form-control" id="pwCheck">
							</div>
						</div>
						<!-- 이름 -->
						<div class="row p-2">
							<div class="col-12">
								<label for="name" class="form-label">이름</label>
							</div>
							<div class="col-12 mb-2">
								<input type="text" class="form-control" id="name" name="name"
									value="${dto.name}">
							</div>
						</div>
						<!--  휴대폰 번호  -->
						<div class="row p-2">
							<div class="col-12">
								<label for="phone" class="form-label">휴대폰번호</label>
							</div>
							<div class="col-4">
								<select class="form-select" aria-label="Default select example"
									id="phone1">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="011">011</option>
									<option value="018">018</option>
								</select>
							</div>
							<div class="col-4">
								<input type="text" class="form-control" id="phone2"
									aria-label="First name" maxlength="4" value="${phone1}">
							</div>
							<div class="col-4">
								<input type="text" class="form-control" id="phone3"
									aria-label="First name" maxlength="4" value="${phone2}">
							</div>
							<div class="col d-none">
								<input type="text" id="phone" name="phone">
							</div>
						</div>
						<!-- 우편번호 -->
						<div class="row p-2">
							<div class="col">
								<input type="text" class="form-control" id="postCode"
									name="post" value="${dto.post}" placeholder="우편번호">
							</div>

							<div class="col">
								<button type="button" class="btn btn-primary w-100"
									id="btnPostCode">우편번호 찾기</button>
							</div>
							<div class="row p-2">
								<div class="col">
									<input type="text" class="form-control" id="roadAddr"
										name="roadAddress" placeholder="도로명주소"
										value="${dto.roadAddress}">
								</div>
							</div>
							<span id="guide" style="color: #999; display: none"></span>
							<div class="row p-2">
								<div class="col">
									<input type="text" class="form-control" id="detailAddr"
										name="detailAddress" placeholder="상세주소"
										value="${dto.detailAddress}">
								</div>
							</div>
						</div>
				</div>
				<div class="row">
					<div class="col-12 btn-area">
						<button type="button" class="btn btn-light" id="btnCancel">취소하기</button>
						<button type="button" class="btn btn-warning " id="btnUpdate">수정하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>
	<!-- footer -->
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
	</div>
	<script>
	$('#main-logo').on('click', () => {
		location.href = "/home";
	})
	$("#btnCancel").on("click", () => {
		location.href = "/mypage.my";
	})
	// 수정 버튼을 눌렀을 때 유효성 검사 후 form 제출
    $("#btnUpdate").on("click",function() {
             let regexPw = /[a-zA-Z0-9~!@#$%^&*]{6,20}/; // 비밀번호 정규식 (영문자, 숫자,~!@#$%^&* 6~20자리)
             let regexName = /[ㄱ-힣]{2,5}/; // 이름 정규식 (한글, 2~5자리)
             let regexPhone = /[0-9]{11}/; // 휴대전화 정규식   

             // phone번호 합치기
             // select 박스에서 선택된 값을 가져오는 방법(selected된 옵션의 value값 가져옴)
             let phone = $("#phone1 option:selected").val()
                   + $("#phone2").val() + $("#phone3").val();
             $("#phone").val(phone);

             // 유효성 검사
             
              if (!regexPw.test($("#pw").val())) {
                alert("형식에 맞지 않는 비밀번호입니다.");
                return;
             } else if ($("#pwCheck").val() !== $("#pw").val()) {
                alert("비밀번호와 비밀번호 확인창의 값이 일치하지 않습니다.");
                return;
             } else if (!regexName.test($("#name").val())) {
                alert("형식에 맞지 않는 이름입니다.");
                return;
             } else if (!regexPhone.test(phone)) {
                alert("형식에 맞지 않는 휴대폰번호입니다.");
                return;
             } else if ($("#postCode").val() === ""
                   || $("#roadAddr").val() === "") { 
                alert("주소를 입력해 주세요.");
                return;
             }
             // form 제출
             $("#updateForm").submit();
           	alert("회원정보 수정이 완료되었습니다.");	
             
          })

		// 주소 API
		$("#btnPostCode")
				.on(
						"click",
						function() {
							new daum.Postcode(
									{
										oncomplete : function(data) {
											// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

											// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
											// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
											var roadAddr = data.roadAddress; // 도로명 주소 변수
											//var extraRoadAddr = ''; 

											// 법정동명이 있을 경우 추가한다. (법정리는 제외)
											// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
											//if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
											//    extraRoadAddr += data.bname;
											//}
											// 건물명이 있고, 공동주택일 경우 추가한다.
											//if(data.buildingName !== '' && data.apartment === 'Y'){
											//   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
											//}
											// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
											//if(extraRoadAddr !== ''){
											//    extraRoadAddr = ' (' + extraRoadAddr + ')';
											//}

											// 우편번호와 주소 정보를 해당 필드에 넣는다.
											document.getElementById('postCode').value = data.zonecode;
											document.getElementById("roadAddr").value = roadAddr;

											// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
											//if(roadAddr !== ''){
											//    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
											//} else {
											//    document.getElementById("sample4_extraAddress").value = '';
											//}

											var guideTextBox = document
													.getElementById("guide");
											// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
											if (data.autoRoadAddress) {
												var expRoadAddr = data.autoRoadAddress;
												guideTextBox.innerHTML = '(예상 도로명 주소 : '
														+ expRoadAddr + ')';
												guideTextBox.style.display = 'block';

											} else {
												guideTextBox.innerHTML = '';
												guideTextBox.style.display = 'none';
											}
										}
									}).open();
						})
	</script>
</body>
</html>


