package kr.co.T2Market.domain;

public class OrderItemDTO {

	/* 주문 번호 */
	private String recipt_no;
	
	/* 상품 번호 */
    private int product_no;
    
	/* 주문 수량 */
    private int sales;
    
	/* orderItem 기본키 */
    private int orderItemId;
    
	/* 상품 한 개 가격 */
    private int sell_price;
    
	/* 상품 할인 율 */
    private int discount;
    
	/* 할인 적용된 가격 */
    private int real_price;
    
    /* 총 금액 */
    private int total_sales;

	public String getRecipt_no() {
		return recipt_no;
	}

	public void setRecipt_no(String recipt_no) {
		this.recipt_no = recipt_no;
	}

	public int getProduct_no() {
		return product_no;
	}

	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}

	public int getSales() {
		return sales;
	}

	public void setSales(int sales) {
		this.sales = sales;
	}

	public int getOrderItemId() {
		return orderItemId;
	}

	public void setOrderItemId(int orderItemId) {
		this.orderItemId = orderItemId;
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

	public void setReal_price(int real_price) {
		this.real_price = real_price;
	}

	public int getTotal_sales() {
		return total_sales;
	}

	public void setTotal_sales(int total_sales) {
		this.total_sales = total_sales;
	}

	public void initSaleTotal() {
		this.real_price = (int)((this.sell_price * (100-this.discount))/100);
		this.total_sales = this.real_price * this.sales;
	}
	
	@Override
	public String toString() {
		return "OrderItemDTO [recipt_no=" + recipt_no + ", product_no=" + product_no + ", sales=" + sales
				+ ", orderItemId=" + orderItemId + ", sell_price=" + sell_price + ", discount=" + discount
				+ ", real_price=" + real_price + ", total_sales=" + total_sales + "]";
	}
    
}
