package site.nicezo.dto;

/*
이름       널?       유형            
-------- -------- ------------- 
ID       NOT NULL VARCHAR2(20)  
PASSWORD          VARCHAR2(100)  
NAME              VARCHAR2(20)  
EMAIL             VARCHAR2(100) 
ZIPCODE           VARCHAR2(10)  
ADDRESS1          VARCHAR2(50)  
ADDRESS2          VARCHAR2(50)  
PHONE             VARCHAR2(20)  
STATUS            NUMBER        
JOINDATE          DATE
 */
public class Member {
	private String id;
	private String password;
	private String name;
	private String email;
	private String zipcode;
	private String address1;
	private String address2;
	private String phone;
	private int status;
	private String joindate;
	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getJoindate() {
		return joindate;
	}

	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}
}
