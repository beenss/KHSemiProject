<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>입력 실패</title>
<style>
	input{
	display: none;
	}
</style>
</head>
<body>
<input type="text" value="${fail}">
<script>
	if($("input").val()=="fail"){
		alert("해당 상품코드는 존재하지 않습니다.");
		location.href="/productUpdate.admin";
	}

</script>
</body>
</html>