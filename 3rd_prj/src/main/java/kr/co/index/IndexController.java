package kr.co.index;

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
	}
	
	@RequestMapping(value = "/courses.do", method = RequestMethod.GET)
	public String courses(Model model) {
		
		return "/courses/courses";
	}
	
	@RequestMapping(value = "/courses_detail.do", method = RequestMethod.GET)
	public String coursesDetail(Model model) {
		
		return "/courses/courses_detail";
	}
	
	@RequestMapping(value = "/notice.do", method = RequestMethod.GET)
	public String notice(Model model) {
		
		return "/notice/notice";
	}
	
	
	@RequestMapping(value = "/inquiry.do", method = RequestMethod.GET)
	public String inquiry(Model model) {
		
		return "/inquiry/inquiry";
	}
	
	@RequestMapping(value = "/inquiry_detail.do", method = RequestMethod.GET)
	public String inquiryDetail(Model model) {
		
		return "/inquiry/inquiry_detail";
	}
	
}
