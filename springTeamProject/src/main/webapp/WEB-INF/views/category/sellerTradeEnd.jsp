<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trading End</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript">
function check(){
	if($("#pd_status").val() == ""){
		//form.ps_status.focus(); 포커스 안됨
		alert("유형을 선택해주세요");
		return false;
	}else if($("#pd_status").val() == 3){
		$("#modal_report").fadeIn();
		$("#modal_trade_content").hide("trade");
		$("#modal_TradingEnd").toggle();
		return false;
	}else{
		alert("거래가 완료되었습니다");
		$("#modal_trade_content").hide("trade");
		$("#modal_TradingEnd").toggle();
		return true;
	}
};
$("#cancel").click(function(){
	$("#modal_trade_content").hide("trade");
	$("#modal_TradingEnd").toggle();
});

</script>
</head>
<body>
<form name="form" class="trade_form" method="post" 
onsubmit="return check()" action="postTrade2">
	<select name="pd_status" id="pd_status" class="form-select form-select-sm" aria-label=".form-select-sm example">
			<option value="">유형선택</option>
			<option value="2">정상거래완료</option>
			<option value="3">사기거래신고</option>
	</select>
	<input type="hidden" value="${detail.user_id }" name="user_id_sell">
	<input type="hidden" value="${mem.user_id }" name="user_id_buy">
	<input type="hidden" value="${detail.product_id }" name="product_id">
	
	<button class="btn btn-primary">확인</button>
	<button type="button" id="cancel" class="btn btn-primary">취소</button>
</form>
</body>
</html>