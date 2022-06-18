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
	margin-top: 60px;
}
@font-face {
                src: url("/fonts/GongGothicBold.ttf");
                font-family: "GongGothicBold.ttf";
            }
#abcdef {
       			font-family: "GongGothicBold.ttf";
       }
@font-face {
                src: url("/fonts/GongGothicLight.ttf");
                font-family: "GongGothicLight.ttf";
            }
.qwer {
       			font-family: "GongGothicLight.ttf";
       }
#cancelBtn{
	margin-top: 20px;
}
</style>
</head>
<body>



	<!-- 여기에 바디 코드 짜주셈 -->

	<div class="container">
		<form id="searchPasswordForm" action="/searchPassword.mem" method="post">
			<div class="row">
				<div class="col-12 mb-5 d-flex justify-content-center">
					<h2 id="abcdef">비밀번호 찾기</h2>     
				</div>                
			</div>
			<div class="qwer">
            <div>*안녕하세요 보리밥입니다*</div><br>
            <div>저희 '보리밥'은 개인정보 처리방침에 따라 고객센터로 연락주시면</div><br>
            <div>인증절차를 통하여 고객님의 비밀번호 변경을 도와드리고 있습니다.</div><br>
            <div>이용에 불편을 드려 대단히 죄송합니다.</div>
            <div>고객센터 : 1544-9970</div>
            </div>
            
            <div class="row justify-content-center">
		<div class="col-4 d-flex justify-content-center">
			<button type="button" id="cancelBtn" class="btn btn-secondary">닫기</button>
		</div>
		</div>
		</form>

	</div>

	
	
		<script>
		
		// 닫기 버튼 누르면
		document.getElementById("cancelBtn").onclick = function() {
			self.close();
		}
		



		</script>



	</div>
</body>
</html>