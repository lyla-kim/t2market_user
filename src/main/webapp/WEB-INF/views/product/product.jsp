<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../includes/user_header.jsp" %>
</head>
<body>

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-9 col-md-7">
                    <div class="filter__item">
                        <div class="row">
                            <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                    <h6> <c:out value="${product.name }"></c:out> </h6>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <table class="table table-striped table-bordered table-hover">
                    	<thead>
                    		<tr>
                    			<th>번호</th>
                    			<th>이름</th>
                    			<th>설명</th>
                    			<th>코드번호</th>
                    			<th>코드번호 2</th>
                    		</tr>
                    	</thead>
                    	
                    	<c:forEach items="${list }" var="product">
                    		<tr>
                    			<td><c:out value="${product.product_no }"/></td>
                    			<td><c:out value="${product.name }"/></td>
                    			<td><c:out value="${product.explain }"/></td>
                    			<td><c:out value="${product.code1 }"/></td>
                    			<td><c:out value="${product.code2 }"/></td>
                    		</tr>
                    	
                    	</c:forEach>
                    </table>
                    <div class="product__pagination">
                    	<ul class="pagination">
								<c:if test="${pageMaker.prev}">
				              		<li class="paginate_button previous"><a href="${pageMaker.startPage -1}">Previous</a>
				              		</li>
				            	</c:if>
				
					            <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
					              	<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":""}">
					              	<a href="${num}">${num}</a></li>
					            </c:forEach>
				
					            <c:if test="${pageMaker.next}">
					              	<li class="paginate_button next"><a href="${pageMaker.endPage +1 }">Next</a></li>
					            </c:if>
					  		</ul>
                    
                        <i class="fa fa-long-arrow-right"></i>
                    </div>
                    <form id='actionForm' action="/board/list" method='get'>
						<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
						<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>	

						<input type='hidden' name='type' value='<c:out value="${ pageMaker.cri.type }"/>'> 
						<input type='hidden' name='keyword' value='<c:out value="${ pageMaker.cri.keyword }"/>'>	
					</form>
					
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->
</body>
<%@ include file="../includes/footer.jsp" %>
</html>