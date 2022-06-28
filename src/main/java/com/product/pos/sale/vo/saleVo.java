package com.product.pos.sale.vo;

import java.util.Date;

public class saleVo {
	
	private String proNm; //상품명
	private int proPrice; //가격
	private int proOut; //판매 수량
	private Date proRegdt; //판매 날짜와 시간
	
	
	public String getProNm() {
		return proNm;
	}
	public void setProNm(String proNm) {
		this.proNm = proNm;
	}
	public int getProPrice() {
		return proPrice;
	}
	public void setProPrice(int proPrice) {
		this.proPrice = proPrice;
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


	
}
