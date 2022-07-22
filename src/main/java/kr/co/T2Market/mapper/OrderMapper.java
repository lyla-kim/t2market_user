package kr.co.T2Market.mapper;

import kr.co.T2Market.domain.OrderDTO;
import kr.co.T2Market.domain.OrderItemDTO;
import kr.co.T2Market.domain.OrderPageItemDTO;

public interface OrderMapper {

	/* 주문 상품 정보 */
	public OrderPageItemDTO getGoodsInfo(String product_no);
	
	public OrderItemDTO getOrderInfo(String product_no);
	
//	public int enrollOrder(OrderDTO ord);
}
