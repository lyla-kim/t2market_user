<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
    <%@ include file="../includes/user_header.jsp" %>
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
                                src="/resources/img/product/details/product-details-1.jpg" alt="">
                        </div>
                        <div class="product__details__pic__slider owl-carousel">
                            <img data-imgbigurl="/resources/img/product/details/product-details-2.jpg"
                                src="/resources/img/product/details/thumb-1.jpg" alt="">
                            <img data-imgbigurl="/resources/img/product/details/product-details-3.jpg"
                                src="/resources/img/product/details/thumb-2.jpg" alt="">
                            <img data-imgbigurl="/resources/img/product/details/product-details-5.jpg"
                                src="/resources/img/product/details/thumb-3.jpg" alt="">
                            <img data-imgbigurl="/resources/img/product/details/product-details-4.jpg"
                                src="/resources/img/product/details/thumb-4.jpg" alt="">
                        </div>
                    </div>
                </div>               
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3><c:out value="${pageInfo.name}"/></h3>                       
                        <div class="product__details__price"><c:out value="${pageInfo.sell_price}"/></div>
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
                            </li>
                        </ul>
 <!--                        <c:if test="${member != null }"> -->
						<div class="reply_button_wrap">
							<button>리뷰 쓰기</button>
						</div>
<!--					</c:if>	-->
                    </div>
                </div>
            </div>
        </div>
    </section>
	
	<form id="infoForm" action="/product/modify" method="get">
		<input type="hidden" id="name" name="name" value='<c:out value="${pageInfo.product_no}"/>'>
	</form>
<script>
	let form = $("#infoForm");
	
	$("#list_btn").on("click", function(e){
		form.find("#product_no").remove();
		form.attr("action", "/product/list");
		form.submit();
	});
	
	$("#modify_btn").on("click", function(e){
		form.attr("action", "/product/modify");
		form.submit();
	});	
	
	/* 리뷰 쓰기 */
	$(".reply_botton_wrap").on("click",function(e){
		
		e.preventDefault();
		
		const memberId = '${member.memberId}';
		const bookId = '${goodsInfo.bookId}';

		let popUrl = "/replyEnroll/" + memberId + "?bookId=" + bookId;
		console.log(popUrl);
		let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes";
		
		window.open(popUrl,"리뷰 쓰기",popOption);
	})
</script>	
</body>
<%@ include file="../includes/footer.jsp" %>
</html>