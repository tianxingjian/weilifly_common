package com.kuaiyidian.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class User implements Serializable {
	private static final long serialVersionUID = 1L;
	private long id;
	private String username;
	private String password;
	private String realName;
	private String phone;
	private int isDisable;
	private Date loginEndTime;
	private String loginEndIP;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getIsDisable() {
		return isDisable;
	}

	public void setIsDisable(int isDisable) {
		this.isDisable = isDisable;
	}

	public Date getLoginEndTime() {
		return loginEndTime;
	}

	public void setLoginEndTime(Date loginEndTime) {
		this.loginEndTime = loginEndTime;
	}

	public String getLoginEndIP() {
		return loginEndIP;
	}

	public void setLoginEndIP(String loginEndIP) {
		this.loginEndIP = loginEndIP;
	}

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

}
