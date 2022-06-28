<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Login - SB Admin</title>
        <link href="../resource/css/styles.css" rel="stylesheet" />
        <script src="../resource/js/all.js" crossorigin="anonymous"></script>
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script type="text/javascript">
            function fn_OnClickLogin(){
                $.ajax({
                    url : "/account/loginCheck", //클라이언트가 http 요청을 보낼 서버의 주소
                    type : "POST", //http 요청 방식
                    data : $('#frmLogin').serialize(), //frm 폼의 객체드를 한번에 받음
                    success : function(result) { //응답이 성공일 때 호출
                    	if(result == "/account/login") { //해당 페이지로 이동
                    		alert("아이디 또는 비밀번호가 틀렸습니다.\n다시 입력해주세요.")
                    	}
                    	location.href = result; //controller에서 /home or /login
                	}
                    });
            }
    
        </script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">로그인</h3></div>
                                    <div class="card-body">
                                        <form id="frmLogin" name="frmLogin" action="loginCheck" method="post">
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="id"  name="id" type="text" placeholder="아이디" />
                                                <label for="id">아이디</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="pwd" name="pwd" type="password" placeholder="비밀번호" />
                                                <label for="pwd">비밀번호</label>
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                            	<a class="small" href="password.html"></a>
                                                <a class="btn btn-primary" onclick="fn_OnClickLogin()">로그인</a>
                                                <!--<button class="btn btn-primary" type="button" id="btnLogin" onclick="fn_OnClickLogin()"></button>
                                                <label for="btnLogin">로그인</label>-->
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="/account/insertAccount">관리자 등록</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <script src="../resource/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="../resource/js/scripts.js"></script>
    </body>
</html>
