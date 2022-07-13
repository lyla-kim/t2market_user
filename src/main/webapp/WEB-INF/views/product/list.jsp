<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../includes/user_header.jsp" %>

  <div class="row">
      <div class="col-lg-12">
          <h1 class="page-header">Tables</h1>
      </div>
      <!-- /.col-lg-12 -->
  </div>
  <!-- /.row -->
  <div class="row">
      <div class="col-lg-12">
          <div class="panel panel-default">
              <div class="panel-heading">
                  Board List Page
                  <button id='regBtn' type="button" class="btn btn-xs pull-right">
                  	Register New Board
                  </button>
              </div>
              <!-- /.panel-heading -->
              <div class="panel-body">
                  <table class="table table-striped table-bordered table-hover">
                      <thead>
                          <tr>
                              <th>#번호</th>
                              <th>제목</th>
                              <th>작성자</th>
                              <th>작성일</th>
                              <th>수정일</th>
                          </tr>
                      </thead>
                      <c:forEach items="${list}" var="product">
							<tr>
								<td><c:out value="${product.product_no}" /></td>		
							<td>
								<a class='move' href='/product/get?product_no=<c:out value="${product.product_no}"/>'><c:out value="${product.name}" />
								
								</a>
							</td>
							
							<td><c:out value="${product.explain}" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${product.regdate}" /></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd" value="${product.updatedate}" /></td>
							</tr>
						</c:forEach> 
                      </table>

   <form id='searchForm' action="/product/list" method='get'>
 
      <input  type='text' name='keyword' value='<c:out value="${pageMaker.cri.keyword}"/>' /> 
      <input  type='hidden' name='pageNum' value='<c:out value="${pageMaker.cri.pageNum}"/>' /> 
      <input  type='hidden' name='amount' value='<c:out value="${pageMaker.cri.amount}"/>' />
      <input  type='hidden' name='type' value='T' />
      <button class='btn btn-default'>Search</button>
   </form>

					 <div class='pull-right'>
							<ul class="pagination">
								<c:if test="${pageMaker.prev}">
				              		<li class="paginate_button previous"><a href="/product/list?pageNum=${pageMaker.startPage -1}&amount=${pageMaker.cri.amount}">Previous</a>
				              		</li>
				            	</c:if>
				
					            <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
					              	<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":""}"><a href="/product/list?type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword }&pageNum=${num}&amount=${pageMaker.cri.amount}">${num}</a></li>
					            </c:forEach>
				
					            <c:if test="${pageMaker.next}">
					              	<li class="paginate_button next"><a href="/product/list?pageNum=${pageMaker.endPage +1 }&amount=${pageMaker.cri.amount}">Next</a></li>
					            </c:if>
					  		</ul>
					  </div>

					 </div>

					 <form id='actionForm' action="/product/list" method='get'>
						<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
						<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>	

						<input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type }"/>'> 
						<input type='hidden' name='keyword' value='<c:out value="${ pageMaker.cri.keyword }"/>'>	
					</form>


					<!-- /.modal -->

                  </div>
                  <!-- /.table-responsive -->
              </div>
              <!-- /.panel-body -->
          </div>
          <!-- /.panel -->
      </div>
      <!-- /.col-lg-6 -->
  <!-- /.row -->   
   
<script type="text/javascript">
	$(document).ready(function() {
		var result = '<c:out value="${result}" />';
		checkModal(result);
		
		history.replaceState({}, null, null);
		
		$("#regBtn").on("click", function(){
			self.location = "/product/register";
		});
		
		var actionForm = $("#actionForm");

		$(".paginate_button a").on("click", function(e) {
			
			e.preventDefault();
			console.log('click');

			actionForm.find("input[name='pageNum']").val($(this).attr("href"));
			actionForm.submit();
		});
		
		$(".move").on("click", function(e) {

			e.preventDefault();
			actionForm.append("<input type='hidden' name='name' value='"+ $(this).attr("href") + "'>");
			actionForm.attr("action", "/product/get");
			actionForm.submit();

		});
		
		var searchForm = $("#searchForm");

		$("#searchForm button").on("click", function(e) {
			if (!searchForm.find("option:selected").val()) {
				alert("검색종류를 선택하세요");
				return false;
			}

			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하세요");
				return false;
			}
			
			searchForm.find("input[name='pageNum']").val("1");
			e.preventDefault();

			searchForm.submit();

		});
	});
</script>

<%@include file="../includes/footer.jsp" %>
   