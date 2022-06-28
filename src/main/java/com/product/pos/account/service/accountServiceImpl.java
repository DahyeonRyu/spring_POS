package com.product.pos.account.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.product.pos.account.dao.accountDao;
import com.product.pos.account.vo.accountVo;

//서비스 빈으로 등록
@Service
public class accountServiceImpl implements accountService {
	
	//Dao class를 사용하기 위해 @Autowired로 등록
	@Autowired
	private accountDao dao;
	
	//직원 등록, 회원가입
	@Override
	public void insertAccount(accountVo vo) throws Exception{
		dao.insertAccount(vo);
	}
	
	//로그인
	@Override
	public accountVo login(accountVo vo){
		return dao.login(vo);
	}

	//로그인 체크
	@Override
	public int loginCheck(accountVo vo, HttpSession session) {
		int result = dao.loginCheck(vo);
		
		if (result == 1) {	//true일 경우 세션 등록
			//세션 변수 등록
			session.setAttribute("Id",vo.getId());
			session.setAttribute("Name", vo.getName());
		}
		
		return result;
	}
	
	

}