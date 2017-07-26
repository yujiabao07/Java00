package com.baway.pojo;

public class Tuser {

	
	private int id;
	private String uname;
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Tuser(int id, String uname, String password) {
		super();
		this.id = id;
		this.uname = uname;
		this.password = password;
	}
	public Tuser() {
		super();
	}
	@Override
	public String toString() {
		return "Tuser [id=" + id + ", uname=" + uname + ", password="
				+ password + "]";
	}
	
	
}
