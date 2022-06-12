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
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<title>아이디 확인</title>
<style>
    .w-btn-skin {
    background-color: #f8e6e0;
    color: #1e6b7b;
	position: relative;
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 15px;
    text-decoration: none;
    font-weight: 550;
    transition: 0.25s;
}
.w-btn-skin-outline {
    transition: 0.25s;
    transform: scale(1.1);
    cursor: pointer;
	
}
.w-btn-skin:hover {
	letter-spacing: 1px;
    transform: scale(1.1);
    cursor: pointer;
}
.w-btn-indigo {
    background-color: aliceblue;
    color: #1e6b7b;
	position: relative;
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 15px;
    text-decoration: none;
    font-weight: 550;
    transition: 0.25s;
}
.w-btn-indigo-outline {
    transition: 0.25s;
    transform: scale(1.1);
    cursor: pointer;
}
.w-btn-indigo:hover {
    letter-spacing: 1px;
    transform: scale(1.1);
    cursor: pointer;
}
@font-face {
                src: url("/fonts/GongGothicMedium.ttf");
                font-family: "GongGothicMedium.ttf";
            }
#checkIdBtn {
       			font-family: "GongGothicMedium.ttf";
       }
#ranNumCheck {
       			font-family: "GongGothicMedium.ttf";
       }
#useBtn {
       			font-family: "GongGothicMedium.ttf";
       }
#cancelBtn {
       			font-family: "GongGothicMedium.ttf";
       }
@font-face {
                src: url("/fonts/GongGothicLight.ttf");
                font-family: "GongGothicLight.ttf";
            }
.abcd {
       			font-family: "GongGothicLight.ttf";
       }
@font-face {
                src: url("/fonts/GongGothicLight.ttf");
                font-family: "GongGothicLight.ttf";
            }
#certificationBtn {
       			font-family: "GongGothicLight.ttf";
       }
</style>
</head>
<body>

	<div class="container" style="border-radius: 30px; width: 550px;  height: 200px; border: 3px solid #f8e6e0;">
	<form id="checkIdForm" action="/checkId.mem" method="post">
		<div class='container'>
			<div class="row m-3 justify-content-center">
				<div class="col-6 m-2">
					<input type="text" class="form-control" id="id" name="id"
						value="${id}" placeholder="이메일을 입력하세요.">
				</div>
				<div class="col-4 m-2">
					<button type="button" class="btn btn-warning w-100" 
                    style="background-color: #f8e6e0; border-radius: 10px; color: #318697;" id="checkIdBtn">중복확인</button>
				</div>
			</div>
			
			
			<div class="row m-2 justify-content-start">
				<div class="col-3">
					<span class="abcd">확인결과 :</span>
				</div>
				<c:if test="${rs eq 'ok'}">
 					<div class="col-5">
						<span>사용가능 이메일입니다.</span>
					</div>
					<div class="col-4">
						<button type="button" id="certificationBtn" style="border-radius: 10px; border: none; color: #318697; background-color: #f8e6e0;">인증번호발송</button>		
					</div>
					<script>
					//이메일인증 > 인증버튼 누르자  
					document.getElementById("certificationBtn").onclick = function() {
						console.log("certificationEmail");
						alert("인증코드 발송!");
						let email = $("#id").val();
						
						 $.ajax({
						type : "post",
						//contentType : "application/json",
						url : "/certificationEmail.mem",
						data: {"email":email},
						//data: JSON.stringify(data),
						//dataType : 'json',
						//cache : false,
						timeout : 600000,
						success : function(data) {
							console.log("=================data===============");
							console.log(data);
							
							document.getElementById("ranNumCheck").onclick = function() {

								console.log($("#randomCode").val());
								console.log(data);
								let randomCode = /[0~9]{6}w/;
								let useBtn = document.getElementById("useBtn");

								console.log("${rs}");	
								if ($("#randomCode").val()==data) {
									alert("인증성공");
									useBtn.disabled = false;
								} else {
									alert("인증실패");
									useBtn.disabled = true;
								}
							}
							
							
						},
						error : function(e) {
							console.log("ERROR : ", e);
							console.log("ERROR : ", e.resultMsg);
						}
					});  

						
					}
					</script>
				</c:if>
				<c:if test="${rs eq 'no'}">	
					<div class="col-5">
						<span>중복된 이메일입니다.</span>		
					</div>				
				</c:if>	
			</div>	
				
			</div>
			


			<div class="row m-2 justify-content-center">
				<div class="col-3">
					<span class="abcd">이메일 인증 : </span>
				</div>
				<div class="col-5">
					<input type="text" id="randomCode" maxlength="6" placeholder="인증번호를 입력하세요.">
				</div>
				<div class="col-4">
					<button type="button" id="ranNumCheck" class="btn btn-warning w-100" 
                    style="background-color: #f8e6e0; border-radius: 10px; color: #318697;">확인</button>
				</div>
			</div>
		</div>


			<div class="row m-2 justify-content-center">
			<div class="col-4 d-flex justify-content-end">
					<button type="button" class="w-btn w-btn-indigo" id="cancelBtn" style="height: 50px;">취소</button>
				</div>
				<div class="col-4 d-flex justify-content-start">
					<button type="button" class="w-btn w-btn-skin" style="height: 50px;" id="useBtn" disabled >사용</button>
				</div>				
			</div>
		</div>
	</form>




	<script>

		
			//let data = {};
			//data["email"] = $("#email").val();

			
		

		$("#checkIdBtn").on("click", function() {
							let regexId = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
							if (!regexId.test($("#id").val())) {
								alert("형식에 맞지 않는 아이디입니다.");
								return;
							}
							$("#checkIdForm").submit();
							
						
							
						})				
						

		document.getElementById("useBtn").onclick = function() { // 사용가능 이메일 사용한다 했을때
			let regexId = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
			if (!regexId.test($("#id").val())) {
				alert("형식에 맞지 않는 아이디입니다.");
				useBtn.disabled = true;
				return;
			}


			opener.document.getElementById("id").value = document
					.getElementById("id").value;
			self.close();
		}

		document.getElementById("cancelBtn").onclick = function() {
			self.close();
		}
	</script>

</body>
</html>