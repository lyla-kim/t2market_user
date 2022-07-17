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
  /* 리뷰쓰기 버튼 */
  .reply_button_wrap{
  	padding : 10px;
  }
  .reply_button_wrap button{
	background-color: #365fdd;
    color: white;
    font-weight: bold;
    font-size: 15px;
    padding: 5px 12px;
    cursor: pointer;  
  }
  .reply_button_wrap button:hover{
  	background-color: #1347e7;
  }
  
  /* 리뷰 영역 */
  	.content_bottom{
  		width: 80%;
  		margin : auto;
  	}
	.reply_content_ul{
		list-style: none;
	}
	.comment_wrap{
		position: relative;
    	border-bottom: 1px dotted #d4d4d4;
    	padding: 14px 0 10px 0;	
    	font-size: 12px;
	}
		/* 리뷰 머리 부분 */
		.reply_top{
			padding-bottom: 10px;
		}
		.id_span{
			padding: 0 15px 0 3px;
		    font-weight: bold;		
		}
		.date_span{
			padding: 0 15px 0;
		}
		/* 리뷰 컨텐트 부분 */
		.reply_bottom{
			padding-bottom: 10px;
		}
		
	
	/* 리뷰 선 */
	.reply_line{
		width : 80%;
		margin : auto;
		border-top:1px solid #c6c6cf;  	
	}
	
	/* 리뷰 제목 */
	.reply_subject h2{
		padding: 15px 0 5px 5px;
	}
	
	/* pageMaker */
	.repy_pageInfo_div{
		text-align: center;
	    margin-top: 30px;
	    margin-bottom: 40px;	
	}
	.pageMaker{
	    list-style: none;
	    display: inline-block;	
	}
	.pageMaker_btn{
		float: left;
	    width: 25px;
	    height: 25px;
	    line-height: 25px;
	    margin-left: 20px;
	    font-size: 10px;
	    cursor: pointer;
	}
	.active{
		border : 2px solid black;
		font-weight:400;	
	}
	.next, .prev {
	    border: 1px solid #ccc;
	    padding: 0 10px;
	}	
  
  /* 리뷰 없는 경우 div */
  .reply_not_div{
  	text-align: center;
  }
  .reply_not_div span{
	display: block;
    margin-top: 30px;
    margin-bottom: 20px; 
  }
  
  /* 리뷰 수정 삭제 버튼 */
  .update_reply_btn{
 	font-weight: bold;
    background-color: #b7b399;
    display: inline-block;
    width: 40px;
    text-align: center;
    height: 20px;
    line-height: 20px;
    margin: 0 5px 0 30px;
    border-radius: 6px;
    color: white; 
    cursor: pointer;
  }
  .delete_reply_btn{
 	font-weight: bold;
    background-color: #e7578f;
    display: inline-block;
    width: 40px;
    text-align: center;
    height: 20px;
    line-height: 20px;
    border-radius: 6px;
    color: white; 
  	cursor: pointer;
  }
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
									</div>                       
 <!--                        <c:if test="${member != null }"> -->									             
									<div class="reply_button_wrap">
										<button>리뷰 쓰기</button>
									</div>
<!--					</c:if>	-->                                    
                            </li>
                        </ul>
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
	$(".reply_button_wrap").on("click",function(e){
		
		e.preventDefault();
		
		const member_id = '${member.member_id}';
		const product_no = '${goodsInfo.product_id}';

		let popUrl = "/replyEnroll/" + member_id + "?product_id=" + product_id;
		console.log(popUrl);
		let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes";
		
		window.open(popUrl,"리뷰 쓰기",popOption);
	})
</script>	
</body>
<%@ include file="../includes/footer.jsp" %>
</html>