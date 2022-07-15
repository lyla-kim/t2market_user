package kr.co.T2Market.service;

import java.util.List;

import kr.co.T2Market.domain.OrderVO;

public interface OrderService {
	
	public void register(OrderVO order);
	
	public OrderVO get(String reciept_no);
	
	public boolean modify(OrderVO order);
	
	public boolean remove(String reciept_no);
	
	public List<OrderVO> getList();
}
