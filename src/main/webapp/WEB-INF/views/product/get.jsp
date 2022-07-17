<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
    <%@ include file="../includes/user_header.jsp" %>
    <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<style>

</style>
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
                        <p>별점 평균 위치는 고민중입니다.</p>
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
                                    aria-selected="false">Reviews <span>(1)</span></a>
									<div class="reply_subject">
										<h2>리뷰</h2>									                      
 <!--                        <c:if test="${member != null }"> -->									             
										
									</div> 
<!--					</c:if>	-->                                    
                            </li>
                        </ul>
                     </div>
                </div>
                <ul>
					<c:forEach items="${review}" var="review">
					<li>
						<div>
							<p>${review.member_id} / <fmt:formatDate value="${review.regdate}" pattern="yyyy-MM-dd" /></p>
							<p>${review.reply }</p>
						</div>
					</li>	
					</c:forEach>
				</ul>
			</div>
				<div>
				
					<form method="GET" action="/review/write">
					
						<p>
							<label>댓글 작성자</label> <input type="text" name="writer">
						</p>
						<p>
							<textarea rows="5" cols="50" name="content"></textarea>
						</p>
						<p>
							<input type="hidden" name="product_no" value="${product.product_no}">
							<button type="submit">댓글 작성</button>
						</p>
					</form>
					
				</div>
           
        </div>
    </section>
	
	<form id="infoForm" action="/product/modify" method="get">
		<input type="hidden" id="name" name="name" value='<c:out value="${pageInfo.product_no}"/>'>
	</form>
<script type="text/javascript" src="/resources/js/reply.js"></script>

<script>

</script>
</body>
<%@ include file="../includes/footer.jsp" %>
</html>