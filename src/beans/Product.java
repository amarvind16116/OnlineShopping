package beans;

public class Product {
	
	private int product_id;
	private String product_name;
	private String model_no;
	private int mrp_price;
	private int sell_price;
	private String brand;
	private int category;
	private int stock;
	private String img;
	private String desc;
	private String seller;
	private Integer dtime;
	public Product() {
		
	}
	public Product(String product_name, String model_no, int mrp_price, int sell_price, String brand,
			int category, int stock, String img,String seller,Integer dtime, String desc) {
		
		this.product_name = product_name;
		this.model_no = model_no;
		this.mrp_price = mrp_price;
		this.sell_price = sell_price;
		this.brand = brand;
		this.category = category;
		this.stock = stock;
		this.img = img;
		this.seller=seller;
		this.dtime=dtime;
		this.desc = desc;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getModel_no() {
		return model_no;
	}
	public void setModel_no(String model_no) {
		this.model_no = model_no;
	}
	public int getMrp_price() {
		return mrp_price;
	}
	public void setMrp_price(int mrp_price) {
		this.mrp_price = mrp_price;
	}
	public int getSell_price() {
		return sell_price;
	}
	public void setSell_price(int sell_price) {
		this.sell_price = sell_price;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getSeller() {
		return seller;
	}
	public void setSeller(String seller) {
		this.seller = seller;
	}
	public int getDtime() {
		return dtime;
	}
	public void setDtime(Integer dtime) {
		this.dtime = dtime;
	}
	
	
	
}
