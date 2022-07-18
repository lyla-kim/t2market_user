<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="./includes/user_header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title></title>


</head>
<body class="bg-white">
		<div class="row bg-white">
			<div class="col-lg-12">
				<h2 align="center" class="page-header">QNA 등록</h2>
				
			</div>
			<!-- /col-lg-12 -->
		</div>
		<!-- /row -->
		<div class="col-6 mx-auto">
			<div class="container-fluid">
				<div class="panel panel-default">

					<!-- /panel-heading -->
					<div class="m-5">
						<form role="form" action="/qna/register" method="post">
							<div class="form-group">
								<label>제목</label> 
								<input class="form-control" name='title'>
							</div>

							<div class="form-group">
								<label>작성자</label> <input class="form-control" name='member_id'>
							</div>

							<div class="mb-3">
								<label class="form-label">내용</label>
								<textarea class="form-control" name='content' rows="8"></textarea>	
							</div>
							
							<br>
							<div class="mx-auto" align="right">
								<button type="submit" class="btn btn-outline-success">저장</button>
								<button type="button" onclick = "location.href='/qna/list'" class="btn btn-outline-secondary">목록</button>
							</div>
							<br>
							</form>
							</div>

					</div>
				</div>
			</div>



</body>

<%@ include file="./includes/footer.jsp"%>
</html>