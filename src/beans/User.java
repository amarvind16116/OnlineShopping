package beans;

public class User {
	private int u_id;
	private String fname;
	private String lname;
	private String email;
	private String pwd;
	public User()
	{
		
	}
	public User(String fname, String lname, String email, String pwd) {
		
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.pwd = pwd;
	}

	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	
	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	

}
