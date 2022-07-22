<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ include file="../includes/user_header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="row">
	<div class="col-lg-12">
		<table>
			<thead>
				<tr>
					<th>작성자</th>
					<th>리뷰</th>
					<th>작성일</th>
				</tr>
			</thead>
			
			<c:forEach items="${list }" var="review">
				<tr>
					<td><c:out value="${review.member_id }"/></td>
					<td><c:out value="${review.reply }"/></td>
					<td><fmt:formatDate pattern="yyyy-MM-dd" value="${review.regdate }"/></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>
</body>
<%@ include file="../includes/footer.jsp" %>
</html>