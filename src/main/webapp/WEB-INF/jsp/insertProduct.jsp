<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<jsp:include page="header.jsp"></jsp:include>
<script type="text/javascript">
	function fn_OnClickRegProduct(){
			$.ajax({
				url : "/product/insertProduct", //클라이언트가 http 요청을 보낼 서버의 주소
				type : "POST", //http 요청 방식
				data : $('#frmProduct').serialize(), //frm 폼의 객체들를 한번에 받음
				async : false,
				success : function(result) { //응답이 성공일 때 호출
					alert("등록되었습니다.");
					$.ajax({
						url : "/product/historyProduct",
						type : "POST",
						data : $('#frmProduct').serialize(), //frm 폼의 객체들를 한번에 받음
						async : false,
						success : function(result){
						}
					});
					location.href="/product/product";
				}
			});
	}
</script>
    <body>
            <div id="layoutSidenav_content">
                <main>
                <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-7">
                        <div class="card shadow-lg border-0 rounded-lg mt-5">
                            <div class="card-header"><h3 class="text-center font-weight-light my-4">새 상품 등록</h3></div>
                            <div class="card-body">
                                <form id="frmProduct" onsubmit="return false;">
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="proNm" name="proNm" type="text"/>
                                        <label for="proNm">상품명</label>
                                    </div>
                                    <div class="form-floating mb-3">
	                                    <input class="form-control" id="proPrice" name="proPrice" type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
	                                    <label for="proPrice">상품가격</label>
	                                </div>	
                                    <div class="mt-4 mb-0">
                                        <div class="d-grid"><a class="btn btn-primary btn-block" href="javascript:void(0);" onclick="fn_OnClickRegProduct();">등록하기</a></div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                </main>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="../resource/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="../resource/assets/demo/chart-area-demo.js"></script>
        <script src="../resource/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="../resource/js/datatables-simple-demo.js"></script>
    </body>
</html>
