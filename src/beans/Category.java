package beans;

public class Category {
	private int c_id;
	private String cat;
	private int p_id;
	
	public Category() {
	}
	public Category(String cat, int p_id) {
		this.cat = cat;
		this.p_id = p_id;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getCat() {
		return cat;
	}
	public void setCat(String cat) {
		this.cat = cat;
	}
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

}
