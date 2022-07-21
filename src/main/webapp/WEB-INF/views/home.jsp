<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ include file="./includes/user_header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<title>ProjEx</title>
</head>

<style>
.hero__categories ul li a {line-height:36px;}
</style>
<body>

	

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Hero Section Begin -->
    <section class="hero bg-white">
    
    
   
 		 <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/resources/img/event1.PNG" height="370" width="1670" class="d-block w-10" data-bs-interval="100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/resources/img/event2.PNG" height="370" width="1670" class="d-block w-10" data-bs-interval="100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="/resources/img/event3.PNG" height="370" width="1670" class="d-block w-7" data-bs-interval="100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>           
    </section>
    
  
    <!-- Hero Section End -->
 
    <!-- Categories Section Begin -->
 
 <section class="categories bg-white">
        <div class="container">
        <div align="center">
        <span style="color:green; font-size:25pt">신상품</span>
        </div>
        <br><br>
   
        <div>
        </div>
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
        <br><br><br><br><br>
    </section>
    
    
    
    <section class="categories bg-white">
    <br>
    <br>
    <br>
        <div class="container">
        <div align="center">
        <span style="color:green; font-size:25pt ">추천상품</span>
        </div>
        <br><br>
        <div>
        </div>
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
        <br><br><br><br><br>
    </section>
 
    <!-- Categories Section End -->
    
    <!-- Categories Section Begin -->
    

       <section class="featured spad bg-white">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>이상품은 어떠세요?</h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li class="active" data-filter="*">전체</li>
                            <li data-filter=".oranges">신상품</li>
                            <li data-filter=".fresh-meat">신선제품</li>
                            <li data-filter=".vegetables">야채</li>
                            <li data-filter=".fastfood">베이커리</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="/resources/img/featured/feature-1.jpg">
                            
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="./shop-details.jsp" >1++ 한우 등심</a></h6>
                            <h5><span style="color:red;">15%</span>  
                            25,500원</h5>
                            <br>
                            <del><h6 style="color:gray;">30,000원</h6></del>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="/resources/img/featured/feature-2.jpg">
                           
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                           <h5><span style="color:red;">15%</span>  
                            25,500원</h5>
                            <br>
                            <del><h6 style="color:gray;">30,000원</h6></del>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="/resources/img/featured/feature-3.jpg">
                            
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5><span style="color:red;">15%</span>  
                            25,500원</h5>
                            <br>
                            <del><h6 style="color:gray;">30,000원</h6></del>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="/resources/img/featured/feature-4.jpg">
                            
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5><span style="color:red;">15%</span>  
                            25,500원</h5>
                            <br>
                            <del><h6 style="color:gray;">30,000원</h6></del>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="/resources/img/featured/feature-4.jpg">
                            
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5><span style="color:red;">15%</span>  
                            25,500원</h5>
                            <br>
                            <del><h6 style="color:gray;">30,000원</h6></del>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="/resources/img/featured/feature-6.jpg">
                            
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5><span style="color:red;">15%</span>  
                            25,500원</h5>
                            <br>
                            <del><h6 style="color:gray;">30,000원</h6></del>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="/resources/img/featured/feature-7.jpg">
                            
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                            <h5><span style="color:red;">15%</span>  
                            25,500원</h5>
                            <br>
                            <del><h6 style="color:gray;">30,000원</h6></del>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="/resources/img/featured/feature-8.jpg">
                            
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Crab Pool Security</a></h6>
                           <h5><span style="color:red;">15%</span>  
                            25,500원</h5>
                            <br>
                            <del><h6 style="color:gray;">30,000원</h6></del>
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
