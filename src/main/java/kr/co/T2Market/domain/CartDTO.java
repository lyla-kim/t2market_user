package kr.co.T2Market.domain;

import lombok.Data;


public class CartDTO {

	private String cart_no;
	private String member_id;
	private String product_no;
	private int sales;
	
	//product
	private String product_name;
	private int sell_price;
	private int discount;
	
	//할인율 계산
	private int real_price;
	private int total_sales;
	
	
	public String getCart_no() {
		return cart_no;
	}
	public void setCart_no(String cart_no) {
		this.cart_no = cart_no;
	}
	public String getProduct_no() {
		return product_no;
	}
	public void setProduct_no(String product_no) {
		this.product_no = product_no;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getSell_price() {
		return sell_price;
	}
	public void setSell_price(int sell_price) {
		this.sell_price = sell_price;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public int getReal_price() {
		return real_price;
	}
	public int getTotal_sales() {
		return total_sales;
	}
	
	public void initSaleTotal() {
		this.real_price = (int)((this.sell_price * (100-this.discount))/100);
		this.total_sales = this.real_price * this.sales;
	}
	
	@Override
	public String toString() {
		return "CartDTO [cart_no=" + cart_no + ", product_no=" + product_no + ", member_id=" + member_id + ", sales="
				+ sales + ", product_name=" + product_name + ", sell_price=" + sell_price + ", discount=" + discount
				+ ", real_price=" + real_price + ", total_sales=" + total_sales + "]";
	}
	
	
	
	
	
	
	
}
