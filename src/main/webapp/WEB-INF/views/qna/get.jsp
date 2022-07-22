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
				<h2 align="center" class="page-header">QNA 조회</h2>
				
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
								<input class="form-control" name='qna_no' value='<c:out value="${qna.qna_no }"/>' readonly="readonly">
							</div>
						
							<div class="form-group">
								<label>제목</label> 
								<input class="form-control" name='title' value='<c:out value="${qna.title }"/>' readonly="readonly">
							</div>

							<div class="form-group">
								<label>작성자</label> 
								<input class="form-control" name='member_id' value='<c:out value="${qna.member_id }"/>' readonly="readonly">
							</div>

							<div class="mb-3">
								<label class="form-label">내용</label>
								<textarea class="form-control" name='content' rows="8" readonly="readonly"><c:out value="${qna.content }" /> </textarea>	
							</div>
							
							<br>
							<div class="mx-auto" align="right">
								<button data-oper='modify' class="btn btn-outline-success">수정</button>
								<button data-oper='list' class="btn btn-outline-secondary">목록</button>
							</div>
							<form id='operForm' action="/qna/modify" method="get">
								<input type='hidden' id='qna_no' name='qna_no' value='<c:out value="${qna.qna_no }"/>'>
							<br>
							</form>
							</div>

					</div>
				</div>
			</div>
			
					         <form id="operForm" action="/qna/modify" method="get">
		         	<input type="hidden" id="qna_no" name="qna_no" value='<c:out value="${qna.qna_no }"/>'>
		         	<input type="hidden" id="pageNum" name="pageNum" value='<c:out value="${cri.pageNum }"/>'>
		         	<input type="hidden" id="amount" name="amount" value='<c:out value="${cri.amount }"/>'>
							</form>
							
	<script type="text/javascript">
	$(document).ready(function(){
		
		var operForm = $("#operForm");
		
		$("button[data-oper='modify']").on("click", function(e){
			
			operForm.attr("action", "/qna/modify").submit();
			
		});
		
		$("button[data-oper='list']").on("click", function(e){
			
			operForm.find("#qna_no").remove();
			operForm.attr("action", "/qna/list")
			operForm.submit();
			
		});
		
	});
	
	</script>



</body>

<%@ include file="./includes/footer.jsp"%>
</html>