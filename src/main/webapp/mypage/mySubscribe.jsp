<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>마이페이지</title>
</head>
<style>
	.container{
        margin-top: 100px;
    }
    .line{
        border-bottom: 2px solid black;
    }
</style>
<body>
	<!-- 마이페이지  -->    
    <div class="container">
        <div class="row">
            <!-- 사이드 내비바 -->
            <div class="col-sm-3">
                <span>dnltnzla1@naver.com</span>
                <ul class="nav flex-column">
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="#">구독 내역 조회</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">회원 활동 내역</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="/update.my">회원 정보 수정</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/withdrawal.my">회원 탈퇴</a>
                      </li>
                  </ul>
            </div>
            <!-- content body -->
            <div class="col-sm-9 wrap">
                <p><h3  >구독 내역</h3></p>
                <div class="line">밑줄</div>
                <div class="col-sm-9">
                    <div> <p><h5>구독한 상품이 없습니다.</h5></p> </div>
                </div>
            </div>
        </div>
    </div>
   	<script>
   	
 
   	</script>
</body>
</html>











