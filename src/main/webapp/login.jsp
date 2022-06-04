<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form id="loginForm" action="/loginProc.mem" method="post">
		<input type="text" name="id" id="id">
		<input type="text" name="password" id="password">	
		<button type="button" id="login">로그인</button>
	</form>
	<script>
	$("#login").on("click",function(){
    	if($("#id").val()===""|| $("#password").val()===""){
    		alert("아이디 혹은 비밀번호를 정확히 입력하세요")
    		return;
    	}
    	$("#loginForm").submit();
    })
	</script>
</body>
</html>