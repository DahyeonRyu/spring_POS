package com.product.pos.product.dao;

import java.util.List;

import com.product.pos.product.vo.productVo;

public interface productDao {
	
	//상품 목록 조회
	public List<productVo> productList();
	
	//상품 유무 조회
	public int productExist(productVo vo);

	//상품등록
	public void insertProduct(productVo vo);
	
	//기록 관리
	public void historyProduct(productVo vo);
	
	//상품 수량 추가
	public void addProduct(productVo vo);

}
