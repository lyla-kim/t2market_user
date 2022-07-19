package kr.co.T2Market.service;

import java.util.List;

import kr.co.T2Market.domain.OrderPageItemDTO;

public interface OrderService {

		/* 주문 정보 */
	public List<OrderPageItemDTO> getGoodsInfo(List<OrderPageItemDTO> orders);
	
}
