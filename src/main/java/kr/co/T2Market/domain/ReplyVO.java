package kr.co.T2Market.domain;

import java.util.Date;

import lombok.Data;


@Data
public class ReplyVO {

	private String review_no;
	
	private String product_no;
	
	private String member_id;

	private Date regdate;
	
	private String reply;
	
	private int score;
	
	private Date updatedate;
	
}
