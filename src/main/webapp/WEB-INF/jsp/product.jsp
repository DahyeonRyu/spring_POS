<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="header.jsp"></jsp:include>
<script type="text/javascript">
	$(function(){
		$("#cashForm").hide();
	})
	function fn_onClickSale() {
		$.ajax({
			url : "/",
			type : "POST",
			data : $('#frmProduct').serialize(),
			success : function(result){
				alert("판매되었습니다.");
				location.href="/product/product";
			}
		});
	}
	function fn_cardSale() {
		$.ajax({
			url : "/sale/insertSale",
			type : "POST",
			data : $('#frmProduct').serialize(),
			success : function(result){
				$.ajax({
					url : "/sale/updateSale",
					type : "POST",
					data : $('#frmProduct').serialize(),
					success : function(result){
					}
				});
				alert("판매되었습니다.");
				location.href="/product/product";
			}
		});
	}
	function fn_cashSale() {
		$("#cashForm").show();
	}
	

</script>
<body>
<div id="layoutSidenav_content">
<main>
<div class="container-fluid px-4">
        <h1 class="mt-4">POS</h1>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item active">Point Of Sale</li>
        </ol>
        <div class="row">
        	<div class= "col-xl-3 col-md-6">
	        	<form id="frmProduct">
		        	<div class="form-floating mb-3">
						<input class="form-control" id="proNm" name="proNm" type="text" />
						<label for="proNm">상품명</label>
					</div>	
					<div class="form-floating mb-3">
						<input class="form-control" id="proOut" name="proOut" type="text" />
						<label for="proOut">판매수량</label>
					</div>
				</form>

				<!--
				<div class="card amount text-dark mb-4">
					<a class="btn btn-primary btn-block" onclick="fn_onClickCheck();">완료</a>
				</div>

				<div id="amount" class="form-floating mb-3">
					<input class="form-control" type="text" />
					<label for="amount">총금액</label>
				</div>
				-->
				
        	</div>
        	<div class="col-xl-3 col-md-6">
	            <div class="card bg-warning text-white mb-4 align-items-center justify-content-between">
	                <div class="card-body">카드</div>
	                <div class="card-footer d-flex align-items-center justify-content-between">
	                    <a class="small text-white stretched-link" href="javascript:void(0)" onclick="fn_cardSale();"></a>
	                </div>
	            </div>
	        </div>	
	        <div class="col-xl-3 col-md-6">
                <div class="card bg-success text-white mb-4 align-items-center justify-content-between">
                    <div class="card-body">현금</div>
                    <div class="card-footer d-flex align-items-center justify-content-between">
                        <a class="small text-white stretched-link" href="javascript:void(0)" onclick="fn_cashSale();"></a>
                    </div>
                </div>
            </div>
            <div class= "col-xl-3 col-md-6">
        	<form id="cashForm">
	        	<div class="form-floating mb-3">
					<input class="form-control" id="recMoney" name="recMoney" type="text" />
					<label for="recMoney">받은돈</label>
				</div>	
				<div id="chgMoney" class="form-floating mb-3">
					<input class="form-control" type="text" />
					<label for="chgMoney">거스름돈</label>
					<div class="mt-4 mb-0">
                    <div class="d-grid"><a class="btn btn-primary btn-block" href="javascript:void(0);" onclick="fn_OnClickRegProduct();">계산하기</a></div>
                    </div>
                </div>
        	</form>
    	</div>
        	</div>
        </div>
        <div class="row">
        <div class="card mb-4">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            상품 목록
        </div>
        <div class="card-body">
            <table id="datatablesSimple">
                <thead>
                    <tr>
	                    <th>상품명</th>
	                    <th>가격</th>
	                    <th>현재수량</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>상품명</th>
                        <th>가격</th>
                        <th>현재수량</th>
                    </tr>
                </tfoot>
                <tbody>
                <c:forEach items="${proList}" var="proList">
                	<tr>
                		<td><c:out value="${proList.proNm}"/></td>
                		<td><fmt:formatNumber value="${proList.proPrice}" pattern="#,###" /></td>
                		<td><c:out value="${proList.curAc}"/></td>
                	</tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
</main>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="../resource/js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="../resource/assets/demo/chart-area-demo.js"></script>
<script src="../resource/assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="../resource/js/datatables-simple-demo.js"></script>
</body>
</html>

