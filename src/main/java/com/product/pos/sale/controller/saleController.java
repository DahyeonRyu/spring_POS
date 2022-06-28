package com.product.pos.sale.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.product.pos.sale.service.saleService;
import com.product.pos.sale.vo.saleVo;

@Controller
@RequestMapping(value="/sale")
public class saleController {
	
	@Autowired
	private saleService service;
	
	//판매 현황
	@PostMapping(value="/insertSale")
	@ResponseBody
	public String insertSale(saleVo vo) {
		service.insertSale(vo);
		return null;
	}
	
	//수량 업데이트
	@PostMapping(value="/updateSale")
	@ResponseBody
	public String updateSale(saleVo vo) {
		service.updateSale(vo);
		return null;
	}
	
	

}
