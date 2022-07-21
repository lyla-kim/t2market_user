<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="qna/includes/user_header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title></title>


</head>
<body class="bg-white">
	<section class="breadcrumb-section set-bg" data-setbg="/resources/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>장바구니</h2>
                        <div class="breadcrumb__option">
                            <a href="/">Home</a>
                            <span>Cart</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

	<div class="">
		<section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                	<th></th>
                                    <th class="shoping__product pl-5">제품명</th>
                                    <th>가격</th>
                                    <th>개수</th>
                                    <th>합계</th>
                                    <th>삭제</th>
                                </tr>
                            </thead>
                            <tbody>
                           	 <c:forEach items="${cartInfo}" var="ci">
                                <tr>
                                	<td class="cart_info_td">
                                		<input type="checkbox" class="individual_cart_checkbox input_size_20" checked="checked">
                                		<input type="hidden" class="individual_sellPrice_input" value="${ci.sell_price}">
										<input type="hidden" class="individual_realPrice_input" value="${ci.real_price}">
										<input type="hidden" class="individual_sales_input" value="${ci.sales}">
										<input type="hidden" class="individual_totalPrice_input" value="${ci.real_price * ci.sales}">
										<input type="hidden" class="individual_product_no_input" value="${ci.product_no}">                                		
                                	</td>
               
                                    <td class="shoping__cart__item">            
                                        <h5><b>${ci.product_name}</b></h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        <fmt:formatNumber value="${ci.real_price}" pattern="#,###원" />
                                    </td>
                                    <td class="td_width_4 table_text_align_center">
									<div class="table_text_align_center quantity_div">
										<b><input type="text" value="${ci.sales}" class="quantity_input col text-center" style="border:none;"></b>	
										<button class="quantity_btn plus_btn bg-white" style="border:none;">+</button>
										<button class="quantity_btn minus_btn bg-white" style="border:none;">-</button>
									</div>
									<button class="quantity_modify_btn bg-white"style=" border:none;" data-cart_no="${ci.cart_no }">변경</button>
								</td>
                                    <td class="shoping__cart__total">
                                         <fmt:formatNumber value="${ci.total_sales}" pattern="#,###원" />
                                    </td>
                                    <td class="shoping__cart__total">
                                       		<button class="delete_btn bg-white" style="border:none;" data-cart_no="${ci.cart_no}">삭제</button>
                                    </td>
                                    
                                    
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
                
                <div class="col-lg-12 bg-white" align="center">
                    <div class="shoping__checkout bg-white">
                        <h5 align="center">총 결제 금액</h5>
                        <ul>
                        	<li></li>

                            <li><div class="text-danger" align="center" style="font-size: 20px">
                            <div class="totalPrice_div">$454.98</div>
                            </div></li>
                      
                <button class="order_btn btn btn-success">주문하기</button>
                </div>
                        </ul>
                    </div>  
                </div>   
            </div>
            
        </div>
    </section>
		
</div>
</body>


<!-- 수량 조정 form -->
<form action="/cart/update" method="post" class="quantity_update_form">
				<input type="hidden" name="cart_no" class="update_cart_no">
				<input type="hidden" name="sales" class="update_sales">
				<input type="hidden" name="member_id" value="${ci.member_id}">
			</form>
			

<!-- 삭제 form -->

	<form action="/cart/delete" method="post" class="quantity_delete_form">
				<input type="hidden" name="cart_no" class="delete_cart_no">
				<input type="hidden" name="member_id" value="${ci.member_id}">
			</form>
			
<!--  주문 form --> 
	<form action="/order/${member.member_id }" method="get" class="order_form">
		
	</form>

<script type="text/javascript">
	$(document).ready(function() {
			
		setTotalInfo();
		
	});
	
	/* 체크여부에따른 종합 정보 변화 */
	$(".individual_cart_checkbox").on("change", function(){
		/* 총 주문 정보 세팅 */
		setTotalInfo($(".cart_info_td"));
	});


	function setTotalInfo() {
		
		let totalPrice = 0;				// 총 가격
		let totalCount = 0;				// 총 갯수	
	
	$(".cart_info_td").each(function(index, element){
		
	if($(element).find(".individual_cart_checkbox").is(":checked") === true){ //체크 여부 확인	
		//총 가격
		totalPrice += parseInt($(element).find(".individual_totalPrice_input").val());
		
	
		}
	});
		
		
	
	$(".totalPrice_div").text(totalPrice.toLocaleString());
	
	};
	
	/* 수량버튼 */
	$(".plus_btn").on("click", function(){
		let quantity = $(this).parent("div").find("input").val();
		$(this).parent("div").find("input").val(++quantity);
	});
	
	$(".minus_btn").on("click", function(){
		let quantity = $(this).parent("div").find("input").val();
		if(quantity > 1){
			$(this).parent("div").find("input").val(--quantity);		
		}
	});
		
		/* 수량 수정 버튼 */
		$(".quantity_modify_btn").on("click", function(){
			let cart_no = $(this).data("cart_no");
			let sales = $(this).parent("td").find("input").val();
			$(".update_cart_no").val(cart_no);
			$(".update_sales").val(sales);
			$(".quantity_update_form").submit();
			
		});	
		
	
	$(".delete_btn").on("click", function(e){
		e.preventDefault();
		const cart_no = $(this).data("cart_no");
		$(".delete_cart_no").val(cart_no);
		$(".quantity_delete_form").submit();
	});
	
	/* 주문 페이지 이동 */	
	$(".order_btn").on("click", function(){
		
		let form_contents ='';
		let orderNumber = 0;
		
		$(".cart_info_td").each(function(index, element){
			
			if($(element).find(".individual_cart_checkbox").is(":checked") === true){	//박스 체크여부
				
				let product_no = $(element).find(".individual_product_no_input").val();
				let sales = $(element).find(".individual_sales_input").val();
				
				let product_no_input = "<input name='orders[" + orderNumber + "].product_no' type='hidden' value='" + product_no + "'>";
				form_contents += product_no_input;
				
				let sales_input = "<input name='orders[" + orderNumber + "].sales' type='hidden' value='" + sales + "'>";
				form_contents += sales_input;
				
				orderNumber += 1;
				
			}
		});	

		$(".order_form").html(form_contents);
		$(".order_form").submit();
		
	});
</script>


<%@ include file="./includes/footer.jsp"%>
</html>