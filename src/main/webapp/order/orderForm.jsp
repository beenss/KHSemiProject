
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


  
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
    <title>레이아웃</title>
    <style>
   @font-face {
            src: url("/fonts/MinSans-Regular.otf");
            font-family: "MinSans-Regular.otf";
        }

        @font-face {
            src: url("/fonts/MinSans-bold.otf");
            font-family: "MinSans-bold.otf";
        }

        @font-face {
            font-family: "Theafhh_.TTF";
            src: url("/fonts/Theafhh_.TTF");
        }

        @font-face {
            src: url("/fonts/GongGothicLight.ttf");
            font-family: "GongGothicLight.ttf";
        }

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

        .orderProductInfo{
          width: 200px;
          margin: 0 auto;
        }

        .orderTxt{
          font-size: 37px;
            font-family: "GongGothicLight.ttf";
            color: rgb(159, 199, 121);

        }

        .deliveryTxt{

          font-size: 20px;
          padding: 20px;
            font-family: "GongGothicLight.ttf";
            color: rgb(67, 82, 53);
        }

        #infoBtn{
          background-color: rgb(134, 134, 134);
            border: 1px solid white;
            width: 190px;
            height: 40px;
            margin: 20px;
            border-radius: 40px;
            font-size: 15px;
            color: white;
            font-family: "GongGothicLight.ttf";

        }
        #address_kakao{
          background-color: rgb(134, 134, 134);
            border: 1px solid white;
            width: 150px;
            height: 40px;
            margin: 20px;
            border-radius: 40px;
            font-size: 15px;
            color: white;
            font-family: "GongGothicLight.ttf";


        }
        #btn-back{
          background-color: rgb(134, 134, 134);
            border: 1px solid white;
            width: 150px;
            height: 40px;
            margin: 20px;
            border-radius: 40px;
            font-size: 15px;
            color: white;
            font-family: "GongGothicLight.ttf";


        }

        #check_module{
          background-color: rgb(255, 134, 134);
            border: 1px solid white;
            width: 150px;
            height: 40px;
            margin: 20px;
            border-radius: 40px;
            font-size: 15px;
            color: white;
            font-family: "GongGothicLight.ttf";

        } 

  
    </style>  
</head>
<body>
    </head>
<div class="row justify-content-around header" style="text-align: center;">
            <div class="col-lg-2" style="text-align: center;">
                <img src="/images/project_logo.png" class="d-block w-100" id="main-logo">
            </div>
            <div class="col-lg-8 col-12 topmenu">
                <nav class="navbar navbar-expand-lg navbar-light" style="float: right;">
                    <div class="container-fluid">
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation" style="border: none;">
                            <span class="navbar-toggler-icon"></span>
                        </button>
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
            </nav>
        </div>
        </div>



  <div class="container class-body">
    <div class="row content text-center align-items-center">
        <p class="orderTxt">주문서</p>
    </div>
  </div>
  <div class="row justify-content-center">
    <!--주문상품 코드-->
      <div class="col-lg-2" style="margin: 0 auto;"><input id="productCode" type="readOnly" name="productName" value="${subscribeDto.productCode}">
      </div>

      <div class="col-lg-2" style="margin: 0 auto;"><input id="productName" placeholder="주문하신 상품">
      </div>
    </div>
    <br>
    <br>
    <br>

    </div>
    <div class="row content text-center align-items-center">
        <div class="col-lg-4">
          <strong>회원 정보</strong><br>

             <input id="name" type="text" value="${memberDTO.name}">
            <br>
            <br>
             <input id="phone" type="text" value="${memberDTO.phone}">
            <br>
            <br>
            <input id="post" type="text" value="${memberDTO.post}">
            <br>
            <br>
            <input id="roadAddress" type="text" value="${memberDTO.roadAddress}">
            <br>
            <br>
            <input id="detailAddress" type="text" value="${memberDTO.detailAddress}">
              <br>
             <br>
                <button type="button" id="infoBtn">기존 정보로 주문하기</button>
        </div>
       

    <div class="col-lg-4" >
      <strong>배송지 입력</strong><br>
      <input id="orderName" type="text" name="orderName" placeholder="이름">
      <br>
      <br>
      <input id="orderPhone" name="orderPhone" type="text"placeholder="전화번호 (-빼고 입력)">
      <br>
      <br>
      <input type="text" id="orderPost" placeholder="우편번호" style="width: 190px;"> 
      <button type="button"  id="address_kakao" style="height: 35px; margin-bottom: 5px;">우편번호찾기</button>
      <br>
      <br>
      <input type="text"  id="orderRoadAddress" placeholder="도로명주소" style="width: 380px;">
      <br>
      <br>
      <input type="text"  id="orderDetailAddress" placeholder="상세주소" style="width: 380px; margin-top: 5px;">
      <br>
      <br>
      <input type="text" id="postMsg"  placeholder="배송 메시지" style="width: 380px; margin-top: 5px;"><br>
     <br>
      <input type="text" id="orderMsg"  placeholder="주문 메시지" style="width: 380px; margin-top: 5px;"><br>
      
    </div>
  
    <div class="col-lg-4" >
                <strong>결제 정보</strong><br>
           
                <input type="text" id="totalPrice" value="${subscribePrice}" placeholder="100"><br>
          <br>
                <input type="text" id="subscribeTerm" value="${subscribeDto.subscribeTerm}" ><br>
                <br>
                <input type="text" id="namePay" placeholder="이보리"><br>
                <br>
                <input type="text" id="emailPay" placeholder="bori@gmail.com"><br>
                <br>
                <input type="text" id="phonePay" placeholder="01012345678"><br>
                <br>
                <input type="text" id="addressPay" placeholder="예)서울기 강남구 삼성동"><br>
                <br>
                <input type="text" id="detailAddressPay" placeholder="예)123-456"><br>
               
            </div>
                          <input type="text" id="petName" value="${petDto.getPetName()}" style="display: none;">
                <input type="text" id="petAge" value="${petDto.getPetAge()}" style="display: none;">
                
                <input type="text" id="petAllergy" value="${petDto.getPetAllergy()}" style="display: none;">
                <input type="text" id="petWeight" value="${petDto.getPetWeight()}" style="display: none;">
                <input type="text" id="petKind" value="${petDto.getPetKind()}" style="display: none;">
                <input type="text" id="petType" value="${petDto.getPetType()}" style="display: none;">
                
                
                
                  
             
            <div class="deliveryTxt" style="text-align: center;"><strong>배송을 시작할까요?</strong></div>
            <br>
        
            <div class="row justify-content-center" style="width: 200px; margin: 0 auto;">
            <button type="button" id="btn-back" href="/pet.pet">취소하기</button>
            </div>
            <div class="row justify-content-center" style="width: 200px; margin: 0 auto;">
              
            <button id="check_module" type="button">결제하기</button>
        </div>
        
        </class>
    </div>
</div>

<div class="row justify-content-around">
    <!--풋터 영역-->
    <div class="footer">
        <ul class="ft-ul">
            <li>BoriBob Inc. 사랑시 고백구 행복동</li>
            <li>대표 : 보리밥형제들 사업자등록번호 : 780-86-01094</li>
            <li>대표번호 : +82)-665-3430 팩스번호 : +82)-888-3430 홈페이지 : petvenience.store.com</li>
            <li>CopyrightⓒBoriBob Inc. All Rights Reserved.</li>
           
    </div>


   <script>
       const productName = document.querySelector('productName');
       const productCode = document.querySelector('productCode');


           if (productCode == 1) {
               productName.value = " 강아지 소고기 사료";
           } else if (productCode == 2) {
               productName.value = "강아지 흰살 생선 사료";
           }else if (productCode == 3) {
               productName.value = "멍멍 소고기 사료";
           }else if (productCode == 4) {
               productName.value = "멍멍 흰살 생선 사료";
           }else if (productCode == 5) {
               productName.value = "강아지 오리 다이어트 사료";
           }else if (productCode == 6) {
               productName.value = "강아지 야채 연어 다이어트 사료";
           }else if (productCode == 7) {
               productName.value = "멍멍 오리 다이어트 사료";
           }else if (productCode == 8) {
               productName.value = "멍멍 야채 연어 다이어트 사료";
           }else if (productCode == 9) {
               productName.value = "묘아 닭고기 사료";
           }else if (productCode == 10) {
               productName.value = "묘아 생선 사료 ";
           }else if (productCode == 11) {
               productName.value = "야옹 닭고기 사료";
           }else if (productCode == 12) {
               productName.value = "야옹 연어 사료";
           }else if (productCode == 13) {
               productName.value = "묘아 양고기 다이어트 사료";
           }else if (productCode == 14) {
               productName.value = "묘아 생선 다이어트 사료 ";
           }else if (productCode == 16) {
               productName.value = "야옹 오리 다이어트 사료";
           }else if (productCode == 16) {
               productName.value = "야옹 야채 다이어트 사료 ";
           }







       const infoBtn = document.querySelector('#infoBtn');
       
       const name = document.querySelector('#name');
       
       const orderName = document.querySelector('#orderName');
       
       const phone = document.querySelector('#phone');
       const orderPhone = document.querySelector('#orderPhone');

       const post = document.querySelector('#post');
       const orderPost = document.querySelector('#orderPost');

       const roadAddress = document.querySelector('#roadAddress');
       const orderRoadAddress = document.querySelector('#orderRoadAddress');
       
       const detailAddress = document.querySelector('#detailAddress');
       const orderDetailAddress = document.querySelector('#orderDetailAddress');

       const orderMsg = document.querySelector('#orderMsg');
       const postMsg = document.querySelector('postMsg');
       
       infoBtn.addEventListener('click', () => { // 회원 가입 정보를 주문 정보로 대채

           const nameValue = name.value;
        orderName.value =nameValue;
      
        const phoneValue = phone.value;
        orderPhone.value =phoneValue;

        const postValue = post.value;
        orderPost.value =postValue;

        const roadAddressValue = roadAddress.value;
        orderRoadAddress.value =roadAddressValue;

        const detailAddressValue = detailAddress.value;
        orderDetailAddress.value =detailAddressValue;


       })

       



       window.onload = function () { // 주소 api 
document
.getElementById("address_kakao")
.addEventListener("click", function () {
  //주소입력칸을 클릭하면
  //카카오 지도 발생
  new daum.Postcode({
    oncomplete: function (data) {
      //선택시 입력값 세팅
      document.getElementById("orderRoadAddress").value = data.address; // 주소 넣기
      document.getElementById("orderPost").value = data.zonecode;
      
      document.getElementById("orderDetailAddress").focus(); //상세입력 포커싱
    },
  }).open();
});


};


//결제정보 ============================================================================

       let reg_email =/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
       let n_RegExp=/^[가-힣]{2,15}$/;
       let reg_num = /^[0-9]{8,13}$/



$("#check_module").click(function () { // 결제 api      
const nameProduct = document.querySelector("#productCode");    
if(nameProduct.value===""){
console.log(nameProduct.value)
alert("상품명이 누락 되었습니다")
return false;
}

const orderName = document.querySelector("#orderName");    
if(orderName.value===""){
console.log(orderName.value)
alert("수취인 이름이 누락 되었습니다")
return false;
}
if(!n_RegExp.test(orderName.value)){
    alert("특수문자,영어,숫자는 사용할수 없습니다.한글만 입력하여주세요.");
    return false;
}


const orderPhone = document.querySelector("#orderPhone");    
if(orderPhone.value===""){
console.log(orderPhone.value)
alert("수취인 연락처가 누락 되었습니다")
return false;
}

if(!reg_num.test(orderPhone.value)){
    alert("전화번호 형식이 맞지 않습니다 '-' 빼고 입력 영문 한글 입력불가.");
    return false;
}

const orderPost = document.querySelector("#orderPost");    
if(orderPost.value===""){
console.log(orderPost.value)
alert("우편번호가 누락 되었습니다")
return false;
}

const orderRoadAddress = document.querySelector("#orderRoadAddress");    
if(orderRoadAddress.value===""){
console.log(orderRoadAddress.value)
alert("주소가 누락 되었습니다")
return false;
}

const totalPrice = document.querySelector("#totalPrice");   
if(totalPrice.value===""){
alert("금액을 입력하세요.")
return false;
}
const namePay = document.querySelector("#namePay");
if(namePay.value===""){
alert("결제하시는분의 이름이 필요합니다.")
return
}
if(!n_RegExp.test(namePay.value)){
    alert("특수문자,영어,숫자는 사용할수 없습니다.한글만 입력하여주세요.");
    return false;
}
const emailPay = document.querySelector("#emailPay");

if(emailPay.value===""){
alert("결제하시는분의 이메일이 필요합니다.")
return false
}
if(!reg_email.test(emailPay.value)){
    alert("이메일 형식에 맞지 않습니다.");
   return false;
}
const phonePay = document.querySelector("#phonePay");
if(phonePay.value===""){
alert("결제하시는분의 전화번호가 필요합니다.")
return false;
}

if(!reg_num.test(phonePay.value)){
    alert("전화번호 형식이 맞지 않습니다 '-' 빼고 입력 영문 한글 입력불가.");
    return false;
}
const addressPay = document.querySelector("#addressPay");
if(addressPay.value===""){
alert("결제하시는분의 주소가 필요합니다.")
return false;
}
const detailAddressPay = document.querySelector("#detailAddressPay");
if(detailAddressPay.value===""){
alert("결제하시는분의 상세주소가 필요합니다.")
return false;
}



var IMP = window.IMP; //
IMP.init("imp38719670");
IMP.request_pay(
{ 
  
  pg: "inicis",
  pay_method: "card",
  merchant_uid: "merchant_" + new Date().getTime(),
  name: nameProduct.value,
  amount: totalPrice.value,
  buyer_email: emailPay.value,
  buyer_name: namePay.value,
  buyer_tel: phonePay.value,
  buyer_addr: addressPay.value,
  buyer_postcode: detailddressPay.value,
  m_redirect_url: "http://127.0.0.1:5500/src/main/webapp/order/test.html",
},

  function (rsp) {    //결제 성공시 결제 정보 전송 
  console.log(rsp);
 
   


  if (rsp.success) {
    //결제완료정보
    var payAlert ="결제가 완료 되었습니다."
    const paySuccess = "ok";
    const payId = "고유ID :"+ rsp.imp_uid;;
    const payTradeId = "상점 거래ID :" + rsp.merchant_uid;
    const payAmount =  rsp.paid_amount;
    const payApproval = "카드 승인번호 :  " + rsp.apply_num;; 
  
    const orderName = $('#orderName').val();
    const orderPhone = $('#orderPhone').val();
    const orderPost = $('#orderPost').val();
    const orderRoadAddress = $('#orderRoadAddress').val();
    const orderDetailAddress = $('#orderDetailAddress').val();
    const orderMsg =  $('#orderMsg').val();
    const postMsg   =$('#postMsg').val();
    const totalPrice = $('#totalPrice').val();  
   
    const petName = $('#petName').val();
    const petAge = $('#petAge').val();
    const petAllergy = $('#petAllergy').val();
    const petWeight = $('#petWeight').val();
    const petKind = $('#petKind').val();
    const petType =  $('#petType').val();
    
    const productCode   =$('#productCode').val(); 
    const subscribeTerm   =$('#subscribeTerm').val();  

    $.ajax({
        url:"/insert.order",
        method:"post",
        dataType:"json",
        
        data: {
                "paySuccess" : paySuccess,
                "payId" : payId,
                "payTradeId" : payTradeId,
                "payAmount" : payAmount,
                "payApproval" : payApproval,
                "orderName" : orderName,
                "orderPhone" : orderPhone,
                "orderPost" : orderPost,
                "orderRoadAddress" : orderRoadAddress,
                "orderDetailAddress" : orderDetailAddress,
                "orderMsg" : orderMsg,
                "postMsg" : postMsg,
                "totalPrice" :totalPrice,
              
                "petName" : petName,
                "petAge" : petAge,
                "petAllergy" : petAllergy,
                "petWeight" : petWeight,
                "petKind" : petKind,
                "petType" : petType,

                "productCode" : productCode,
                "subscribeTerm" : subscribeTerm
              }
              
    })
    alert(payAlert);
    location.href = "/complete.order" ;

          
    
  } else {       //결제 실패시 정보 전송 
    
    var payInfomation = "결제에 실패했습니다.";

    payInfomation += "에러내용 : " + rsp.error_msg;
    $.ajax({
        url:"/failInsert.payment",
        method:"post",
         dataType:"json",
          data: {
                "payInfomation" : payInfomation,
              }
    })
    
    alert(payInfomation);
    
    
  }
  
}
);
});


   </script>
</body>
</html>