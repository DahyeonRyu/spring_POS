package com.product.pos.account.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.product.pos.account.service.accountService;
import com.product.pos.account.vo.accountVo;

//컨트롤러 빈으로 등록
//사용자 요청이 들어오면 해당 컨트롤러 호출
@Controller
@RequestMapping(value="/account")//공통적인 url
public class accountController {
	
	//service class를 사용하기 위해 @Autowired로 등록
	@Autowired
	private accountService service;

	//회원가입
	//폼으로 이동할때 get 메서드 탐
	//전송 방식을 명시하면 하나의 url로도 두 개 이상의 매핑을 처리
	//ModelAndView : 데이터와 뷰를 동시에 설정 가능
	@GetMapping(value="/insertAccount")// /account/insertAccount
	public ModelAndView insertAccount(ModelAndView mv) { //페이지로 보내기
		mv.setViewName("insertAccount"); //뷰(jsp)의 경로로 보낼 뷰 이름 설정/jsp파일명
		return mv; //ModelAndView 객체 반환
	}
	
	//회원가입
	//회원가입 버튼 누르면 post
	//insertAccount.jsp로 이동
	@PostMapping(value="/insertAccount") //실제 데이터 넣는 곳 : /account/inseretAccount
	@ResponseBody //화면 전환 없이 데이터만 반환
	public String insertAccount(accountVo vo) throws Exception {
		service.insertAccount(vo);
		return null;
	}

	//로그인
	//login.jsp로 이동
	@GetMapping(value = "/login")
	public ModelAndView login(ModelAndView mv) {
		mv.setViewName("login"); //어떤 페이지를 보여줄건지
		return mv;
	}
	
	//로그인 체크
	@PostMapping(value = "/loginCheck")
	@ResponseBody
	public String loginCheck(accountVo vo, HttpSession session) {
		int result = service.loginCheck(vo, session);
		ModelAndView mv = new ModelAndView();

		if(result == 1) {
			mv.setViewName("home");
			return "/account/home"; //사용자 있으면 홈화면으로 이동
		}else {
			return "/account/login"; //사용자 없으면 로그인 하지 못하고 다시 로그인 화면
		}
		
	}
	
	//홈
	@GetMapping(value = "/home")
	public ModelAndView home(ModelAndView mv) {
		mv.setViewName("home");
		return mv;
	}
	
	//로그아웃
	@GetMapping(value = "/logout")
	public String logout(HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		session.invalidate(); //세션 전체 무효화
		return "redirect:/account/login";
	}
	
	//직원 등록
	@GetMapping(value = "/addEmployee")
	public ModelAndView addEmployee(ModelAndView mv) {
		mv.setViewName("addEmployee");
		return mv;
	}
	
	
}
