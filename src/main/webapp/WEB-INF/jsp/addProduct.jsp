<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<jsp:include page="header.jsp"></jsp:include>
<script type="text/javascript">
function fn_onClickAdd() {
	$.ajax({
		url : "/product/productExist",
		type : "POST",
		data : $('#frmAddProduct').serialize(),
		success : function(result){
			if(result == null) {
				alert("등록되지 않은 상품입니다.\n상품등록을 먼저 해주세요.");
				location.href="/product/addProduct";
			}else {
				$.ajax({
					url : "/product/addProduct",
					type : "POST",
					data : $('#frmAddProduct').serialize(),
					success : function(result){
						alert("추가되었습니다.");
						location.href="/product/product";
						$.ajax({
							url : "/product/historyProduct",
							type : "POST",
							data : $('#frmAddProduct').serialize(),
							success : function(result){
							}
						});
					}
				});
			}
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
				            <div class="card-header"><h3 class="text-center font-weight-light my-4">상품 추가</h3></div>
				            <div class="card-body">
				                <form id="frmAddProduct" onsubmit="return false;">
				                    <div class="form-floating mb-3">
				                        <input class="form-control" id="proNm" name="proNm" type="text"/>
				                        <label for="proNm">상품명</label>
				                    </div>
				                    <div class="form-floating mb-3">
				                        <input class="form-control" id="proIn" name="proIn" type="text" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"/>
				                        <label for="proIn">추가수량</label>
				                    </div>	
				                    <div class="mt-4 mb-0">
				                        <div class="d-grid"><a class="btn btn-primary btn-block" href="javascript:void(0);" onclick="fn_onClickAdd();">추가하기</a></div>
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