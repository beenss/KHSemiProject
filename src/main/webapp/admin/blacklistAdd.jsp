<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>블랙리스트 회원 추가</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<style>
	textarea{
		overflow:scroll;
		resize: none;
	}
</style>
</head>
<body>
	<form id="formb-blacklist" action="/blacklistProc.admin" method="post">
	<div class="container">
            <div class="row title py-3">
                <h3>블랙리스트 회원 추가</h3>
            </div>
            <div class="row pt-3 pb-3">
                <div class="col-3">
                    아이디
                </div>
                <div class="col-9">
                    <input type="text" id="id" name="id" style="width:400px">
                </div>
            </div>
            <div class="row pt-3 pb-3">
            	<div class="col-3">
                    이유
                </div>
                <div class="col-9">
                    <textarea name="blacklistReason" id="reason" style="width:400px; height:200px"></textarea>
                </div>
            </div>
      </div>
      </form>
      	<div class='buttonBox1 d-grid gap-1 d-flex justify-content-center'>
			<button type="button" class="btn btn-outline-secondary" id="submit-btn">추가</button>
	  	</div>
	  	<script>
	  	$("#submit-btn").on("click",function(){
			//만약 제목을 입력 안하면 제목 없음 쓰임
			if($("#id").val()===""){
				alert("id를 입력하세요")
				$("#id").focus();
				return;
			}
			//내용 비어있으면 내용을 입력하세요
			if($("#reason").val()===""){
				alert("이유를 입력하세요");
				$("#reason").focus();
				return;
			}
			$("#formb-blacklist").submit();
		})
	  	</script>
	  		<c:if test="${rs eq true}">
				<script>
					alert("추가되었습니다.")
					opener.location.href="/blacklist.admin"; 
				</script>
			</c:if>
			<c:if test="${rs eq false}">
				<script>
					alert("존재하지 않는 회원 혹은 이미 블랙리스트인 회원 입니다.")
				</script>
			</c:if>
</body>
</html>