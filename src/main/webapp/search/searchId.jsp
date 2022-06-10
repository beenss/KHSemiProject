<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
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
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>레이아웃</title>
<style>
body {
	box-sizing: border-box;
}

.header {
	padding: 20px;
	position: relative;
}

.footer>* {
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
</style>
</head>
<body>



	<div class="wrapper">
		<div class="row justify-content-center header">
			<div class="col-lg-4 col-12">
				<img src="images/project_logo.PNG" class="d-block w-100"
					id="main-logo">
			</div>
			<div class="col-lg-8 col-12">
				<nav class="navbar navbar-expand-lg navbar-light">
					<div class="container-fluid">
						<a class="navbar-brand" href="#">Boribob</a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse"
							data-bs-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item"><a class="nav-link" href="#">제품 보기</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#">고객센터</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#">회원 가입</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#">리뷰</a></li>
								<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
								<li class="nav-item"><a class="nav-link" href="#">구독하기</a>
								</li>
							</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<!-- 여기까지 헤더 -->

	<!-- 여기에 바디 코드 짜주셈 -->

	<div class="container" style="border: 1px solid lightgrey">
		<form id="searchIdForm" action="/searchId.mem" method="post">
			<div class="row">
				<div class="col-12 mb-5 d-flex justify-content-center">
					<h2>이메일 찾기</h2>     
				</div>                
			</div>
            <div>*이메일은 가입시 입력하신 휴대폰번호를 통해 찾을 수 있습니다.</div>

			<div class="row p-2">
				<label for="phone" class="form-label">휴대폰번호</label>
					<div class="col-3 mb-2">
						<select class="form-select" id="phone1">
							<option value="010" selected>010</option>
							<option value="011">011</option>
							<option value="011">016</option>
							<option value="011">017</option>
							<option value="011">019</option>
						</select>
					</div>
					<div class="col-3 mb-2">
						<input type="text" class="form-control" id="phone2" maxlength="4">
					</div>
					<div class="col-3 mb-2">
						<input type="text" class="form-control" id="phone3" maxlength="4">
					</div>
					<div class="col d-none">
						<input type="text" id="phone" name="phone">
					</div>
				<div class="col-3 mb-2">
					<button type="button" id="searchIdBtn" class="btn btn-warning w-100">번호
						확인</button>
				</div>
			</div>
		
		</form>
		
		

	</div>

	<div class="row justify-content-center">
		<div class="col-4 d-flex justify-content-end">
			<button type="button" id="loginButton" class="btn btn-secondary">로그인</button>
		</div>
		
		
		
		<script>
		
		
		// 로그인 버튼 누르면
		document.getElementById("loginButton").onclick = function() {
			self.close();
		}
				
			
			// 핸드폰 번호 확인
			$("#searchIdBtn").on("click",   function() {          

	               // phone번호 합치기
	               // select 박스에서 선택된 값을 가져오는 방법(selected된 옵션의 value값 가져옴)
	               let phone = $("#phone1 option:selected").val()
	                     + $("#phone2").val() + $("#phone3").val();
	               	$("#phone").val(phone);
	               
	              $.ajax({
	            	  url : "/searchId.mem?phone="+phone
	            	  ,type : "get"
	            	  ,dataType : "json"
	            	  ,success : function(data){
	            		  
	            		  if (data!==null){
	            		  alert(data.id);
	            			  
	            		  }else{
	            			  alert("틀렸어");
	            		  }
            		  
	            	  }
	                  ,error : function(e){
	                	  console.log(e);
	                  }
	              })
	
	            })

		</script>
		
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
			<div class="col-lg-2 col-12">
				<ul class="ft-images">
					<img src="images/icons8-facebook-new-48.png"
						style="border-color: lightblue;">
					<img src="images/icons8-인스-타-그램-48.png"
						style="border-color: lightblue;">
					<img src="images/icons8-유튜브-재생-48.png"
						style="border-color: lightblue;">

				</ul>
				<ul class="ft-ul">
					<li><strong>고객센터</strong></li>
					<li style="height: 8px;"></li>
					<li>오전 10시부터 오후 6시까지</li>
					<li>토요일, 일요일, 공휴일 휴무</li>
				</ul>
			</div>
		</div>

	</div>
</body>
</html>