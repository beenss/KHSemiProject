<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.boribob.dao.ReviewDAO" %>

<%@ page import="java.io.File" %>

<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>



<%@ page import="com.oreilly.servlet.MultipartRequest" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
        <title>review</title>
        <style>
            body {
                box-sizing: border-box;
                background-color: white;
            }

            .header {
                padding: 20px;
                position: relative;
            }

            .footer>* {
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

            .ft-images {
                text-align: center;
            }


            .title {
                padding: 10px;
                text-align: center;
                font-size: 15px;
            }

            .board_write .info {
                border-top: 1px dashed #ddd;
                border-bottom: 1px solid #000;
                text-align: center;
                
            }
            .imgBox {

                width: 80%;
                padding-bottom: 30px;
                margin: 0 auto;

            }
            #review-title{
                width: 80%;
                padding: 7px;
                margin-bottom: 25px;
            }

            #review-content {
                border: 1px solid black;
                width: 80%;
                height: 300px;
            }
            .content{
                padding-top: 30px;
                padding-bottom: 30px;

            }
            .boxBtn>*{
                width: 100px;
                height: 40px;
                background-color: rgb(0, 0, 0);
                border: 1px solid white;
                border-radius: 40px;
                font-size: 15px;
                color: white;

            }
        </style>

    <body>
        </head>
        <div class="wrapper">
            <div class="row justify-content-center header">
                <div class="col-lg-4 col-12">
                    <img src="images/project_logo.PNG" class="d-block w-100" id="main-logo">
                </div>
                <div class="col-lg-8 col-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <div class="container-fluid">
                            <a class="navbar-brand" href="#">Boribob</a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li class="nav-item"><a class="nav-link" href="#">제품 보기</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">회원 가입</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="#">리뷰</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
                                    <li class="nav-item"><a class="nav-link" href="#">구독하기</a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="board_wrap">
                <div class="row justify-content-center title">
                    <img src="images/review_main.png" class="img-responsive center-block/" id="review-logo">
                    <strong>리뷰</strong>
                    <p>보리밥 회원들의 생생한 후기를 들려드립니다.</p>
                </div>
                <form id="write-form" action="/writeProc.bo" method="post" enctype="multipart/form-data">
                        <div class="board_write">
                                <div class="col d-flex justify-content-center align-items-center">
                                    <input type="text" placeholder="제목을 입력해주세요" id="review-title" name="reviewTitle">
                                </div>
                                
         
                               
                            <div class="col d-flex justify-content-center align-items-center content">
                                <textarea class="form-control" id="review-content" name="reviewContent"
                                    placeholder="어떤 점이 좋았나요?"></textarea>
                            </div>
                            </div>
                             <div class="col d-flex justify-content-left align-items-center imgBox">
                                    <input type="file" name="file" id="review-img">
                                </div>
                               </form>   
                        </div>
             
                <div class="row justify-content-center boxBtn">
                    <button type="button" class="btnSave" id="btn-save">등록하기</button>
                    <button type="button" class="btnBack" id="btn-back">목록</button>
                </div>
                <script>
                    $("#btn-save").on("click", function () {
                        if ($("#review-title").val() === "") {
                        	alert("제목을 입력해주세요");
                        	 $("#review-content").focus();
                        }
                        if ($("#reivew-content").val() === "") {
                            alert("내용을 입력하세요.");
                            //커서 이동
                            $("#review-content").focus();
                            return;
                        }
                        $("#write-form").submit();
                    })

                    $("#btnback").on("click", function () {
                 
                        location.href = "/review.bo?currentPage=1"
                    });
                </script>

                <div class="row justify-content-center footer">
                    <div class="col-lg-10 col-12">
                        <ul class="ft-ul">
                            <li>BoriBob Inc. 사랑시 고백구 행복동</li>
                            <li>대표 : 보리밥형제들 사업자등록번호 : 780-86-01094</li>
                            <li>대표번호 : +82)-665-3430 팩스번호 : +82)-888-3430 홈페이지 :
                                petvenience.store.com</li>
                            <li>CopyrightⓒBoriBob Inc. All Rights Reserved.</li>
                        </ul>
                    </div>
                    <div class="col-lg-2 col-12">

                        <ul class="ft-ul">
                            <li><strong>고객센터</strong></li>
                            <li style="height: 8px;"></li>
                            <li>오전 10시부터 오후 6시까지</li>
                            <li>토요일, 일요일, 공휴일 휴무</li>
                        </ul>
                    </div>
                </div>

            </div>
    </body>
    </html>
