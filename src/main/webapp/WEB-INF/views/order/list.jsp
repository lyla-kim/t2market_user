<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="./includes/user_header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<title></title>


</head>
<body>
	
	<section class="breadcrumb-section set-bg" data-setbg="/resources/img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>주문서</h2>
                        <div class="breadcrumb__option">
                            <a href="/">Home</a>
                            <span>Order</span>
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
                                    <th class="shoping__product pl-5">제품명</th>
                                    <th>가격</th>
                                    <th>개수</th>
                                    <th>금액</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/cart/cart-1.jpg" alt="">
                                        <h5>Vegetable’s Package</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        $55.00
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                           <b>1</b> 
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                        $110.00
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/cart/cart-2.jpg" alt="">
                                        <h5>Fresh Garden Vegetable</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        $39.00
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                            <b>1</b>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                        $39.99
                                    </td>
                                    
                                </tr>
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/cart/cart-3.jpg" alt="">
                                        <h5>Organic Bananas</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        $69.00
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                            <b>1</b>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                        $69.99
                                    </td>
                                    
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            
            <div class="container">
            	<div class="row">
            <div class="col-lg-6 bg-white">
                    <div class="shoping__checkout bg-white">
                        <h5 align="center">주문자 정보</h5>
                        <ul>

                        	<div class="form-group">
								<label>성명</label> <input class="form-control" name='meber_name' readonly="readonly">
							</div>


  
                            <div class="form-group">
								<label>연락처</label> <input class="form-control" name='phone' readonly="readonly">
							</div>

                       
  
                            <div class="form-group">
								<label>주소</label> <input class="form-control" name='address' readonly="readonly">
							</div>
 
                            
        
                            <div class="form-group">
								<label>이메일</label> <input class="form-control" name='email' readonly="readonly">
							</div> 
 
                        </ul>
                    </div>  
                </div>
                
                <div class="col-lg-6 bg-white">
                    <div class="shoping__checkout bg-white">
                        <h5 align="center">수신인 정보</h5>
                        <ul>
							<form role="form" action="/order/register" method="post">
                        	<div class="form-group">
								<label>성명</label> <input class="form-control" name='reciever_name'>
							</div>


  
                            <div class="form-group">
								<label>배송지</label> <input class="form-control" name='reciever_address'>
							</div>

                       
  
                            <div class="form-group">
								<label>연락처</label> <input class="form-control" name='reciever_phone'>
							</div>	
						
                        </ul>
                    </div>  
                </div>
                </div>
                
                
                
                <div class="col-lg-12 bg-white" align="center">
                    <div class="shoping__checkout bg-white">
                        <h5 align="center">결제 금액</h5>
                        <ul>
                        	<li></li>

                            <li><div class="text-danger"align="center" style="font-size: 20px">$454.98</div></li>
                      
                <button type="submit" class="btn btn-success">결제하기</button>
                </div>
                        </ul>
                    </div>  
                </div>   
            </div>
            
        </div>
    </section>
		
</div>
</body>


<%@ include file="./includes/footer.jsp"%>
</html>