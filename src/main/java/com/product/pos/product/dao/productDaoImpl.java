package com.product.pos.product.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.product.pos.product.vo.productVo;

@Repository
public class productDaoImpl implements productDao{
	
	@Autowired
	SqlSession sqlSession;
	
	//상품 목록 조회
	@Override
	public List<productVo> productList(){
		return sqlSession.selectList("product.productList");
	}

	//상품 유무 조회
	@Override
	public int productExist(productVo vo) {
		return sqlSession.selectOne("product.productExist");
	}
	
	//새 상품 등록
	@Override
	public void insertProduct(productVo vo) {
		sqlSession.insert("product.insertProduct", vo);
		
	}
	
	//기록 관리
	@Override
	public void historyProduct(productVo vo) {
		sqlSession.insert("product.historyProduct", vo);
	}
	
	//상품 수량 추가
	@Override
	public void addProduct(productVo vo) {
		sqlSession.insert("product.addProduct", vo);
	}


}
