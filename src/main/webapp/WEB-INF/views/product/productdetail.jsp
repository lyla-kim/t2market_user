<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<%@ include file="../includes/user_header.jsp" %>
</head>
<body>
   <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
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
                        <h3>상품의 이름이 보여지는 곳</h3>                       
                        <div class="product__details__price">이 제품의 가격은?</div>
                        <p>제품 상세 정보</p>
                        <div class="product__details__quantity">
						<a href="#" class="primary-btn">장바구니</a> 

                        </div>
                       
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">Reviews <span>(1)</span></a>
                            </li>
                        </ul>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->
</body>
<%@ include file="../includes/footer.jsp" %>
</html>