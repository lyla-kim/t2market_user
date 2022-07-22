<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

<!-- Css Styles -->
<script src="/resources/js/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="/resources/css/searchForm.css" type="text/css">
<link rel="stylesheet" href="/resources/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="/resources/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="/resources/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="/resources/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="/resources/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/resources/css/style.css" type="text/css">
<link rel="stylesheet" href="/resources/css/menu.css" type="text/css">
<link rel="stylesheet" href="/resources/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="/resources/css/board.css" type="text/css">
<link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css">



<style>
.container #header__menu__fix { flex: 0 0 75%; max-width: 100%; }

.header__menu { display: flex; align-items: center; }
.header__menu .header__menu__list { float: left; margin-right: 23px; }
.header__menu .hero__search { margin-bottom: 0px; }
.header__menu .hero__search .hero__search__form { width: 523px; }
.header__menu .hero__search .hero__search__categories { width: 24%; }
</style>



 <!-- Header Section Begin -->
    <header class="header bg-white">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <div class="header__logo" align="right">
                        <a href="/"><img src="/resources/img/logo2.png" alt="" style = "height:100px"></a>
                    </div>
                </div>
                 <div class="col-lg-5">
                                         <div class="header__top__right">
                            <div class="header__top__right__social">
                               <a href="#"><i class="fa fa-se"><span style="color:green">회원가입</span></i> </a>
                            </div>
                            <div class="header__top__right__language">
                                <div>고객센터</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="#">공지사항</a></li>
                                    <li><a href="/qna/list">1:1상담</a></li>
                                </ul>
                            </div>
                            	<!-- 로그인 하지 않은 상태 -->
                            <div class="header__top__right__auth">
                                <c:if test = "${member == null }">
                    			<div class="login_button"><a href="/member/login">로그인</a></div>
                    			<span><a href="/member/join">회원가입</a></span>                
                				</c:if>  
                				
                				<!-- 로그인 한 상태 -->
                			<div class="header__top__right__auth">
                                <c:if test="${ member != null }">
				                    <div class="login_success_area">
				                        <span>회원 : ${member.member_name}</span>
				                        <a href="/member/logout.do">로그아웃</a>
				                    </div>
				                </c:if>
				                
                            </div>
                        </div>
                        </div>
                 </div>
                  </div>
                  
                  <div class="container">
        <div class="container">
            <div class="row">
	<div class="col-lg-1">
	</div>
                 <div class="col-lg-7">
                    <nav class="header__menu p-2 m-2 text-top shadow-none">
                        <ul>
                        	<li><a href="#"><i class="fa fa-bars"></i>&nbsp;<b>카테고리</b></a>
                        	<ul class="header__menu__dropdown">
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
                            <li><a href="./index.html">Home</a></li>
                            <li><a href="./shop-grid.html">New</a></li>
                            <li><a href="#">Recommend</a>
  
                                
							<li><a href="/cart/${member.member_id }"><i class="fa fa-shopping-bag w-100 h-100" ></i></a></li>
							
                        </ul>
                    </nav>
                </div>
                
                 <div class="col-lg-3">
                <div id="wrap align-self-stretch">
  <form action="" autocomplete="on">
  <input id="search" name="search" type="text" placeholder="찾으시는 제품명을 입력해주세요">
  <input id="search_submit" value="Rechercher" type="submit">
  </form>
</div>

                </div>
               
                
</div>
</div>
</div>
</div>

<br><br><br><br><br>
    </header>
    <!-- Header Section End -->