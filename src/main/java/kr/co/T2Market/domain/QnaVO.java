package kr.co.T2Market.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class QnaVO {
	
	private String Qna_no;
	private String member_id;
	private String title;
	private String content;
	private Date regdate;
	private Date updatedate;
}
