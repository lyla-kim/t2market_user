package kr.co.T2Market.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class NoticeVO {
	
	private String active;
	private String admin_id;
	private String notice_no;
	private String title;
	private String content;
	private Date regdate;
	private Date updatedate;
}
