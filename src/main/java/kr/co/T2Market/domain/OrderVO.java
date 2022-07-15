package kr.co.T2Market.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class OrderVO {
	

	private String reciept_no;
	private String member_id;
	private Date indate;
	private String buyer_name;
	private String reciever_name;
	private Date regdate;
	private Date updatedate;
	private String cart_no;
	private String reciever_address;
	private String reciever_phone;
}
