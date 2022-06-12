<%@ page language="java"
contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
    <title>Document</title>



    <style>
      body {
        box-sizing: border-box;
      }

      nav {
        height: 80px;
      }

      .nav-item {
        padding-right: 50px;
      }
      .header {
        position: relative;
        padding: 60px;
      }
      .title {
        border-bottom: 1px solid black;
      }
      .title-body {
        background-color: lightgray;
      }
      .content {
        border-bottom: 1px solid darkgray;
      }

      span {
  
  display: inline-block;
  width: 60px;
  bottom: 0;
}

#graph {
  display: flex;
  align-items: flex-end;
  justify-content: space-between;
  height: 400px;
  width: 1300px;
  border: 1px solid rgb(16, 14, 14);
  text-align: center;
  

}

.blue {
  background: #5abae6;
}
.red {
  background: #d34e4e;
}
.green {
  background: #9dbb19;
}
.yellow {
  background: #f7b358;
}
.sandybrown {
  background: #f4a460;
}
.indigo {
  background: #4b0082;
}
.magenta {
  background: #ff00ff;
}
.limegreen {
  background: #3cb371;
}
.tomato {
  background: #ff6347;
}
.cornflowerblue {
  background: #6495ed;
}
.aquamarine {
  background: #7fffd4;
}
.cyan {
  background: #00ffff;
}
.lightpink {
  background: #ffb6c1;
}
.palegoldenrod {
  background: #eee8aa;
}
.cadetblue {
  background: #5f9ea0;
}
.dodgerblue {
  background: #1e90ff;
}



span {
  font-size: 20px;
  line-height: 1.8em;
  color: #fff;
  text-align: center;
  border-radius: 8px 8px 0 0;
}

.itemInfo{
  width: 50%;
}
      
.inColor{
  width: 20px;
}
    </style>
  </head>

  <body>
    <div class="wrapper">
      <div class="row header">
        <div class="col">
          <nav
            class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark justify-content-center"
          >
            <div class="container">
              <a class="navbar-brand" href="#"></a>
              <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown"
                aria-expanded="false"
                aria-label="Toggle navigation"
              >
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav text-center">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#"
                      >Home</a
                    >
                  </li>
                  <li class="nav-item dropdown">
                    <a
                      class="nav-link dropdown-toggle"
                      href="#"
                      id="navbarDropdownMenuLink"
                      role="button"
                      data-bs-toggle="dropdown"
                      aria-expanded="false"
                    >
                      회원
                    </a>
                    <ul
                      class="dropdown-menu"
                      aria-labelledby="navbarDropdownMenuLink"
                    >
                      <li><a class="dropdown-item" href="#">조회</a></li>
                      <li><a class="dropdown-item" href="#">블랙리스트</a></li>
                    </ul>
                  </li>
                  <li class="nav-item dropdown">
                    <a
                      class="nav-link dropdown-toggle"
                      href="#"
                      id="navbarDropdownMenuLink"
                      role="button"
                      data-bs-toggle="dropdown"
                      aria-expanded="false"
                    >
                      통계
                    </a>
                    <ul
                      class="dropdown-menu"
                      aria-labelledby="navbarDropdownMenuLink"
                    >
                      <li>
                        <a class="dropdown-item" href="#"
                          >상품별매출/전체매출</a
                        >
                      </li>
                      <li><a class="dropdown-item" href="#">재고</a></li>
                    </ul>
                  </li>
                  <li class="nav-item dropdown">
                    <a
                      class="nav-link dropdown-toggle"
                      href="#"
                      id="navbarDropdownMenuLink"
                      role="button"
                      data-bs-toggle="dropdown"
                      aria-expanded="false"
                    >
                      상품
                    </a>
                    <ul
                      class="dropdown-menu"
                      aria-labelledby="navbarDropdownMenuLink"
                    >
                      <li><a class="dropdown-item" href="#">전체 조회</a></li>
                      <li><a class="dropdown-item" href="#">수정/삭제</a></li>
                      <li><a class="dropdown-item" href="#">추가</a></li>
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#"
                      >주문 조회/상세보기</a
                    >
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#"
                      >배송 조회/수정</a
                    >
                  </li>
                  <li class="nav-item dropdown">
                    <a
                      class="nav-link dropdown-toggle"
                      href="#"
                      id="navbarDropdownMenuLink"
                      role="button"
                      data-bs-toggle="dropdown"
                      aria-expanded="false"
                    >
                      문의
                    </a>
                    <ul
                      class="dropdown-menu"
                      aria-labelledby="navbarDropdownMenuLink"
                    >
                      <li><a class="dropdown-item" href="#">조회/삭제</a></li>
                      <li><a class="dropdown-item" href="#">답변 추가</a></li>
                    </ul>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#"
                      >리뷰 조회/삭제</a
                    >
                  </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#"
                      >login</a
                    >
                  </li>
                </ul>
              </div>
            </div>
          </nav>
        </div>
      </div>
      <div class="container">
        <div class="row title py-3">
            <h3>매출 통계</h3>
          </div>
          <div class="row title-body py-2 mt-4 text-center">
            <div class="col-3">
              <h5>주문번호</h5>
            </div>
            <div class="col-3">
              <h5>판매상품</h5>
            </div>
            <div class="col-3">
              <h5>총판매량</h5>
            </div>
            <div class="col-3">
              <h5>결제총액</h5>
            </div>
            
          </div>
          <!------------------------ 매출통계 ----------------------->
          <div class="row title-body py-1  text-center">
            <div class="col-3">
              <h5>주문번호</h5>
            </div>
            <div class="col-3">
              <h5>판매상품</h5>
            </div>
            <div class="col-3">
              <h5>${totalSales} ea</h5>
            </div>
            <div class="col-3">
              <h5>${totalPayAmount} 만원</h5>
            </div>
            
          </div>
          <!------------------------ 그래프 ----------------------->
          <div id="graph">
            <span class="blue code1">Code1</span>
            <span class="red code2" >Code2</span>
            <span class="green code3" >Code3</span>
            <span class="yellow code4" >Code4</span>
            <span class="sandybrown code5" >Code5</span>
            <span class="indigo code6" >Code6</span>
            <span class="magenta code7" >Code7</span>
            <span class="limegreen code8" >Code8</span>
            <span class="tomato code9" >Code9</span>
            <span class="cornflowerblue code10" >Code10</span>
            <span class="aquamarine code11" >Code11</span>
            <span class="cyan code12" >Code12</span>
            <span class="lightpink code13" >Code13</span>
            <span class="palegoldenrod code14" >Code14</span>
            <span class="cadetblue code15" >Code15</span>
            <span class="dodgerblue code16">Code16</span>

            <input type="hidden" id="Code1Value" value="${countSales1}">
            <input type="hidden" id="Code2Value" value="${countSales2}">
            <input type="hidden" id="Code3Value" value="${countSales3}">
            <input type="hidden" id="Code4Value" value="${countSales4}">
            <input type="hidden" id="Code5Value" value="${countSales5}">
            <input type="hidden" id="Code6Value" value="${countSales6}">
            <input type="hidden" id="Code7Value" value="${countSales7}">
            <input type="hidden" id="Code8Value" value="${countSales8}">
            <input type="hidden" id="Code9Value" value="${countSales9}">
            <input type="hidden" id="Code10Value" value="${countSales10}">
            <input type="hidden" id="Code11Value" value="${countSales11}">
            <input type="hidden" id="Code12Value" value="${countSales12}">
            <input type="hidden" id="Code13Value" value="${countSales13}">
            <input type="hidden" id="Code14Value" value="${countSales14}">
            <input type="hidden" id="Code15Value" value="${countSales15}">
            <input type="hidden" id="Code16Value" value="${countSales16}">
          </div>
         

          <ul class="list-group list-group-horizontal">
            <span class="inColor" style="background-color:blue ;"></span><li class="list-group-item itemInfo">강아지 소고기 사료 </li>
            <span class="inColor" style="background-color:red ;"></span><li class="list-group-item itemInfo">강아지 흰살 생선 사료</li>
            
          </ul>
          <ul class="list-group list-group-horizontal-sm">
            <span class="inColor" style="background-color:green ;"></span><li class="list-group-item itemInfo">멍멍 소고기 사료</li>
            <span class="inColor" style="background-color:yellow ;"></span><li class="list-group-item itemInfo">멍멍 흰살 생선 사료 </li>
            
          </ul>
          <ul class="list-group list-group-horizontal-md">
            <span class="inColor" style="background-color:sandybrown ;"></span><li class="list-group-item itemInfo">강아지 오리 다이어트 사료</li>
            <span class="inColor" style="background-color:indigo ;"></span><li class="list-group-item itemInfo">강아지 야채 연어 다이어트 사료</li>
            
          </ul>
          <ul class="list-group list-group-horizontal-lg">
            <span class="inColor" style="background-color:magenta ;"></span><li class="list-group-item itemInfo">멍멍 오리 다이어트 사료</li>
            <span class="inColor" style="background-color:limegreen ;"></span><li class="list-group-item itemInfo">멍멍 야채 연어 다이어트 사료</li>
            
          </ul>
          <ul class="list-group list-group-horizontal-xl">
            <span class="inColor" style="background-color:tomato ;"></span><li class="list-group-item itemInfo">묘아 닭고기 사료 </li>
            <span class="inColor" style="background-color:cornflowerblue ;"></span><li class="list-group-item itemInfo">묘아 생선 사료 </li>
            
          </ul>
          <ul class="list-group list-group-horizontal-xxl">
            <span class="inColor" style="background-color:aquamarine ;"></span><li class="list-group-item itemInfo">야옹 닭고기 사료</li>
            <span class="inColor" style="background-color:cyan ;"></span><li class="list-group-item itemInfo">야옹 연어 사료</li>
            
          </ul>

        </ul>
        <ul class="list-group list-group-horizontal-xl">
          <span class="inColor" style="background-color:lightpink ;"></span><li class="list-group-item itemInfo">묘아 양고기 다이어트 사료 </li>
          <span class="inColor" style="background-color:palegoldenrod ;"></span><li class="list-group-item itemInfo">묘아 생선 다이어트 사료 </li>
          
        </ul>
        <ul class="list-group list-group-horizontal-xxl">
          <span class="inColor" style="background-color:cadetblue ;"></span><li class="list-group-item itemInfo">야옹 오리 다이어트 사료</li>
          <span class="inColor" style="background-color:dodgerblue ;"></span><li class="list-group-item itemInfo">야옹 야채 다이어트 사료 </li>
          
        </ul>


          <!------------------------ 반복문  ----------------------->
          <c:forEach items="${statisticsDTO}" var="statisticsDTO">
            
            
              <div
                class="row content py-2 text-center"
                style="cursor: pointer"> 
                  
                
                
                <div class="col-3">${statisticsDTO.statisticsId}</div>
                
                <div class="col-3">${statisticsDTO.price}</div>
                <div class="col-3">  </div>
              
              </div>
            
          </c:forEach>
      </div>


  

          
          <div class="col-3">11</div>
          <div class="col-6">ss111@naver.com</div>
          <div class="col-3">사료이름</div>
        </div>
      </div>
    </div>

    <script>
      const code1Value= document.querySelector("#Code1Value");
      const code2Value= document.querySelector("#Code2Value");
      const code3Value= document.querySelector("#Code3Value");
      const code4Value= document.querySelector("#Code4Value");
      const code5Value= document.querySelector("#Code5Value");
      const code6Value= document.querySelector("#Code6Value");
      const code7Value= document.querySelector("#Code7Value");
      const code8Value= document.querySelector("#Code8Value");
      const code9Value= document.querySelector("#Code9Value");
      const code10Value= document.querySelector("#Code10Value");
      const code11Value= document.querySelector("#Code11Value");
      const code12Value= document.querySelector("#Code12Value");
      const code13Value= document.querySelector("#Code13Value");
      const code14Value= document.querySelector("#Code14Value");
      const code15Value= document.querySelector("#Code15Value");
      const code16Value= document.querySelector("#Code16Value");
      



      const code1= document.querySelector(".code1");
      const code2= document.querySelector(".code2");
      const code3= document.querySelector(".code3");
      const code4= document.querySelector(".code4");
      const code5= document.querySelector(".code5");
      const code6= document.querySelector(".code6");
      const code7= document.querySelector(".code7");
      const code8= document.querySelector(".code8");
      const code9= document.querySelector(".code9");
      const code10= document.querySelector(".code10");
      const code11= document.querySelector(".code11");
      const code12= document.querySelector(".code12");
      const code13= document.querySelector(".code13");
      const code14= document.querySelector(".code14");
      const code15= document.querySelector(".code15");
      const code16= document.querySelector(".code16");
      
      console.log(code1Value.value)
      code1.style.height =code1Value.value+"%";
      code2.style.height =code2Value.value+"%";
      code3.style.height =code3Value.value+"%";
      code4.style.height =code4Value.value+"%";
      code5.style.height =code5Value.value+"%";
      code6.style.height =code6Value.value+"%";
      code7.style.height =code7Value.value+"%";
      code8.style.height =code8Value.value+"%";
      code9.style.height =code9Value.value+"%";
      code10.style.height =code10Value.value+"%";
      code11.style.height =code11Value.value+"%";
      code12.style.height =code12Value.value+"%";
      code13.style.height =code13Value.value+"%";
      code14.style.height =code14Value.value+"%";
      code15.style.height =code15Value.value+"%";
      code16.style.height =code16Value.value+"%";
      
      
      
    </script>
  </body>
</html>
