<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Register - SB Admin</title>
        <link href="../resource/css/styles.css" rel="stylesheet" />
        <script src="../resource/js/all.js" crossorigin="anonymous"></script>
		<script src="http://code.jquery.com/jquery-latest.min.js" ></script>
		<script type ="text/javascript">
			function fn_OnClickInsertAccount() {
				$.ajax({
					url : "/account/insertAccount", //클라이언트가 http 요청을 보낼 서버의 주소
					type : "POST", //http 요청 방식
					data : $('#frm').serialize(), //frm 폼의 객체드를 한번에 받음
					success : function(result) { //응답이 성공일 때 호출
						alert("가입되었습니다. \n로그인 후 이용해주세요.");
						location.href="/account/login"; //해당 페이지로 이동
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
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">회원가입</h3></div>
                                    <div class="card-body">
                                        <form id="frm" onsubmit="return false;">
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="mbrNm" name="name" type="text" placeholder="이름 입력" />
                                                        <label for="mbrNm">이름</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="mbrId" name="id" type="text" placeholder="아이디 입력" />
                                                <label for="mbrId">아이디</label>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="mbrPwd" name="pwd" type="password" placeholder="비밀번호 입력" />
                                                        <label for="mbrPwd">비밀번호</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
	                                                    <select id="mbrPosition" name="position" class="form-control">
		                									<option value="직원">직원</option>
		                									<option value="매니저" selected>매니저</option>
	                									</select>
                                                        <label for="mbrPosition">직책</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><a class="btn btn-primary btn-block" onclick="fn_OnClickInsertAccount()">회원가입</a></div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <!--
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
            -->
        </div>
        <script src="../resource/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="../resource/js/scripts.js"></script>
    </body>
</html>
