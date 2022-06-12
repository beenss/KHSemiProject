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
#abcde {
       			font-family: "GongGothicBold.ttf";
       }
@font-face {
                src: url("/fonts/GongGothicMedium.ttf");
                font-family: "GongGothicMedium.ttf";
            }
#searchIdBtn {
       			font-family: "GongGothicMedium.ttf";
       }
#loginButton {
       			font-family: "GongGothicMedium.ttf";
       }
@font-face {
                src: url("/fonts/GongGothicLight.ttf");
                font-family: "GongGothicLight.ttf";
            }
#abab {
       			font-family: "GongGothicLight.ttf";
       }
#cdcd {
       			font-family: "GongGothicLight.ttf";
       }
</style>
</head>
<body>



	<!-- 여기에 바디 코드 짜주셈 -->

	<div class="container">
		<form id="searchIdForm" action="/searchId.mem" method="post">
			<div class="row">
				<div class="col-12 mb-5 d-flex justify-content-center">
					<h2 id="abcde">이메일 찾기</h2>     
				</div>                
			</div>
            <div id="abab">*이메일은 가입시 입력하신 휴대폰번호를 통해 찾을 수 있습니다.</div>

			<div class="row p-2">
				<label for="phone" class="form-label" id="cdcd">휴대폰번호</label>
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
            <div class="row justify-content-center">
                <div class="col-3 d-flex justify-content-center">
                    <button type="button" id="loginButton" class="btn btn-primary">로그인</button>
            </div>
            </div>
		</form>
		
		

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
	            			  alert("등록된 번호가 없습니다.");
	            		  }
            		  
	            	  }
	                  ,error : function(e){
	                	  console.log(e);
	                  }
	              })
	
	            })

		</script>
		
		

	</div>
</body>
</html>