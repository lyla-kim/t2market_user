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
<%@ include file="../includes/user_header.jsp" %>
</head>

<body>
<div class="main bg-white">
<h3>리뷰 자세히 보기</h3>
<br><br>
<table style="font-size: 30px;">
<thead>
  		<tr>
  			<th style="width:200px">작성자</th>
		<th style="width:750px">한줄평</th>
		<th style="width:200px">평점</th>
		<th>작성일</th>
	</tr>
</thead>
<tbody>
		<tr>
			<td>${review.member_id}</td>
			<td>
			<c:out value="${review.reply}" />
			</td>        
			<td>${review.score}</td>  				
			<td><fmt:formatDate value="${review.regdate}" pattern="yyyy-MM-dd" /></td>
		</tr>
		
	</tbody>	
</table>

<a href="/product/delete?review_no=${review.review_no}" role="button" class="btn btn__btn">삭제</a>				
<a href="/product/get?product_no=${review.product_no}" role="button" class="btn btn__btn">목록</a>

</div>




</body>
<%@ include file="../includes/footer.jsp" %>
</html>