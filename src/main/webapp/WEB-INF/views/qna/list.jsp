<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="./includes/user_header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title></title>


</head>
<body>


	<div class="bg-white">

		<h3 align="center">QNA 게시판</h3>
		<br> <br>
			
		<div class="col-10 mx-auto">
			<div class="container-fluid">
				<table cellspacing="0" border="1" summary="게시판의 글제목 리스트"
					class="tbl_type">
					<caption>게시판 리스트</caption>
				<div class="panel-heading" align="right">
                  <button type="button" class="btn btn-outline-primary" id="regBtn">
                  	글작성
                  </button>	
				</div>
				<br>
              		
					<thead align="center">
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성날짜</th>
							<th>수정날짜</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list }" var="qna">
							<tr>
								<td><c:out value="${qna.qna_no }" /></td>
								<td><c:out value="${qna.title }" /></td>
								<td><c:out value="${qna.member_id }" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${qna.regdate }" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${qna.updatedate }" /></td>
							</tr>
						</c:forEach>
					</tbody>


				</table>
				
				<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="myModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       처리가 완료되었습니다.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</div>

			</div>

	<br>
	<br>
	<br>
	<br>
</div>
</body>

<script type="text/javascript">
	$(document).ready(function() {
		var result = '<c:out value="${result}" />';
		checkModal(result);
		
		history.replaceState({}, null, null);
		
		function checkModal(result){
			if(result===''){
				return;
			}
			
			if(parseInt(result)>0){
				$(".modal-body").html("게시글 "+ parseInt(result) + " 번이 등록되었습니다.");
			}
			
			$("#myModal").modal("show");
		}
		
		$("#regBtn").on("click", function(){
			self.location = "/qna/register";
		});
		
	});
	</script>

<%@ include file="./includes/footer.jsp"%>
</html>