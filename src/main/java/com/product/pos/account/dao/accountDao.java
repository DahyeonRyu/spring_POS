package com.product.pos.account.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.product.pos.account.vo.accountVo;


public interface accountDao {

	//회원가입, 직원 등록
	public void insertAccount(accountVo vo) throws Exception;
	
	//로그인
	public accountVo login(accountVo vo);
	
	//로그인 체크
	public int loginCheck(accountVo vo);
	
	
}
