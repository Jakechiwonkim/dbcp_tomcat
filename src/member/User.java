package member;

public class User {
	
	private String uname; 
	private String uid; 
	private int unum;
	private String sex;

	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String uname, String uid, int unum, String sex) {
		super();
		this.uname = uname;
		this.uid = uid;
		this.unum = unum;
		this.sex = sex;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public int getUnum() {
		return unum;
	}
	public void setUnum(int unum) {
		this.unum = unum;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}

	@Override
	public String toString() {
		return "User [uname=" + uname + ", uid=" + uid + ", unum=" + unum + ", sex=" + sex + "]";
	} 
	
}
