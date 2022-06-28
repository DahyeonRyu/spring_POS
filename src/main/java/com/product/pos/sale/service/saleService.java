package com.product.pos.sale.service;

import com.product.pos.sale.vo.saleVo;

public interface saleService {

	//판매 현황
	public void insertSale(saleVo vo);
	
	//수량 업데이트
	public void updateSale(saleVo vo);
}
