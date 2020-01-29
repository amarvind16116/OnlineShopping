package beans;

import java.util.Date;

public class Order {
	
	private int order_id;
	private String product_name;
	private Date OrderDate;
	private Date OrderTime;
	private int quantity;
	private int total;
	public Order() {
		super();
	}
	
	public Order(String product_name, Date orderDate, Date orderTime, int quantity, int total) {
		this.product_name = product_name;
		this.OrderDate = orderDate;
		this.OrderTime = orderTime;
		this.quantity = quantity;
		this.total = total;
	}

	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	
	public Date getOrderDate() {
		return OrderDate;
	}
	public void setOrderDate(Date orderDate) {
		OrderDate = orderDate;
	}
	public Date getOrderTime() {
		return OrderTime;
	}
	public void setOrderTime(Date orderTime) {
		OrderTime = orderTime;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
	
}
