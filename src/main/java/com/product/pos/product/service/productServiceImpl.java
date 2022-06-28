package com.product.pos.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.pos.product.dao.productDao;
import com.product.pos.product.vo.productVo;

@Service
public class productServiceImpl implements productService{

	@Autowired
	private productDao dao;
	
	//상품 목록 조회
	@Override
	public List<productVo> productList(){
		return dao.productList();
	}
	
	//상품 유무 조회
	@Override
	public int productExist(productVo vo) {
		return dao.productExist(vo);
	}
	
	//새 상품 등록
	@Override
	public void insertProduct(productVo vo) {
		dao.insertProduct(vo);
	}
	
	//기록 관리
	@Override
	public void historyProduct(productVo vo) {
		dao.historyProduct(vo);
	}
	
	//상품 수량 추가
	@Override
	public void addProduct(productVo vo) {
		dao.addProduct(vo);
	}
	
	

}
