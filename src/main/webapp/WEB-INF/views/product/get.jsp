<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    
    
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="/resources/js/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script type="text/javascript" src="/resources/js/reply.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<meta charset="UTF-8">
<style>
<style>
  table {
    width: 100%;
    border-top: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border-bottom: 1px solid #444444;
    border-left: 1px solid #444444;
    padding: 10px;
  }
  th:first-child, td:first-child {
    border-left: none;
  }
</style>
<%@ include file="../includes/user_header.jsp" %>

</head>

<body>
<section class="product-details spad bg-white">
        <div class="container" >
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img class="product__details__pic__item--large"
                                src="<spring:url value='/img/${pageInfo.product_no}.jpg'/>" alt="">
                        </div>
                        <div class="product__details__pic__slider owl-carousel">
                            <img data-imgbigurl="<spring:url value='/img/${pageInfo.product_no}(2).jpg'/>"
                                src="<spring:url value='/img/${pageInfo.product_no}(2).jpg'/>" alt="">
                            <img data-imgbigurl="<spring:url value='/img/${pageInfo.product_no}(3).jpg'/>"
                                src="<spring:url value='/img/${pageInfo.product_no}(3).jpg'/>" alt="">
                            <img data-imgbigurl="<spring:url value='/img/${pageInfo.product_no}(4).jpg'/>"
                                src="<spring:url value='/img/${pageInfo.product_no}(4).jpg'/>" alt="">
                            <img data-imgbigurl="<spring:url value='/img/${pageInfo.product_no}.jpg'/>"
                                src="<spring:url value='/img/${pageInfo.product_no}.jpg'/>" alt="">
                        </div>
                    </div>
                </div>               
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3><c:out value="${pageInfo.name}"/></h3>                       
                        <div class="product__details__price"><c:out value="${pageInfo.real_price}"/>원</div>
                        <p><span style="font-size:25px">평균 평점 : <%= request.getAttribute("avg") %></span></p>
                        <p><c:out value="${pageInfo.explain}"/></p> 
                        
                    </div>
                </div>
                <div class="product__details__quantity" style="flex: 0 0 90%;">
                
					<a href="#" class="primary-btn" style="float:right;height: 85px;width: 200px;font-size: 30px;text-align: center;padding: 20px 0;">장바구니</a>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">Reviews</a>
<!--                        <c:if test="${member != null }"> -->
<!--					</c:if>	-->  							
                            </li>
                        </ul>
                     </div>
                </div>
				<form action='review.jsp' style="margin-left: 1000px; margin-bottom: 10px; font-size:25px;  ">
				
 				  <input type='button' value='리뷰쓰기' style="background-color: #7fad39; color:#ffffff; border-color:#ffffff; height:70px" onclick="location.href='/product/write?product_no=<c:out value="${pageInfo.product_no}" />'" >
 				  
				</form>
                <table style="font-size: 30px;">
                	<thead>
                		<tr>
                			<th style="width:200px">작성자</th>
                			<th style="width:750px">한줄평</th>
                			<th>작성일</th>
                		</tr>
                	</thead>
                	<tbody>
                		<c:forEach items="${review}" var="review">
                			<tr>
                				<td>${review.member_id}</td>
                				<td>
                				<a style="color:black" class='move' href='/product/review?product_no=<c:out value="${review.product_no}"/>&review_no=<c:out value="${review.review_no}"/>'>
                				<c:out value="${review.reply}" /></a>                				
                				</td>                				
                				<td><fmt:formatDate value="${review.regdate}" pattern="yyyy-MM-dd" /></td>
                			</tr>
                		</c:forEach>	
                	</tbody>
                </table>
      		</div>
          
        </div>
        
        
    </section>
<script>

</script>
<!-- 덧글 작성 모달 끝 -->
</body>
<%@ include file="../includes/footer.jsp" %>
</html>