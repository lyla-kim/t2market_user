<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  <style>
<style type="text/css">
.input_wrap{
	padding: 5px 20px;
}
label{
    display: block;
    margin: 10px 0;
    font-size: 20px;	
}
input{
	padding: 5px;
    font-size: 17px;
}
textarea{
	width: 800px;
    height: 200px;
    font-size: 15px;
    padding: 10px;
}
.btn{
  	display: inline-block;
    font-size: 22px;
    padding: 6px 12px;
    background-color: #fff;
    border: 1px solid #ddd;
    font-weight: 600;
    width: 140px;
    height: 41px;
    line-height: 39px;
    text-align : center;
    margin-left : 30px;
    cursor : pointer;
}
.btn_wrap{
	padding-left : 80px;
	margin-top : 50px;
}
</style>
</head>
<body>
<h1>조회 페이지</h1>

	<div class="input_wrap">
		<label>상품명</label>
		<input name="title" readonly="readonly" value='<c:out value="${pageInfo.product_no}"/>' >
	</div>
	<div class="input_wrap">
		<label>상품명</label>
		<input name="title" readonly="readonly" value='<c:out value="${pageInfo.name}"/>' >
	</div>
	<div class="input_wrap">
		<label>상품 가격</label>
		<textarea rows="3" name="content" readonly="readonly"><c:out value="${pageInfo.sell_price}"/></textarea>
	</div>
	<div class="input_wrap">
		<label>상품 설명</label>
		<input name="writer" readonly="readonly" value='<c:out value="${pageInfo.explain}"/>' >
	</div>
		
	<div class="btn_wrap">
		<a class="btn" href="" id="list_btn">장바구니 담기</a> 
		
	</div>
	<form id="infoForm" action="/product/modify" method="get">
		<input type="hidden" id="name" name="name" value='<c:out value="${pageInfo.product_no}"/>'>
	</form>
<script>
	let form = $("#infoForm");
	
	$("#list_btn").on("click", function(e){
		form.find("#product_no").remove();
		form.attr("action", "/product/list");
		form.submit();
	});
	
	$("#modify_btn").on("click", function(e){
		form.attr("action", "/product/modify");
		form.submit();
	});	
</script>	
</body>
</html>