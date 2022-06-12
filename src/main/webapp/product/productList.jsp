<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<title>제품보기_초안</title>
<style>
/*메인 로고 스타일*/
#main-logo {
	margin-left: 123px;
	width: 350px;
	height: 200px;
}

/*메뉴 폰트 스타일*/
*.nav-link {
	color: rgb(44, 44, 44);
	font-size: large;
}

*.nav-link:hover {
	background-color: blanchedalmond;
	background-size: 3px;
}
/*메뉴 위치*/
#nav-item {
	margin-top: 150px;
	margin-left: 325px;
}

/*상품이미지 div 사이즈*/
.container {
	padding-right: 100px;
}
/*대략적인 구조를 직관적으로 확인하시라고 임의로 설정해 둔 테두리입니다!*/
img {
	border: 1px solid rgb(218, 218, 218);
}

#btn-category {
	margin-left: 150px;
}
/*footer*/
.footer {
	height: 150px;
	overflow: visible;
	background-color: rgb(255, 216, 131);
	z-index: 1;
	margin-top: 40px;
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

.ft-ul li {
	height: 25px;
}

.facebookicon {
	position: relative;
	bottom: 40px;
	margin-left: 1000px;
	z-index: 2;
}

.instagramicon {
	position: relative;
	bottom: 90px;
	margin-left: 1100px;
	z-index: 2;
}

.youtubeicon {
	position: relative;
	bottom: 140px;
	margin-left: 1200px;
	z-index: 2;
}

.ft-ul2 {
	position: relative;
	bottom: 250px;
	margin-left: 1100px;
	z-index: 2;
	font-size: 10px;
}

.ft-ul2 li {
	height: 17px;
}
/* body 영역 */
.container{
font-family: "GongGothicMedium.ttf";
}		

.row-product-body{
            margin-top: 30px;
            margin-bottom: 20px;
        }
        .row-product-body{
          justify-content : around;
        }
        h2:first-child{
        margin :35px;
        margin-top : 50px;
        }
        .btnArea{
        border-bottom : solid 1.5px black;

        }
        .btnArea button{
          margin-left: 5px;
	        width: 150px;
          background-color: white;
          color: black;
        }
        .card{
          margin-bottom: 10px;
        }
        .card img:hover{
        box-shadow: 2px 2px 2px 2px rgb(224, 221, 221);
        }
        .card-body{
          text-align: center;
        }
        /* 폰트 */
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
            
</style>
</head>
<body>
	<header>
		<div class="row justify-content">
			<div class="col-4">
				<img src="images/project_logo.PNG" class="d-block w-100"
					id="main-logo">
			</div>
			<c:choose>
					<c:when test="${not empty loginSession}">
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
									style="color: rgb(117, 160, 36); font-weight: bold;" href="/pet.pet">구독하기</a>
								</li>
							</ul>
						</div>
		            </c:when>
		            <c:otherwise>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/product.pro">제품 보기</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/inquiry.iq?currentPage=1">고객센터</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/member/member.jsp">회원 가입</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/review.bo?currentPage=1">리뷰</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(0, 0, 0);" href="/login/login.jsp">로그인</a></li>
								<li class="nav-item"><a class="nav-link"
									style="color: rgb(117, 160, 36); font-weight: bold;" href="/pet">구독하기</a>
								</li>
							</ul>
						</div>
		            </c:otherwise>
		           	</c:choose> 
		</div>
		</div>
	</header>
	<!--메인영역-->
	<!--헤더와 메인의 구분선-->
	<div class="container product-header">
		<div class="row">
			<div class="col-12">
				<h2>BoriBob Product</h2>
			</div>
		</div>
		<div class="row btnArea">
			<div class="col-12">
				<button type="button" class="btn btnDog btn-dark" value="dog">강아지</button>
				<button type="button" class="btn btnCat btn-dark" value="cat">고양이</button>
			</div>
		</div>
	</div>
	<!-- 상품의 이미지 및 설명 -->
	<div class="container product-body">
		<div class="row row-product-body">
			<br>
			<!--상품 이미지 영역입니다 해당 이미지를 클릭 시 상품 상세정보로 이동-->
			<div class="container product-body">
				<div class="row row-product-body">
					<c:forEach items="${productList}" var="dto">
						<div class="col-lg-3 col-md-6">
							<div class="card">
								<a href="/productDetail.pro?productCode=${dto.productCode}"><img
									src="${dto.productImg}" class="card-img-top" alt="..."></a>
								<div class="card-body">
									<p class="card-text">${dto.productName}</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<!--풋터영역-->
			<div class="row justify-content-around">
				<div class="footer">
					<ul class="ft-ul">
						<li>BoriBob Inc. 사랑시 고백구 행복동</li>
						<li>대표 : 보리밥형제들 사업자등록번호 : 780-86-01094</li>
						<li>대표번호 : +82)-665-3430 팩스번호 : +82)-888-3430 홈페이지 :
							petvenience.store.com</li>
						<li>CopyrightⓒBoriBob Inc. All Rights Reserved.</li>
						<div class="facebookicon">
							<img src="images/facebook_icon.png"
								style="border-color: lightblue;">
						</div>
						<div class="instagramicon">
							<img src="images/instagram_icon.png"
								style="border-color: lightblue;">
						</div>
						<div class="youtubeicon">
							<img src="images/youtube_icon.png"
								style="border-color: lightblue;">
						</div>
						<div class="ft-ul2">
							<li><strong>고객센터</strong></li>
							<li style="height: 8px;"></li>
							<li>오전 10시부터 오후 6시까지</li>
							<li>토요일, 일요일, 공휴일 휴무</li>
						</div>
					</ul>
				</div>
			</div>

			<script>
		// 강아지버튼을 눌렀을 때 강아지상품만 비동기로 띄워주기 
			$(".btnDog").on("click",function(){	
				
				 $.ajax({
					url : "/productDog.pro"
					,type : "get"
					,dataType: "json"
					,success : function(dogList){ 
						$(".row-product-body").empty();
						if(dogList.length!==0){ 			// 강아지 상품이 있다면! 
							for(let productDog of dogList){	
								 let col = $("<div>").addClass("col-lg-3 col-md-6");
								let card = $("<div>").addClass("card");
								let anchor = $("<a>").attr("href","/productDetail.pro?productCode="+productDog.productCode);
								let img = $("<img>").addClass("card-img-top").attr("src",productDog.productImg);
								let cardBody = $("<div>").addClass("card-body");
								let p = $("<p>").addClass("card-text").html(productDog.productName);
								
								let anchorImg = anchor.append(img);
								let cardBodyP = cardBody.append(p);
								let card1 = card.append(anchorImg,cardBodyP);
								let col1 = col.append(card1);
								
								$(".row-product-body").append(col1);
							 	$(".btnDog").focus();
							}
							
						}
					}
					,error : function(e){
						console.log(e);
					}
				}); 
				
			})
			
			// 고양잉버튼을 눌렀을 때 고양이상품만 비동기로 띄워주기 
			$(".btnCat").on("click",function(){	
				
				 $.ajax({
					url : "/productCat.pro"
					,type : "get"
					,dataType: "json"
					,success : function(catList){ 
						$(".row-product-body").empty();
						if(catList.length!==0){ 			// 고양이 상품이 있다면!
							for(let productCat of catList){	
								 let col = $("<div>").addClass("col-lg-3 col-md-6");
								let card = $("<div>").addClass("card");
								let anchor = $("<a>").attr("href","/productDetail.pro?productCode="+productCat.productCode);
								let img = $("<img>").addClass("card-img-top").attr("src",productCat.productImg);
								let cardBody = $("<div>").addClass("card-body");
								let p = $("<p>").addClass("card-text").html(productCat.productName);
								
								let anchorImg = anchor.append(img);
								let cardBodyP = cardBody.append(p);
								let card1 = card.append(anchorImg,cardBodyP);
								let col1 = col.append(card1);
								
								$(".row-product-body").append(col1);
							 	$(".btnCat").focus();
							}
							
						}
					}
					,error : function(e){
						console.log(e);
					}
				}); 
				
			})
			
			
			
		
		
		</script>
</body>



























</html>