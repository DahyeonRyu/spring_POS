package com.product.pos.product.vo;

import java.util.Date;

public class productVo {
	
	private String proNm; //jsp랑 이름 같게
	private String proPrice; //xml {} 같게
	private int proIn; //추가 수량
	private int proOut; //판매 수량
	private Date proRegdt; //추가 및 판매 날짜와 시간
	private int curAc; //현재 수량
	private int addAc; //추가 수량
	
	
	public int getAddAc() {
		return addAc;
	}
	public void setAddAc(int addAc) {
		this.addAc = addAc;
	}
	public String getProNm() {
		return proNm;
	}
	public void setProNm(String proNm) {
		this.proNm = proNm;
	}
	public String getProPrice() {
		return proPrice;
	}
	public void setProPrice(String proPrice) {
		this.proPrice = proPrice;
	}
	public int getProIn() {
		return proIn;
	}
	public void setProIn(int proIn) {
		this.proIn = proIn;
	}
	public int getProOut() {
		return proOut;
	}
	public void setProOut(int proOut) {
		this.proOut = proOut;
	}
	public Date getProRegdt() {
		return proRegdt;
	}
	public void setProRegdt(Date proRegdt) {
		this.proRegdt = proRegdt;
	}
	public int getCurAc() {
		return curAc;
	}
	public void setCurAc(int curAc) {
		this.curAc = curAc;
	}
	

}
