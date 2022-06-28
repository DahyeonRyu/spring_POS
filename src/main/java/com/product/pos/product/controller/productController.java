package com.product.pos.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.product.pos.product.service.productService;
import com.product.pos.product.vo.productVo;

@Controller
@RequestMapping(value="/product")
public class productController {

	@Autowired
	private productService service;
	
	//판매 화면
	@GetMapping(value = "/product")
	public ModelAndView product(ModelAndView mv) {
		List<productVo> proList = service.productList();
		mv.setViewName("product");
		mv.addObject("proList", proList); //jsp "proList"에 넣음
		return mv;
	}
	
	//상품 유무 조회
	@PostMapping(value="/productExist")
	@ResponseBody
	public int productExist(productVo vo) {
		int result = service.productExist(vo);
		return result;
		
	}
	
	//새로운 상품 등록
	@GetMapping(value="/insertProduct")
	public ModelAndView insertProduct(ModelAndView mv) {
		mv.setViewName("insertProduct");
		return mv;
	}
	
	//새로운 상품 등록
	@PostMapping(value = "/insertProduct")
	@ResponseBody
	public String insertProduct(productVo vo) {
		service.insertProduct(vo);
		return null;
	}
	
	//기록 관리
	@PostMapping(value = "/historyProduct")
	@ResponseBody
	public String historyProduct(productVo vo) {
		service.historyProduct(vo);
		return null;
	}
	
	//상품 수량 추가
	@GetMapping(value="/addProduct")
	public ModelAndView addProduct(ModelAndView mv) {
		mv.setViewName("addProduct");
		return mv;
	}
	
	//상품 수량 추가
	@PostMapping(value = "/addProduct")
	@ResponseBody
	public String addProduct(productVo vo) {
		service.addProduct(vo);
		return null;
	}

}
