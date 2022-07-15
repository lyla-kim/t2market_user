package kr.co.T2Market.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.T2Market.domain.OrderVO;
import kr.co.T2Market.mapper.OrderMapper;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class OrderServiceImpl implements OrderService {

	private OrderMapper mapper;
	
	@Override
	public void register(OrderVO order) {
		
		mapper.insertSelectKey(order);

	}

	@Override
	public OrderVO get(String reciept_no) {
		// TODO Auto-generated method stub
		return mapper.read(reciept_no);
	}

	@Override
	public boolean modify(OrderVO order) {
		// TODO Auto-generated method stub
		return mapper.update(order) == 1;
	}

	@Override
	public boolean remove(String reciept_no) {
		// TODO Auto-generated method stub
		return mapper.delete(reciept_no) == 1;
	}

	@Override
	public List<OrderVO> getList() {
		// TODO Auto-generated method stub
		return mapper.getList();
	}

}
