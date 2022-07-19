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
		<div class="col-lg_12">
			<h1 class="page-header">리뷰 등록</h1>
		</div>
	</div>
	
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
			
				<div class="panel-heading">리뷰 등록</div>
				
				<div class="panel-body">
					<form role = "form" action ="/review/register" method="post">
						<div class="form-group">
							<label>점수</label> <input class="form-control" name='score'>
						</div>
						
						<div class="form-group">
							<label> text area </label>
							<textarea class="form-control" rows="3" name='reply'></textarea>
							
						</div>
						
						<button type="submit" class="btn btn-default">submit button</button>
						<button type="reset" class="btn btn-default">reset button</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<%@ include file="../includes/footer.jsp" %>
</html>