<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../includes/user_header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
  <div class="row bg-white">
      <div class="col-lg-12">
          <h3 class="page-header">검색하신 상품 :<c:out value="${pageMaker.cri.keyword}"/></h3>
      </div>
      <!-- /.col-lg-12 -->
  </div>
  <style>
  table {
    width: 100%;
    border-top: 1px solid #e7e7e7;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #e7e7e7;
    padding: 10px;
  }

</style>
  <!-- /.row -->
  <div class="row bg-white">
      <div class="col-lg-12">
          <div class="panel panel-default">              
              <!-- /.panel-heading -->
              <div class="panel-body">
<div class="list_search_result">
					<table class="type_list" >
						<colgroup>
							<col width="110">
							<col width="*">
							<col width="120">
							<col width="120">
							<col width="120">
						</colgroup>
						<tbody id="searchList>">
							<c:forEach items="${list}" var="product">
								<tr>
									<td class="image">
										<img src="<spring:url value='/img/${product.product_no}.jpg'/>" />
	
									</td>
									<td class="detail">
										<div class="title">
											<a style="color:black" class='move' href='/product/get?product_no=<c:out value="${product.product_no}"/>'><c:out value="${product.product_name}" /></a>
										</div>
										<div class="point">
										
										</div>
										<div class="price">
											<c:out value="${product.real_price}"/>
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>					
					</table>
				</div>                       
				

					 <div class='pull-right'>
							<ul class="pagination" style="font-size:40px" >
								<c:if test="${pageMaker.prev}">
				              		<li class="paginate_button previous"><a class="page-link" href="/product/list?pageNum=${pageMaker.startPage -1}&amount=${pageMaker.cri.amount}">Previous</a>
				              		</li>
				            	</c:if>
				
					            <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
					              	<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":""}"><a class="page-link" href="/product/list?type=${pageMaker.cri.type}&keyword=${pageMaker.cri.keyword }&pageNum=${num}&amount=${pageMaker.cri.amount}">${num}</a></li>
					            </c:forEach>
				
					            <c:if test="${pageMaker.next}">
					              	<li class="paginate_button next"><a class="page-link" href="/product/list?pageNum=${pageMaker.endPage +1 }&amount=${pageMaker.cri.amount}">Next</a></li>
					            </c:if>
					  		</ul>
					  </div>

					 </div>




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


<%@include file="../includes/footer.jsp" %>
   