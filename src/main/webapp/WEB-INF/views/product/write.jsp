<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/resources/js/jquery-3.3.1.min.js"></script>
<meta charset="UTF-8">
<style>

</style>
<%@ include file="../includes/user_header.jsp" %>
</head>

<body>
 <div class="admin_content_main bg-white" style="font-size:25px;" >
		
		<form action='<c:url value='/product/reviewInsert'/>' method="post">
			<fieldset>
				<span class="text-bold">별점을 선택해주세요</span>
				<input type="radio" name="score" value="5" id="rate1"><label
					for="rate1">★★★★★</label>
				<input type="radio" name="score" value="4" id="rate2"><label
					for="rate2">★★★★</label>
				<input type="radio" name="score" value="3" id="rate3"><label
					for="rate3">★★★</label>
				<input type="radio" name="score" value="2" id="rate4"><label
					for="rate4">★★</label>
				<input type="radio" name="score" value="1" id="rate5"><label
					for="rate5">★</label>
			</fieldset>		
		
			<div class="form_section">
				<div class="form_section_title">
					<span>후기 작성</span><br>
					<input type="hidden"  name="product_no" value="${pageInfo.product_no}" >
					<textarea class="reply" name="reply"></textarea>
				</div>
			</div>
			<div class="btn_section">
				<button type='button' class="btn">취 소</button>
	 			<button type='submit' class="btn enroll_btn">등 록</button>
	 		</div> 
	 	</form>
</div>


</body>
<%@ include file="../includes/footer.jsp" %>
</html>