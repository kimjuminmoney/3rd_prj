package kr.co.daitdayoung.index.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Handles requests for the application home page.
 */
@Controller
public class IndexController {
	
	
	@RequestMapping(value = "/index.do", method = RequestMethod.GET)
	public String index(Model model) {
		
		return "/index/index";
	} //메인
	
	
}
