package kr.co.T2Market.domain;

import lombok.Data;

@Data
public class AttachImageVO {

	/* 경로 */
	private String uploadPath;
	
	/* uuid */
	private String uuid;
	
	/* 파일 이름 */
	private String fileName;
	
	/* 상품 id */
	private String product_no;
}
