package kr.co.T2Market.domain;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReplyDTO {

	private String review_no;
	
	private String product_no;
	
	private String Member_id;

	private Date Regdate;
	
	private String reply;
	
	private int score;
	
	private Date updatedate;
	
}
