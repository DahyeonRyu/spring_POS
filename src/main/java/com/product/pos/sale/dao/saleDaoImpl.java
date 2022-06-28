package com.product.pos.sale.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.product.pos.sale.vo.saleVo;

@Repository
public class saleDaoImpl implements saleDao{
	
	@Autowired
	SqlSession sqlSession;

	//판매 현황
	@Override
	public void insertSale(saleVo vo) {
		sqlSession.insert("sale.insertSale", vo);
	}

	//수량 업데이트
	@Override
	public void updateSale(saleVo vo) {
		sqlSession.insert("sale.updateSale", vo);
	}
	
	

}
