package kr.co.daitdayoung.index.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.daitdayoung.index.service.CoursesService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CoursesController {
	
	@Autowired
	private CoursesService cs;
	
	
	@RequestMapping(value = "/courses.do", method = RequestMethod.GET)
	public String coursesCe(Model model) {
		
		
		return "/courses/courses";
	} //의무교육
	
	
	
	
	@RequestMapping(value = "/courses_detail.do", method = RequestMethod.GET)
	public String coursesDetail(Model model) {
		
		return "/courses/courses_detail";
	} //강좌
	
	

}
