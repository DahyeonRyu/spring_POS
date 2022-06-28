package com.product.pos.account.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.product.pos.account.vo.accountVo;

@Repository
public class accountDaoImpl implements accountDao{
	
	//SqlSession 사용하기 위해 @Autowired로 등록
	@Autowired
	SqlSession sqlSession;

	//직원 등록, 회원가입
	@Override
	public void insertAccount(accountVo vo) throws Exception{
		sqlSession.insert("account.insertAccount", vo);
	}

	//로그인
	@Override
	public accountVo login(accountVo vo) {
		return null;
	}

	//로그인 체크
	@Override
	public int loginCheck(accountVo vo) {
		return sqlSession.selectOne("account.loginCheck", vo);
	}
	
	
}
