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
                                    aria-selected="false">Reviews</a>
<!--                        <c:if test="${member != null }"> -->
<!--					</c:if>	-->  							
                            </li>
                        </ul>
                     </div>
                </div>
				<form action='review.jsp' style="margin-left: 1000px; margin-bottom: 10px; font-size:25px;  ">
				
 				  <input type='button' value='리뷰쓰기' style="background-color: #7fad39; color:#ffffff; border-color:#ffffff; height:70px" onclick="location.href='/review/write?product_no=new001'" />
 				  
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
                				<td>${review.reply }</td>
                				<td><fmt:formatDate value="${review.regdate}" pattern="yyyy-MM-dd" /></td>
                			</tr>
                		</c:forEach>	
                	</tbody>
                </table>
                    
                                
			</div>

           
        </div>
        
        
    </section>
<script>
var bnoValue = '<c:out value="${pageInfo.product_no}"/>';

var modal = $("#myModal");
// 덧글 용 모달.
var modalInputReplydate = modal.find("input[name='replyDate']");
// 덧글 작성일 항목.
var modalRegisterBtn = $("#modalRegisterBtn");
// 모달에서 표시되는 덧글쓰기 버튼.
var modalInputReply = modal.find("input[name='reply']");
// 덧글 내용
var modalInputReplyer = modal.find("input[name='replyer']"); 
// 덧글작성자

// 덧글 입력 모달창 보이기
$("#addReplyBtn").on("click", function(e){
	// 덧글 쓰기 버튼을 클릭한다면,
	modal.find("input").val("");
	// 모달의 모든 입력창을 초기화
	modalInputReplydate.closest("div").hide();
	// closest : 선택 요소와 가장 가까운 요소를 지정.
	// 즉, modalInputReplyDate 요소의 가장 가까운 div를 찾아서 숨김.(날짜창 숨김)
	modal.find("button[id != 'modalCloseBtn']").hide();
	// 모달창에 버튼이 4개 인데, 닫기 버튼을 제외하고 숨기기.
	modalRegisterBtn.show(); // 등록 버튼은 보여라.
	$("#myModal").modal("show"); // 모달 표시.
});

// 모달창 닫기
$("#modalCloseBtn").on("click", function(e){
	modal.modal("hide");
	// 모달 닫기 라는 버튼을 클릭한다면 모달창을 숨김.
});

// 덧글 쓰기
modalRegisterBtn.on("click", function(e){
	// 덧글 등록 버튼을 눌렀다면,
	var reply = {
			reply : modalInputReply.val(),
			
			product_no : bnoValue
	}; // ajax로 전달할 reply 객체 선언 및 할당.
	replyService.add(reply, function(result){
		alert(result);
		// ajax 처리후 결과 리턴.
		modal.find("input").val("");
		// 모달창 초기화
		modal.modal("hide"); // 모달창 숨기기
	});
});

// 덧글 목록 보이기.
replyService.getList({
	product_no : bnoValue,
	page : 1
}, function(list){
	for(var i=0, len = list.length || 0; i<len; i++){
		console.log(list[i]);
	}
});
</script>

<!-- 덧글 목록 시작 -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="fa fa-comments fa-fw"></i>덧글
				<button id="addReplyBtn" class="btn btn-primary btn-xs float-right">새 덧글</button> 
			</div>
			<br>
			<div class="panel-body">
				<ul class="chat">
					<li>good</li>
				</ul>
			</div>
			<div class="panel-footer"></div>
		</div>
	</div>
</div>
<!-- 덧글 목록 끝 -->

<!-- 덧글 작성용 모달 시작 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">덧글창</h5>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label>덧글</label><input class="form-control" name="reply" value="새 덧글">
				</div>
				<div class="form-group">
					<label>작성자</label><input class="form-control" name="replyer" value="replyer">
				</div>
				<div class="form-group">
					<label>덧글 작성일</label><input class="form-control" name="replyDate" value="">
				</div>
			</div>
			<div class="modal-footer">
				<button id="modalModBtn" type="button" class="btn btnwarning">수정</button>
				<button id="modalRemoveBtn" type="button" class="btn btndanger">삭제</button>
				<button id="modalRegisterBtn" type="button" class="btn btnprimary">등록</button>
				<button id="modalCloseBtn" type="button" class="btn btndefault">닫기</button>
			</div>
		</div>
	</div>
</div>
<!-- 덧글 작성 모달 끝 -->
</body>
<%@ include file="../includes/footer.jsp" %>
</html>