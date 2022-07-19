package kr.co.T2Market.domain;

import java.sql.Date;
import java.util.List;

import lombok.Data;

@Data
public class OrderDTO {

	
	/* 주문 번호 */
	private String reciept_no;
	
	/* 배송 받는이 */
	private String reciever_name;
	
	/* 주문 회원 아이디 */
	private String member_id;
	
	/* 우편번호 */
	private String reciever_address;
	
	/* 회원 주소 */
	private String reciever_address2;
	
	/* 회원 상세주소 */
	private String reciever_address3;
	
	/* 주문 상태 */
	private String orderState;
	
	/* 주문 상품 */
	private List<OrderItemDTO> orders;	
	
	/* 주문 날짜 */
	private Date indate;
	
	
	
	/* DB테이블 존재 하지 않는 데이터 */
	
	/* 판매가(모든 상품 비용) */
	private int orderSalePrice;
	
	/* 최종 판매 비용 */
	private int orderFinalSalePrice;
	
	
	
}


