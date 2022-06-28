package com.product.pos.account.vo;

import java.util.Date;

//데이터 주고 받을 때 사용하는 객체(DTO)
public class accountVo {

	private String id;
	private String pwd;
	private String name;
	private String position; //직책
	private Date reg_date; //등록 날짜
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
}
