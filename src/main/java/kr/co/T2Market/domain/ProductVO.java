package kr.co.T2Market.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ProductVO {
	private String product_no;
	private String code1;
	private String code2;
	private String explain;
	private String name;
	private int discount;
	private int sell_price;
	private int real_price;
	private int total_output;
	private int total_sales;
	private int input;
	private int stock;
	private Date regdate;
	private Date updatedate;
	private String active;
}
