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
	
	
	@RequestMapping(value = "/courses_ce.do", method = RequestMethod.GET)
	public String coursesCe(Model model) {
		
		return "/courses/courses_ce";
	} //의무교육
	
	
	@RequestMapping(value = "/courses_se.do", method = RequestMethod.GET)
	public String coursesSe(Model model) {
		
		return "/courses/courses_se";
	} //자기개발
	
	
	@RequestMapping(value = "/courses_ose.do", method = RequestMethod.GET)
	public String coursesOse(Model model) {
		
		return "/courses/courses_ose";
	} //산업안전교육
	
	@RequestMapping(value = "/courses_detail.do", method = RequestMethod.GET)
	public String coursesDetail(Model model) {
		
		return "/courses/courses_detail";
	} //강좌
	
	
	@RequestMapping(value = "/notice.do", method = RequestMethod.GET)
	public String notice(Model model) {
		
		return "/notice/notice";
	} //공지
	
	
	@RequestMapping(value = "/inquiry.do", method = RequestMethod.GET)
	public String inquiry(Model model) {
		
		return "/inquiry/inquiry";
	}
	
	@RequestMapping(value = "/inquiry_detail.do", method = RequestMethod.GET)
	public String inquiryDetail(Model model) {
		
		return "/inquiry/inquiry_detail";
	} //문의
	
}
