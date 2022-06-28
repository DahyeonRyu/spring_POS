package com.product.pos.account.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.product.pos.account.vo.accountVo;

//서비스 인터페이스
public interface accountService {
	
	//직원 등록, 회원가입
	public void insertAccount(accountVo vo) throws Exception;

	//로그인
	public accountVo login(accountVo vo);
	
	//로그인 체크
	public int loginCheck(accountVo vo, HttpSession session);
	
}
