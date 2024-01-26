package com.JobSearch.JobSearchApplication.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class UserLogin {

	@Id
	String user_name;
	String user_password;
	
	public UserLogin() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public UserLogin(String user_name, String user_password) {
		super();
		this.user_name = user_name;
		this.user_password = user_password;
	}
	
	@Override
	public String toString() {
		return "UserLogin [user_name=" + user_name + ", user_password=" + user_password + "]";
	}
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	
}
