<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>회원탈퇴</title>
</head>
<style>
.mypage-container{
font-family: "GongGothicMedium.ttf";
}

.container:first-child {
	margin-top: 100px;
}

.line {
	border-bottom: 2px solid black;
}

.term-box {
	background-color: #f7f7f7;
	padding: 20px;
	padding-bottom: 5px;
}

.form-check {
	margin: 20px;
}

.withdrawal-info {
	border-bottom: 0.5px solid black;
	margin-bottom: 50px;
}

.withdrawal-input span {
	font-size: 18px;
	font-weight: 10px;
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
.footer{
margin-top : 50px;
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
				<h3>회원탈퇴</h3>
				</p>
				<div class="line"></div>
				<!-- 회원탈퇴 container-->
				<div class="container">
					<div class="row withdrawal-info">
						<div class="col-12">
							<p>
							<h6>회원탈퇴시 다음의 내용을 숙지해 주시기 바랍니다.</h6>
							</p>
						</div>
						<div class="col-12 term-box">
							<p>1. 탈퇴시 고객님의 정보는 소비자 보호에 관한 법률에 의거한 고객정보 보호 정책에 따라 청약철회에 관한
								기록, 대금결제 및 재화 등의 기록은 법정 기간에 따라 관리됩니다.</p>
							<p>2. 탈퇴 후 리뷰 및 문의하기 등의 게시물은 관리가 불가능 하오니, 편집 또는 삭제를 원하시는 경우
								탈퇴 전 관리해 주시기 바랍니다.</p>
							<p>3. 결제 후 진행중인 서비스는 탈퇴로 취소 또는 환불되지않습니다.</p>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="flexCheckDefault"> <label class="form-check-label"
								for="flexCheckDefault"> 위 내용을 모두 숙지하였습니다. </label>
						</div>
					</div>
					<div class="row withdrawal-input">
						<div class="col-2">
							<span>* 비밀번호</span>
						</div>


						<form>
							<div class="col-4">
								<input type="password" class="form-control withdrawPw"
									placeholder="비밀번호를 입력해주세요." id="withdrawPw">
							</div>
							<div class="btn-area">
								<button type="button" class="btn btn-light btnCancle">취소하기</button>
								<button type="button" class="btn btn-warning btnWithdraw">탈퇴하기</button>
							</div>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
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
		// 탈퇴하기 버튼을 눌렀을 때  --> 체크박스 체크여부 확인 / 비밀번호 동일한지 확인하기!  --> confirm창으로 탈퇴여부 재차 물어보기
		$(".btnWithdraw").on("click", function() {
			// 체크박스
			if (!$("#flexCheckDefault").prop('checked')) {
				alert("회원탈퇴 안내를 숙지해주세요.");
				return;
			}

			let withdrawPw = $("#withdrawPw").val();

			$.ajax({
				url : "/withdrawalProc.my",
				type : "post",
				data : {
					"withdrawPw" : withdrawPw
				},
				dataType : "text",
				success : function(data) {
					console.log(data);
					if (data === "ok") {
						let result = confirm("정말 탈퇴하시겠습니까?");
						console.log(result);
						if (result) { // confirm 창에서 확인버튼을 눌렀을 때 아이디 삭제 후 메인페이지로 이동

							$.ajax({
								url : "/withdrawalProcReal.my?confirm=yes",
								type : "get",
								success : function(confirm) {
									console.log(confirm);
								},
								error : function(e) {
									console.log(e);
								}
							});
							alert("이용해주셔서 감사합니다.");
							location.href = "/index.jsp"; // 회원 탈퇴완료 후 메인페이지로 연동 시켜주는 컨트롤러 필요 

						} else { // confirm 창에서 취소버튼 눌렀을때 마이페이지의 구독화면으로 이동
							location.href = "/mypage.my";
						}
					} else {
						alert("올바른 비밀번호를 입력해주세요.");
					}

				},
				error : function(e) {
					console.log(e);
				}
			});
		});

		//취소하기 버튼을 눌렀을 때
			$(".btnCancle").on("click",function(){
				location.href = "/mypage.my";
			})
		
		
		
		
	</script>
</body>
</html>