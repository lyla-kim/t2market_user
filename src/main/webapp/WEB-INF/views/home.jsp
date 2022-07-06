<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>ProjEx</title>
	<%@ include file="./includes/user_header.jsp" %>
</head>
<style>
.hero__categories ul li a {line-height:36px;}
</style>
<body>

			<div id="header__menu__fix" class="col-lg-6">
                    <nav class="header__menu">
                        <ul class="header__menu__list">
                            <li><a href="/shop-grid.do">신상품</a></li>
                            <li><a href="/shop-grid.do">추천상품</a></li>
                        </ul>
                        <div class="hero__search">
	                        <div class="hero__search__form">
	                            <form action="#">
	                                <div class="hero__search__categories">
	                                    상품명 검색                                    
	                                </div>
	                                <input type="text" placeholder="찾으시는 제품명을 입력해주세요">
	                                <button type="submit" class="site-btn">검색</button>
	                            </form>
	                        </div>
                   		</div>
                   		<ul>
                   			<li><a href="#" style="font-size:43; margin-left:15px"><i class="fa fa-shopping-bag"></i> </a></li>
                   		</ul>
                    </nav>
                </div>

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>카테고리</span>
                        </div>
                        <ul>
                            <li><a href="#">채소</a></li>
                            <li><a href="#">과일</a></li>
                            <li><a href="#">견과</a></li>
                            <li><a href="#">수산</a></li>
                            <li><a href="#">정육</a></li>
                            <li><a href="#">반찬</a></li>
                            <li><a href="#">간편식</a></li>
                            <li><a href="#">음료</a></li>
                            <li><a href="#">간식</a></li>
                            <li><a href="#">베이커리</a></li>
                            
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__item set-bg" data-setbg="/resources/img/hero/banner.jpg">
                        <div class="hero__text">
                            <span>FRUIT FRESH</span>
                            <h2>Vegetable <br />100% Organic</h2>
                            <p>Free Pickup and Delivery Available</p>
                            <a href="#" class="primary-btn">SHOP NOW</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->
 
    <!-- Categories Section Begin -->
    <section class="categories" >    	
        <div class="container" style=margin-bottom:40px>
        <span style="color:green; font-size:25pt ">특가상품</span>
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/resources/img/categories/cat-1.jpg">
                            <h5><a href="#">Fresh Fruit</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/resources/img/categories/cat-2.jpg">
                            <h5><a href="#">Dried Fruit</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/resources/img/categories/cat-3.jpg">
                            <h5><a href="#">Vegetables</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/resources/img/categories/cat-4.jpg">
                            <h5><a href="#">drink fruits</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/resources/img/categories/cat-5.jpg">
                            <h5><a href="#">drink fruits</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->

    <!-- Categories Section Begin -->
    <section class="categories">        
        <div class="container" style=margin-bottom:40px>
        <span style="color:green; font-size:25pt ">이벤트 상품</span>
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/resources/img/categories/cat-1.jpg">
                            <h5><a href="#">Fresh Fruit</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/resources/img/categories/cat-2.jpg">
                            <h5><a href="#">Dried Fruit</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/resources/img/categories/cat-3.jpg">
                            <h5><a href="#">Vegetables</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/resources/img/categories/cat-4.jpg">
                            <h5><a href="#">drink fruits</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="/resources/img/categories/cat-5.jpg">
                            <h5><a href="#">drink fruits</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    
    <!-- Categories Section End -->
 
    <!-- Footer Section Begin -->
   
    <!-- Footer Section End -->
    
    <%@ include file="./includes/footer.jsp" %>
    
</body>
</html>
