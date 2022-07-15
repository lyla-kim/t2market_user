package kr.co.T2Market.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.T2Market.domain.OrderVO;

public interface OrderMapper {

//		@Select("select * from reciept where reciept_no > 0" )
		public List<OrderVO> getList();
		
		public void insert(OrderVO order);
		
		public void insertSelectKey(OrderVO order);
		
		public OrderVO read(String reciept_no);
		
		public int delete(String reciept_no);

		public int update(OrderVO order);
		
		
		
}
