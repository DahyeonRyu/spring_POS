package com.product.pos.sale.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.pos.sale.dao.saleDao;
import com.product.pos.sale.vo.saleVo;

@Service
public class saleServiceImpl implements saleService{
	
	@Autowired
	private saleDao dao;

	//판매 현황
	@Override
	public void insertSale(saleVo vo) {
		dao.insertSale(vo);
	}

	//수량 업데이트
	@Override
	public void updateSale(saleVo vo) {
		dao.updateSale(vo);
	}
	
	

}
