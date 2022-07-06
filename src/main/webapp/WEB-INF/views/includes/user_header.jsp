<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="/resources/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="/resources/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="/resources/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="/resources/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="/resources/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="/resources/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/resources/css/style.css" type="text/css">

<style>
.container #header__menu__fix { flex: 0 0 75%; max-width: 100%; }

.header__menu { display: flex; align-items: center; }
.header__menu .header__menu__list { float: left; margin-right: 23px; }
.header__menu .hero__search { margin-bottom: 0px; }
.header__menu .hero__search .hero__search__form { width: 523px; }
.header__menu .hero__search .hero__search__categories { width: 24%; }
</style>

 <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                               <a href="#"><i class="fa fa-se"><span style="color:green">회원가입</span></i> </a>
                            </div>
                            <div class="header__top__right__language">
                                <img src="/resources/img/customer.png" alt="">
                                <div>고객센터</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="#">공지사항</a></li>
                                    
                                </ul>
                            </div>
                            <div class="header__top__right__auth">
                                <a href="#"><i class="fa fa-user"></i> Login</a>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="/"><img src="/resources/img/logo2.png.png" alt="" style = "height:70px"></a>
                    </div>
                </div>
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
                
               <!--  <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            
                        </ul>
                        
                    </div>
                </div> -->
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->