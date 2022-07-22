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
				<h2 align="center" class="page-header">공지사항</h2>
				
			</div>
			<!-- /col-lg-12 -->
		</div>
		<!-- /row -->
		<div class="col-6 mx-auto">
			<div class="container-fluid">
				<div class="panel panel-default">

					<!-- /panel-heading -->
					<div class="m-5">				
							
							<div class="form-group">
								<label>글번호</label> 
								<input class="form-control" name='notice_no' value='<c:out value="${notice.notice_no }"/>' readonly="readonly">
							</div>
						
							<div class="form-group">
								<label>제목</label> 
								<input class="form-control" name='title' value='<c:out value="${notice.title }"/>' readonly="readonly">
							</div>

							<div class="mb-3">
								<label class="form-label">내용</label>
								<textarea class="form-control" name='content' rows="8" readonly="readonly"><c:out value="${notice.content }" /> </textarea>	
							</div>
							
							<br>
							
							<form id='operForm' action="/notice/modify" method="get">
								<input type='hidden' id='notice_no' name='notice_no' value='<c:out value="${notice.notice_no }"/>'>
							<br>
							</form>
							</div>

					</div>
				</div>
			</div>
			
					         <form id="operForm" action="/qna/modify" method="get">
		         	<input type="hidden" id="notice_no" name="notice_no" value='<c:out value="${notice.notice_no }"/>'>
							</form>
							
	<script type="text/javascript">
	$(document).ready(function(){
		
		var operForm = $("#operForm");
		
		$("button[data-oper='modify']").on("click", function(e){
			
			operForm.attr("action", "/notice/modify").submit();
			
		});
		
		$("button[data-oper='list']").on("click", function(e){
			
			operForm.find("#notice_no").remove();
			operForm.attr("action", "/notice/list")
			operForm.submit();
			
		});
		
	});
	
	</script>



</body>

<%@ include file="./includes/footer.jsp"%>
</html>